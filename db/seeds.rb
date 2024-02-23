# db/seeds.rb

# ユーザーデータを作成
user = User.create!(
  email: 'motoi.kasuya@roundshape.jp',
  password: 'password',
  password_confirmation: 'password',
  name: 'motoi',
  profile: 'これはテストプロフィールです。',
  occupation: 'デベロッパー',
  position: 'マネージャー'
)

# さらに複数のユーザーデータを挿入する場合は、同様にcreate!メソッドを使用します。
# 例:
# User.create!(email: '...', password: '...', ...)

# prototype = Prototype.create!(
#   title: "テストプロトタイプ",
#   catch_copy: "これはキャッチコピーです。",
#   concept: "これはコンセプトです。",
#   user_id: user.id # userカラムにユーザーIDを指定
# )
#prototype.image.attach(io: File.open('/users/motoi/Desktop/IMG_3966low.JPG'), filename: 'IMG_3966low.JPG')


prototype = Prototype.new(
 title: "テストプロトタイプ",
 catch_copy: "これはキャッチコピーです。",
  concept: "これはコンセプトです。",
  user_id: user.id
)

prototype.image.attach(io: File.open('/users/motoi/Desktop/IMG_3966low.JPG'), filename: 'IMG_3966low.JPG')

if prototype.image.attached?
  puts "Image is attached."
else
  puts "Image is not attached."
end

if prototype.save
  puts "Prototype saved successfully."
else
  puts prototype.errors.full_messages
end