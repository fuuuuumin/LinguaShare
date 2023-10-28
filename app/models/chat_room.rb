class ChatRoom < ApplicationRecord

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :language

  validates :room_name, presence: true
  validates :language_id, numericality: { other_than: 1 , message: "チャットルームで使用できる言語を選択してください" }

end
