Shelter.destroy_all
Adopter.destroy_all
Pet.destroy_all

puts "Seeding Shelters"
shelter1 = Shelter.create name: "Humane Society", address: "123 Main Street. Somewhere, USA"
shelter2 = Shelter.create name: "Adopt A Pet", address: "124 Main Street. Somewhere, USA"
shelter3 = Shelter.create name: "Gurrs and Purr", address: "125 Main Street. Somewhere, USA"

puts "Seeding Adopters"
bill = Adopter.create first_name: "Bill", last_name: "Gates"
julie = Adopter.create first_name: "Julie", last_name: "Walker"
luke = Adopter.create first_name: "Luke", last_name: "Thompson"

puts "Seeding Pets"
joey = Pet.create name: "Joey", age: 6, species: "Dog", adopted?: true, shelter_id: shelter1.id, adopter_id: bill.id
jenny = Pet.create name: "Jenny", age: 4, species: "Dog", adopted?: true, shelter_id: shelter2.id, adopter_id: bill.id
banana = Pet.create name: "Banana", age: 9, species: "Cat", adopted?: true, shelter_id: shelter3.id, adopter_id: bill.id

puts " 🌱 Done Seeding! 🌱 "