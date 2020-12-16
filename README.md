
# Planning Out this Web Application:

In this app, the `User` is going to be a healhcare worker who `has_many` patients. A `User` will have:
* `username` 
* `password_digest` (for a secure password)

A `Patient` is going to `belong_to` a `User and have:
* `name`
* `birthdate`
* `weight`
* `allergies`
* `user_id`
## Things to do to accomplish this:
1) Build out a migration file for the `users` table for the `User` model with the two attributes of `username` and `password_digest`.
2) Migrate the table for the `users`.
3) Set up the `User` model to inherit from `ActiveRecord::Base`, and use the macro `has_secure_password`.
