class DeliveryMethod < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ゆうメール' },
    { id: 3, name: 'レターパック' },
    { id: 4, name: '普通郵便(定型・定形外)' },
    { id: 5, name: 'クロネコヤマト' },
    { id: 6, name: 'ゆうパック' },
    { id: 7, name: 'クリックポスト' },
    { id: 8, name: 'ゆうパケット' }
  ]

  include ActiveHash::Associations
  has_many :clothes
end
