# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event_participant do
    state "sent"
    event_id {create(:event).id}
    friend_id {create(:friend).id}
  end
end
