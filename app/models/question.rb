class Question < ApplicationRecord

  belongs_to :user
  has_many :answers
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :language

  validates :question_title, presence: true
  validates :question_content, presence: true
  validates :language_id, numericality: { other_than: 1 , message: "どの言語についての質問かを選択してください" }

end
