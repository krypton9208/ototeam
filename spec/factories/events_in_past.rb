FactoryGirl.define do
  factory :event_in_past do
    state 'initial'
    name { Faker::Movie.title }
    description { Faker::Lorem.sentence }
    start_at { (rand(10) + 1).days.from_now - 100.days  }
    invite_from { start_at - 8.hours  - 100.days }
    invite_to { start_at - 2.hours  - 100.days }
    attendees_min_count { rand(5) }
    attendees_max_count { attendees_min_count + rand(5) }
    minutes_for_answer 60
    public_attendees_list false
  end


end