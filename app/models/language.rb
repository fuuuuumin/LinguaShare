class Language < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '英語' },
    { id: 3, name: '韓国語' },
    { id: 4, name: '中国語' }
  ]

  include ActiveHash::Associations
  has_many :questions

end