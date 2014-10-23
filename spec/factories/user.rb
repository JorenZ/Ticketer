# Create users
FactoryGirl.define do

  factory :user do
    name "FactoryName#{ Date.current }"
    role 'Programmer'
    email 'factory@example.com'
    password 'passwordone'
    password_confirmation 'passwordone'
    password_digest '$2a$10$ibV9itmyBdNik93gRIlIRO9HVeM0fdwTNKylv4fOwrpVYKD6RN7Z2' # actual digest for 'passwordone'
  end

  trait :admin do
    role 'Administrator'
  end

  trait :programmer do
    role 'Programmer'
  end
  
  trait :user do
    role 'User'
  end

end