json.extract! risk_assessement, :id, :probability_risk, :consequense_risk, :risk_level, :task_id, :safety_report_id, :created_at, :updated_at
json.url risk_assessement_url(risk_assessement, format: :json)