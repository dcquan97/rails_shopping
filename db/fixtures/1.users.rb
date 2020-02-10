10.times do |n|
  User.seed do |s|
    s.username  = Faker::Internet.unique.email
    s.pass  = "123"
  end
end
