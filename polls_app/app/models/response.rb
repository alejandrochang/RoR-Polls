class Respone < ApplicationRecord

  belongs_to :answer_choices,
  primary_key: :id,
  foreign_key: :answer_choice_id,
  class_name: 'AnswerChoice'

  belongs_to :user_responses,
  primary_key: :id,
  foreign_key: :respondent_id,
  class_name: 'User'

  has_one :question,
  through: :answer_choices,
  source: :question

  def sibling_responses

  end

  def question

  end
end
