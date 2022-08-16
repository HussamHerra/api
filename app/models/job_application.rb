class JobApplication < ApplicationRecord
  attribute :isSeen, :boolean, default: false
  belongs_to :User, optional: true
  belongs_to :JobPost, optional: true
end
