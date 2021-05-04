# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  {email: 'test@gmail.com', password: '123456'},
  {email: 'example@gmail.com', password: '123456'}
])

Gender.create!([{ name: 'Masculino' }, {name: 'Feminino'}])

BedType.create!([{ type_name: 'tipo1' }, { type_name: 'tipo2' }])

Wing.create!([{name: 'Ala Norte'}, { name: 'Ala Sul' } ])

Patient.create!([
  {name: 'Artur', rg: '123456789', age: 82, cause: 'COVID-19', description: 'Está em tratamento de COVID-19', gender_id: 1},
  {name: 'Vinicius', rg: '987654321', age: 66, cause: 'COVID-19', description: 'Está em tratamento de COVID-19', gender_id: 1}
])

Bed.create!([
  {busy: true, patient_id: 1, bed_type_id: 1, wing_id: 1},
  {busy: false, patient_id: nil, bed_type_id: 1, wing_id: 1},
  {busy: true, patient_id: 2, bed_type_id: 1, wing_id: 1},
])