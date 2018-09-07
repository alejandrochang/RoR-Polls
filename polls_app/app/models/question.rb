class Question < ApplicationRecord

  belongs_to :poll,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: 'Poll'

    has_many :answers,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: 'AnswerChoice'

    def not_duplicate_response
      
    end
end
