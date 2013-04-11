FactoryGirl.define do
  factory :bounce_house do |f|
    f.name "Sports"
    f.description "Sports based bounce house"
    f.five_hour_rental "125"
    f.all_day_rental "140"
  end
end
