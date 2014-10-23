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

  trait :afsprakenbureau do
    topic 'Afsprakenbureau'
    body 'Factory-created afsprakenbureau ticket'
  end

  trait :finance do
    topic 'Finance'
    body 'Factory-created management finance ticket'
  end

end