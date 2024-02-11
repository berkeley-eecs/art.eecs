FactoryBot.define do
  factory :art do
    title { "MyString" }
    description { nil }
    artist_name { "MyText" }
    last_editor { nil }
    art_created_date { "2024-02-11" }
    created_location { "MyString" }
    url { "MyString" }
    image { nil }
    classification { "MyString" }
    is_published { false }
    location { nil }
    artist { nil }
  end
end
