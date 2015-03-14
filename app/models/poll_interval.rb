class PollInterval < ActiveRecord::Base
  belongs_to :poll
  has_many :categories
  has_many :questions
  has_many :respondents
end
