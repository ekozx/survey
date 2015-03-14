class Organization < ActiveRecord::Base
  has_many :users
  has_many :polls
  has_many :respondents
  has_many :poll_inteverals, through: :polls
end
