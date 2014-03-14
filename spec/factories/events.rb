# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    state 'initial'
    name { Faker::Movie.title }
    description { Faker::Lorem.sentence }
    start_at { (rand(10) + 1).days.from_now }
    invite_from { start_at - 8.hours }
    invite_to { start_at - 2.hours }
    attendees_min_count { rand(5) }
    attendees_max_count { attendees_min_count + rand(5) }
    minutes_for_answer 60
    public_attendees_list false
    trait :event_in_past do
      start_at {(rand(10) + 1).days.from_now - 100.days}
      invite_from {start_at - 8.hours}
      invite_to {start_at - 2.hours}
    end

trait :with_att do
  after(:create){|event|
  event_participants.create << create_list(:friend, 2)
  event_participants.create << create_list(:event, 2)


  }
end
  end


end
