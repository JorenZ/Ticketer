# Create tickets
FactoryGirl.define do

  factory :ticket do
    topic 'Management'
    body 'Factory-created ticket'
  end

  trait :management do
    topic 'Management'
    body 'Factory-created management ticket'
  end

  trait :callcenter do
    topic 'Afsprakenbureau'
    body 'Factory-created callcenter ticket'
  end

  trait :finance do
    topic 'Finance'
    body 'Factory-created finance ticket'
  end

end