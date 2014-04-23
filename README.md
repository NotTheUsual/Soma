#SOMA

Soma is an API for storing and analysing UK blood test results. The documentation is below. I'll add more to this shortly.

## Documentation

Avaiable endpoints

### legend

```ruby
get '/blood-tests/legend'
```

Has all the metadata about a blood test</p>
  <pre><code>{
  "hb":{
    "name":"Hb",
    "fullname":"Haemoglobin",
    "unit":"g/L",
    "min":11.5,
    "max":16
  },
  "mcv":{
    "name":"MCV",
    "fullname":"Mean Cell Volume",
    "unit":"fL",
    "min":80,
    "max":100
  },
  "wbc":{
    "name":"WBC",
    "fullname":"White Blood Cells",
    "unit":"x10<sup>9</sup>/L",
    "min":4,
    "max":11
  },
  "platelets":{
    "name":"Platelets",
    "fullname":"Platelets",
    "unit":"x10<sup>9</sup>/L",
    "min":140,
    "max":440
  },
  "neutrophils":{
    "name":"Neutrophils",
    "fullname":"Neutrophils",
    "unit":"x10<sup>9</sup>/L",
    "min":2.5,
    "max":7.5
  },
  "lymphocytes":{
    "name":"Lymphocytes",
    "fullname":"Lymphocytes",
    "unit":"x10<sup>9</sup>/L",
    "min":1.0,
    "max":4.8
  },
  "alt":{
    "name":"ALT",
    "fullname":"Alanine Aminotransferase",
    "unit":"µkat/L",
    "min":10,
    "max":40
  },
  "alk_phos":{
    "name":"Alk Phos",
    "fullname":"Alkaline Phosphates",
    "unit":"U/L",
    "min":44,
    "max":147
  },
  "creatinine":{
    "name":"Creatinine",
    "fullname":"Creatinine",
    "unit":"μmol/L",
    "min":50,
    "max":98
  },
  "esr":{
    "name":"ESR",
    "fullname":"Erythrocyte Sedimentation Rate",
    "unit":"mm/hr",
    "min":0,
    "max":26
  },
  "crp":{
    "name":"CRP",
    "fullname":"C Reactive Protein",
    "unit":"mg/L",
    "min":0,
    "max":5
  }
}</code></pre>
  <h2>all blood tests</h2>
  <code>get '/blood-tests/users/:user_id'</code>
  <p>Has all the blood tests for a user</p>
  <pre><code>[{
  "id":6,
  "taken_on":"2014-03-25",
  "created_at":"2014-03-28T09:36:23.109Z",
  "updated_at":"2014-03-28T09:36:23.109Z",
  "hb":12.0,
  "mcv":90.0,
  "wbc":10.0,
  "platelets":300.0,
  "neutrophils":8.0,
  "lymphocytes":4.0,
  "alt":30.0,
  "alk_phos":100.0,
  "creatinine":120.0,
  "esr":5.0,
  "crp":"6",
  "user_id":2
},
{
  "id":7,
  "taken_on":"2014-03-17",
  "created_at":"2014-03-28T09:37:44.861Z",
  "updated_at":"2014-03-28T09:37:44.861Z",
  "hb":15.0,
  "mcv":95.0,
  "wbc":4.0,
  "platelets":200.0,
  "neutrophils":9.0,
  "lymphocytes":6.0,
  "alt":30.0,
  "alk_phos":140.0,
  "creatinine":60.0,
  "esr":25.0,
  "crp":"4",
  "user_id":2
}]</code></pre>

  <h2>blood tests for a particular test</h2>
  <code>get '/blood-tests/users/:user_id/:test_name'</code>
  <p>Has all the results in a particular test for a user</p>
  <pre><code>[{
  "date":"2014-03-17",
  "result":15.0
},
{
  "date":"2014-03-25",
  "result":12.0
}]</code></pre>
  <h2>individual blood tests</h2>
  <code>get '/blood-tests/:id.json'</code>
  <p>Has the data for one blood test</p>
  <pre><code>{
  "id":6,
  "taken_on":"2014-03-25",
  "created_at":"2014-03-28T09:36:23.109Z",
  "updated_at":"2014-03-28T09:36:23.109Z",
  "hb":12.0,
  "mcv":90.0,
  "wbc":10.0,
  "platelets":300.0,
  "neutrophils":8.0,
  "lymphocytes":4.0,
  "alt":30.0,
  "alk_phos":100.0,
  "creatinine":120.0,
  "esr":5.0,
  "crp":"6",
  "user_id":2
}
</code></pre>
  <h2>Dangerous results</h2>
  <code>get '/blood-tests/:user_id/dangerous-results'</code>
  <p>All the out of range results for a user</p>
  <pre><code>[{
  "id":6,
  "taken_on":"2014-03-25",
  "neutrophils":8.0,
  "creatinine":120.0
},
{
  "id":7,
  "taken_on":"2014-03-17",
  "neutrophils":9.0,
  "lymphocytes":6.0
}]
</code></pre>
  <h2>post new blood test</h2>
  <code>post '/blood-tests/remote'</code>
  <p>Adds a new blood test from the client</p>

  <h2>Register new user</h2>
  <code>post '/users'</code>
  <p>Registers a user in the Soma database</p>
</section>
