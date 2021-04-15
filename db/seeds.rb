User.destroy_all
Game.destroy_all

User.create(username: "Bilbo", password: "123")
User.create(username: "Frodo", password: "123")

Game.create(difficulty: "Hard", category: "Sports", points: 10, user_id: 1)
Game.create(difficulty: "Easy", category: "History", points: 3, user_id: 1)
Game.create(difficulty: "Medium", category: "Cooking", points: 7, user_id: 1)

Game.create(difficulty: "Hard", category: "Current", points: 9, user_id: 2)
Game.create(difficulty: "Easy", category: "World", points: 10, user_id: 2)