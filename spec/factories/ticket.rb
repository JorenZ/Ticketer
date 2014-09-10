# Create tickets
FactoryGirl.define do

  factory :ticket do
    topic 'Management'
    body 'Factory-created management ticket'
  end

  trait :management do
    topic 'Management'
  end

  trait :afsprakenbureau do
    topic 'Afsprakenbureau'
  end

  trait :finance do
    topic 'Finance'
  end

end