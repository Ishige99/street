class Size < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'S　(ウィメンズ)' },
    { id: 3, name: 'M　(ウィメンズ)' },
    { id: 4, name: 'L　(ウィメンズ)' },
    { id: 5, name: 'XL　(ウィメンズ)' },
    { id: 6, name: 'XXL　(ウィメンズ)' },
    { id: 7, name: 'XXXL以上　(ウィメンズ)' },
    { id: 8, name: 'S　(メンズ)' },
    { id: 9, name: 'M　(メンズ)' },
    { id: 10, name: 'L　(メンズ)' },
    { id: 11, name: 'XL　(メンズ)' },
    { id: 12, name: 'XXL　(メンズ)' },
    { id: 13, name: 'XXXL以上　(メンズ)' },
    { id: 14, name: '110　(キッズ)' },
    { id: 15, name: '120　(キッズ)' },
    { id: 16, name: '130　(キッズ)' },
    { id: 17, name: '140　(キッズ)' },
    { id: 18, name: '150　(キッズ)' },
    { id: 19, name: '160　(キッズ)' },
    { id: 20, name: 'フリーサイズ' }
  ]

  include ActiveHash::Associations
  has_many :clothes
end
