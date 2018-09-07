class AnswerChoice < ApplicationRecord
  
  has_many :responses,
  primary_key: :id,
  foreign_key: :answer_choice_id,
  class_name: 'Response'

  belongs_to :questions_id,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: 'Question'
end
