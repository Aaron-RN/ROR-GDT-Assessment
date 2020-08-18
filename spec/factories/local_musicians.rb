# frozen_string_literal: true

FactoryBot.define do
  factory :local_musician do
    name { 'MyString' }
    age { 1 }
    active { false }
  end
end
