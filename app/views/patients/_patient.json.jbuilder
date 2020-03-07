json.extract! patient, :id, :name, :cpf, :rg, :cep, :city, :street, :district, :state, :number, :complement, :nacionality, :civil_status, :created_at, :updated_at
json.url patient_url(patient, format: :json)
