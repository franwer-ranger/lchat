puts "Creando usuarios..."
User.create email: "admin@lchat.io", username: "franbg98", password: "123123", rol: :admin

users_length = 50

for index in 1..users_length do
  User.where(rol: :client, email:"client#{index}@lchat.io", username: "cliente#{index}").first_or_create(password: "123123")
end

puts "Usuarios creados."
puts "Creando salas..."

chatrooms_names = ["General", "lchat", "ClaseASIR", "Verano22", "Musiquita", "Furbo" ]

chatrooms_names.each do |name|
  Chatroom.create name: name
end

puts "Salas creadas."
puts "Creando conexiones entre usuarios y salas..."

Chatroom.all.each do |chatroom|
  User.all.sample(rand(5..10)).each do |user|
    ChatroomUser.create user: user, chatroom: chatroom
  end
end

puts "Todo listo!"


