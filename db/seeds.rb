dr_bob = User.create(username: "DrBobRobertsRobertson", password: "drB0884B08")
dr_phil = User.create(username: "DrPhilTheRealDoc", password: "m4st3r4D0c")


dr_bob.patients.create(name: "Bob Ross", birthdate: "1942-10-29", weight: "68.0", allergies: "paint, penicillin")
dr_bob.patients.create(name: "Peter Sellers", birthdate: "1925-7-24", weight: "72.57", allergies: "diamonds")
dr_phil.patients.create(name: "Michael Jackson", birthdate: "1958-8-29", weight: "59.97", allergies: "fentanyl, egg-yolks")
dr_phil.patients.create(name: "Phil Heath", birthdate: "1979-12-18", weight: "109.3", allergies: "lactose")

