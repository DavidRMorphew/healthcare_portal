
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
- 4)a seed the `users table.`
- 4)b check the database and model using tux.