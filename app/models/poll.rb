class Poll < ActiveRecord::Base
  belongs_to :organization
  has_many :questions
  has_many :respondents
  has_many :categories
  has_many :active_intervals
end
