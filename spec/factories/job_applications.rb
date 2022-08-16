FactoryBot.define do
  factory :job_application do
    isSeen { false }
    jobPostId { nil }
    userId { nil }
  end
end
