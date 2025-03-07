FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true) }
    password_confirmation { password }
    is_admin { false }
  end
end
