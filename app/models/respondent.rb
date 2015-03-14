  class Respondent < ActiveRecord::Base
  belongs_to :organization
  belongs_to :poll
end
