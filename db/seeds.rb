100.times do
  Patient.create!(
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
  )
end

require_relative 'seed_data'
Medicine.create!(medicines_seed * 100)

User.create(name: 'user', email: 'u@u.com', password: '123456')