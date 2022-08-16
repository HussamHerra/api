FactoryBot.define do
  factory :rail do
    generate { "MyString" }
    migration { "MyString" }
    CreateJobApplication { "MyString" }
    users_id { 1 }
    job_posts_id { 1 }
    isSeen { false }
  end
end
