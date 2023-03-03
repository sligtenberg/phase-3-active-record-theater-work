Audition.destroy_all
Role.destroy_all

role1 = Role.create(character_name: "mary poppins")
role2 = Role.create(character_name: "nobody")
role3 = Role.create(character_name: "luke skywalker")
role4 = Role.create(character_name: "jabba the hut")

audition1 = Audition.create(actor: "steve", location: "raleigh", phone: 9459277444, hired: false, role_id: role1.id)
audition2 = Audition.create(actor: "john", location: "franklinton", phone: 9459385444, hired: false, role_id: role2.id)
audition3 = Audition.create(actor: "maddie", location: "providence", phone: 2253277444, hired: false, role_id: role1.id)
audition4 = Audition.create(actor: "mom", location: "morgentown", phone: 9459248244, hired: false, role_id: role2.id)
audition5 = Audition.create(actor: "dad", location: "holland", phone: 9452327444, hired: false, role_id: role2.id)

puts "🌱 🌱 🌱  SEEDED 🌱 🌱 🌱 🌱 "