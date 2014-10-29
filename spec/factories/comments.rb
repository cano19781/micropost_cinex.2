FactoryGirl.define do
  factory :comment do
    commenter "MyString"
body "MyText"
user_id 1
user nil
article nil
  end

end
