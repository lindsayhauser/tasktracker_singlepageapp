# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TaskTracker.Repo.insert!(%TaskTracker.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias TaskTracker.Repo
alias TaskTracker.Users.User
alias TaskTracker.Tasks.Task

pwhash = Argon2.hash_pwd_salt("pass1")


Repo.insert!(%User{email: "alice@example.com", admin: true, password_hash: pwhash, pw_tries: 0, pw_last_try: (DateTime.utc_now)})
Repo.insert!(%Task{title: "A Task", desc: "description stuff", user_id: 1, time_hours: 1, time_minutes: 15, completed: true})
