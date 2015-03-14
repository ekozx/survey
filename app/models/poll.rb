class Poll < ActiveRecord::Base
  belongs_to :organization
  has_many :questions, through: :poll_intervals
  has_many :respondents
  has_many :poll_intervals
end
