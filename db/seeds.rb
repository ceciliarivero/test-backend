john = User.create({
  username: "johndoe",
  password: "123456",
  email: "john@doe.com",
  phone_number: "323 561 2259"
})

jane = User.create({
  username: "janedoe",
  password: "123456",
  email: "jane@doe.com",
  phone_number: "212 232 9966"
})

Task.create({
  user_id: john.id,
  description: "Go to the gym",
  category: "personal",
  date: "30/12/2015"
})

Task.create({
  user_id: john.id,
  description: "Write essay",
  category: "school",
  date: "20/12/2015"
})

Task.create({
  user_id: jane.id,
  description: "Finish report",
  category: "work",
  date: "24/12/2015"
})

Task.create({
  user_id: jane.id,
  description: "Walk my dog",
  category: "personal",
  date: "19/12/2015"
})
