json.extract! tipo_doc, :id, :nombre, :created_at, :updated_at
json.url tipo_doc_url(tipo_doc, format: :json)