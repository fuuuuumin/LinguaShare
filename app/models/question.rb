class Question < ApplicationRecord

  belongs_to :user

  validates :question_title, presence; true
  validates :question_content, presence; true
  validates :language_id, presence; true

end
