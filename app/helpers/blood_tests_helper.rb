module BloodTestsHelper
  def headers
    ["Taken on",
      "Hb",
      "MCV",
      "WBC",
      "Platelets",
      "Neutrophils",
      "Lymphocytes",
      "ALT",
      "Alk Phos",
      "Creatinine",
      "ESR",
      "CRP"
    ]
  end

  def methods
    ["hb",
      "mcv",
      "wbc",
      "platelets",
      "neutrophils",
      "lymphocytes",
      "alt",
      "alk_phos",
      "creatinine",
      "esr",
      "crp"
    ]
  end

  def class_for(test, method)
    return "class=empty-value" if has_empty_value?(test, method)
    if test.send("has_healthy_#{method}?".to_sym)
      "class=no-danger"
    else
      "class=danger"
    end
  end

  def value_for(test, method)
    test.send("#{method}".to_sym)
  end

  def has_empty_value?(test,method)
    value_for(test, method).nil? || value_for(test, method) == ''
  end
end