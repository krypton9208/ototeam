# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_event, :class => 'UserEvents' do
    state "MyString"
  end
end
