post = Post.new(
  title: "Der Weg der Wurzel",
  content_1: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Numquam modi corporis aspernatur cum ullam accusamus eligendi sit facere temporibus sequi vitae provident eum impedit, ea voluptates dignissimos. Deserunt laborum tempore impedit non veniam, incidunt facilis quis animi eos. Voluptatum impedit rem repellat quisquam iusto, natus, beatae tempora illum eaque iure aspernatur accusamus ratione in voluptates suscipit, pariatur temporibus a nesciunt reprehenderit? Illo iusto corporis ratione aliquid, voluptas id quasi unde expedita velit in possimus aut impedit! Similique nihil autem voluptatibus, ducimus vitae, omnis veniam voluptas delectus, architecto excepturi numquam consequuntur aut veritatis ipsum neque odio error fugiat eos suscipit iure.",
  content_2: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Numquam modi corporis aspernatur cum ullam accusamus eligendi sit facere temporibus sequi vitae provident eum impedit, ea voluptates dignissimos. Deserunt laborum tempore impedit non veniam, incidunt facilis quis animi eos. Voluptatum impedit rem repellat quisquam iusto, natus, beatae tempora illum eaque iure aspernatur accusamus ratione in voluptates suscipit, pariatur temporibus a nesciunt reprehenderit? Illo iusto corporis ratione aliquid, voluptas id quasi unde expedita velit in possimus aut impedit! Similique nihil autem voluptatibus, ducimus vitae, omnis veniam voluptas delectus, architecto excepturi numquam consequuntur aut veritatis ipsum neque odio error fugiat eos suscipit iure.",
  content_3: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Numquam modi corporis aspernatur cum ullam accusamus eligendi sit facere temporibus sequi vitae provident eum impedit, ea voluptates dignissimos. Deserunt laborum tempore impedit non veniam, incidunt facilis quis animi eos. Voluptatum impedit rem repellat quisquam iusto, natus, beatae tempora illum eaque iure aspernatur accusamus ratione in voluptates suscipit, pariatur temporibus a nesciunt reprehenderit? Illo iusto corporis ratione aliquid, voluptas id quasi unde expedita velit in possimus aut impedit! Similique nihil autem voluptatibus, ducimus vitae, omnis veniam voluptas delectus, architecto excepturi numquam consequuntur aut veritatis ipsum neque odio error fugiat eos suscipit iure.",
  content_4: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Numquam modi corporis aspernatur cum ullam accusamus eligendi sit facere temporibus sequi vitae provident eum impedit, ea voluptates dignissimos. Deserunt laborum tempore impedit non veniam, incidunt facilis quis animi eos. Voluptatum impedit rem repellat quisquam iusto, natus, beatae tempora illum eaque iure aspernatur accusamus ratione in voluptates suscipit, pariatur temporibus a nesciunt reprehenderit? Illo iusto corporis ratione aliquid, voluptas id quasi unde expedita velit in possimus aut impedit! Similique nihil autem voluptatibus, ducimus vitae, omnis veniam voluptas delectus, architecto excepturi numquam consequuntur aut veritatis ipsum neque odio error fugiat eos suscipit iure."
)

post.title_image.attach(io: File.open('app/assets/images/owl.jpg'), filename: "owl.jpg")
post.post_image_1.attach(io: File.open('app/assets/images/owl.jpg'), filename: "owl.jpg")
post.post_image_2.attach(io: File.open('app/assets/images/owl.jpg'), filename: "owl.jpg")
post.post_image_3.attach(io: File.open('app/assets/images/owl.jpg'), filename: "owl.jpg")
post.save!

post = Post.new(
  title: "Warum die Natur...?",
  content_1: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Numquam modi corporis aspernatur cum ullam accusamus eligendi sit facere temporibus sequi vitae provident eum impedit, ea voluptates dignissimos. Deserunt laborum tempore impedit non veniam, incidunt facilis quis animi eos. Voluptatum impedit rem repellat quisquam iusto, natus, beatae tempora illum eaque iure aspernatur accusamus ratione in voluptates suscipit, pariatur temporibus a nesciunt reprehenderit? Illo iusto corporis ratione aliquid, voluptas id quasi unde expedita velit in possimus aut impedit! Similique nihil autem voluptatibus, ducimus vitae, omnis veniam voluptas delectus, architecto excepturi numquam consequuntur aut veritatis ipsum neque odio error fugiat eos suscipit iure.",
  content_2: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Numquam modi corporis aspernatur cum ullam accusamus eligendi sit facere temporibus sequi vitae provident eum impedit, ea voluptates dignissimos. Deserunt laborum tempore impedit non veniam, incidunt facilis quis animi eos. Voluptatum impedit rem repellat quisquam iusto, natus, beatae tempora illum eaque iure aspernatur accusamus ratione in voluptates suscipit, pariatur temporibus a nesciunt reprehenderit? Illo iusto corporis ratione aliquid, voluptas id quasi unde expedita velit in possimus aut impedit! Similique nihil autem voluptatibus, ducimus vitae, omnis veniam voluptas delectus, architecto excepturi numquam consequuntur aut veritatis ipsum neque odio error fugiat eos suscipit iure.",
  content_3: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Numquam modi corporis aspernatur cum ullam accusamus eligendi sit facere temporibus sequi vitae provident eum impedit, ea voluptates dignissimos. Deserunt laborum tempore impedit non veniam, incidunt facilis quis animi eos. Voluptatum impedit rem repellat quisquam iusto, natus, beatae tempora illum eaque iure aspernatur accusamus ratione in voluptates suscipit, pariatur temporibus a nesciunt reprehenderit? Illo iusto corporis ratione aliquid, voluptas id quasi unde expedita velit in possimus aut impedit! Similique nihil autem voluptatibus, ducimus vitae, omnis veniam voluptas delectus, architecto excepturi numquam consequuntur aut veritatis ipsum neque odio error fugiat eos suscipit iure.",
  content_4: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Numquam modi corporis aspernatur cum ullam accusamus eligendi sit facere temporibus sequi vitae provident eum impedit, ea voluptates dignissimos. Deserunt laborum tempore impedit non veniam, incidunt facilis quis animi eos. Voluptatum impedit rem repellat quisquam iusto, natus, beatae tempora illum eaque iure aspernatur accusamus ratione in voluptates suscipit, pariatur temporibus a nesciunt reprehenderit? Illo iusto corporis ratione aliquid, voluptas id quasi unde expedita velit in possimus aut impedit! Similique nihil autem voluptatibus, ducimus vitae, omnis veniam voluptas delectus, architecto excepturi numquam consequuntur aut veritatis ipsum neque odio error fugiat eos suscipit iure."
)

post.title_image.attach(io: File.open('app/assets/images/owl.jpg'), filename: "owl.jpg")
post.post_image_1.attach(io: File.open('app/assets/images/owl.jpg'), filename: "owl.jpg")
post.post_image_2.attach(io: File.open('app/assets/images/owl.jpg'), filename: "owl.jpg")
post.post_image_3.attach(io: File.open('app/assets/images/owl.jpg'), filename: "owl.jpg")
post.save!

puts "Posts created"
