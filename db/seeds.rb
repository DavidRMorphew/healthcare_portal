User.destroy_all
Patient.destroy_all

dr_bob = User.create(username: "DrBobRobertsRobertson", password: "drB0884B08")
dr_phil = User.create(username: "DrPhilTheRealDoc", password: "m4st3r4D0c")


dr_bob.patients.create(name: "Bob Ross", birthdate: "1942-10-29", weight: "68.0", allergies: "paint, penicillin", medications: "medicinal marijuana")
dr_bob.patients.create(name: "Peter Sellers", birthdate: "1925-7-24", weight: "72.57", allergies: "diamonds", medications: "ambien")
dr_phil.patients.create(name: "Michael Jackson", birthdate: "1958-8-29", weight: "59.97", allergies: "egg-yolks", medications: "fentanyl")
dr_phil.patients.create(name: "Phil Heath", birthdate: "1979-12-18", weight: "109.3", allergies: "lactose", medications: "estrogen-blockers")
dr_bob.patients.create(name: "Bill Shakespeare", birthdate: "1564-04-01", weight: "60.0", allergies: "bad dialogue", medications: "leeches")
