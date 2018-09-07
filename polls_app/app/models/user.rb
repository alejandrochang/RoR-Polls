class User < ApplicationRec
  
  has_many :author_polls,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: 'Poll'

  has_many :responses,
  primary_key: :id,
  foreign_key: :respondent_id,
  class_name: 'Responses'
end
