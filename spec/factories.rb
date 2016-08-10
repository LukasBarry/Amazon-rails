FactoryGirl.define do
  factory :product do
    sequence(:name) {|num| "#{num} Macbook"}
    price 1009.99
    description "Great Laptop"
    stock 30
    promoted false
  end

  factory :admin_user, class: User do
    name "Admin User"
    sequence(:email) {|num| "admin_user##{num}@admin.com"}
    password "password"
    password_confirmation "password"
    admin true
  end

  factory :non_admin_user, class: User do
    name "Regular User"
    sequence(:email) {|num| "regular_user##{num}@user.com"}
    password "password"
    password_confirmation "password"
    admin false
  end

end
