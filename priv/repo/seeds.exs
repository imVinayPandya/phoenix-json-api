IO.puts("Adding a couple of users...")

MyApp.Account.create_user(%{email: "user1@email.com", password: "qwerty"})
MyApp.Account.create_user(%{email: "user2@email.com", password: "asdfgh"})