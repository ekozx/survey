class Answer < ActiveRecord::Base
  belongs_to :question
  has_any_belongs_to_many :respondents
end
