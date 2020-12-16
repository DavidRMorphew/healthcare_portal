
# Planning Out this Web Application (Healthcare Portal):

## I. Setting Up First Models 
In this app, instances of the `User` class are going to be healhcare workers, and each user `has_many` patients. A user will have:
* `username` 
* `password_digest` (for a secure password)

Each instances of the `Patient` class `belongs_to` a user and has:
* `name`
* `birthdate`
* `weight`
* `allergies`
* `user_id`
## Things to do to accomplish this:
1) Build out a migration file for the `users table` for the `User` model with the two attributes of `username` and `password_digest`.
2) Migrate the `users table` creation file and check the schema.
3) Set up the `User` model to inherit from `ActiveRecord::Base`, and use the macro `has_secure_password` (which gives an `#authenticate` method for validation and password recovery option; it also gives a password assignment method that is encrypted and salted).
4) Test the newly created model with tux.
5) Build out a migration file for the `patients table` for the `Patient` model with the attributes of `name`, `birthdate`, `weight`, `allergies`, and `user_id`.
6) Migrate the `patients table`.
7) Set up the `Patient` model.
8) Set up the `User` model so that each user `has_many :patients` and the `Patient` model so that each patient `belongs_to :user`.
9) Create seed entries and test with tux.
* [Note to self: to get the age form the date, one can divide the difference between the current time `Time.now` from `patient.birthdate` and divide by 31557600, which is the number of seconds in a year and then convert it into an ingeter (`to_i`)]
