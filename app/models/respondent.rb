  class Respondent < ActiveRecord::Base
  belongs_to :organization
  belongs_to :poll
  belongs_to :poll_iteration
  has_and_belongs_to_many :answers
end
