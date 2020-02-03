10.times do |n|
  User.seed do |s|
    s.name  = Faker::Internet.unique.email
    s.pass  = "123"
  end
end
