FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "yoloman#{n}@gmail.com"
    end
    password "omglolhahaha"
    password_confirmation "omglolhahaha"
  end
end

FactoryGirl.define do
  factory :course do
  	title "New Sample Course"
  	description "The only course you need to make all the moneys"
  	cost 3.5

  end
end

