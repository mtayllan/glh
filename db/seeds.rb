Patient.create!(
  180.times.map {{
    name: Faker::Name.name,
    cpf: Faker::IDNumber.brazilian_citizen_number(formatted: true),
    rg: Faker::IDNumber.brazilian_id(formatted: true),
    cep: Faker::Address.zip_code,
    city: Faker::Address.city,
    street: Faker::Address.street_name,
    district: Faker::Address.city,
    state: Faker::Address.state,
    number: Faker::Address.building_number,
    nacionality: Faker::Nation.nationality,
    civil_status: ['Casado(a)', 'Solteiro(a)', 'Viuvo(a)'].sample
  }}
)

patients = Patient.all

def sample_date
  Time.zone.now - [1,2,3,4,5,6,7,8,9].sample.months
end

require_relative 'seed_data'
Medicine.create!(medicines_seed * 30)

Disease.create!(89.times.map { { name: Faker::Lorem.word, description: Faker::Lorem.sentence, cid: Faker::Number.number(digits: 10)  } })
diseases = Disease.all
medicines = Medicine.all
Medication.create!(120.times.map { { disease_id: diseases.sample.id, medicine_id: medicines.sample.id, situation: Medication.situations.keys.sample } })

medications = Medication.all
Proceeding.create!(211.times.map { 
  { 
    medication_id: medications.sample.id,
    patient_id: patients.sample.id,
    number: Faker::Number.number(digits: 10),
    created_at: sample_date }
  }
)

User.create!(name: 'Admin', email: 'test@test.com', password: 'qwe123')