class Poll < ActiveRecord::Base
  belongs_to :organization
  has_many :questions
end
