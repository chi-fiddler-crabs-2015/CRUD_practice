romario = User.create!(name: "Romario", password: 'a')
bebeto = User.create!(name: "Bebeto", password: 'a')
mauro = User.create!(name: "Mauro Silva", password: 'a')

seed_users = [romario, bebeto, mauro]

def random_user(seed_users)
  seed_users.sample
end

def random_shirt
  Shirt.all.sample
end

10.times do
  user = random_user(seed_users)
  user.shirts.create!()
end

10.times do
  user = random_user(seed_users)
  user.purchases.create!(shirt: random_shirt)
end