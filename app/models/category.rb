class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'アウター　(コート)' },
    { id: 3, name: 'アウター　(ブルゾン・ジャンパー)' },
    { id: 4, name: 'アウター　(ダウン)' },
    { id: 5, name: 'ワンピース・オールインワン' },
    { id: 6, name: 'トップス　(スウェット・パーカー)' },
    { id: 7, name: 'トップス　(ニット・セーター)' },
    { id: 8, name: 'トップス　(カーディガン)' },
    { id: 9, name: 'トップス　(Tシャツ・カットソー)' },
    { id: 10, name: 'ボトムス　(ジーンズ・カラージーンズ)' },
    { id: 11, name: 'ボトムス　(レギンスパンツ)' },
    { id: 12, name: 'ボトムス　(スカートパンツ・ワイドパンツ)' },
    { id: 13, name: 'ボトムス　(トラウザーパンツ)' },
    { id: 14, name: 'ボトムス　(ショート・ハーフパンツ)' },
    { id: 15, name: 'スカート　(ロングスカート)' },
    { id: 16, name: 'スカート　(ミディスカート)' },
    { id: 17, name: 'スカート　(ミニスカート)' },
    { id: 18, name: 'インナー　(トップス)' },
    { id: 19, name: 'インナー　(下着メンズ)' },
    { id: 20, name: 'インナー　(下着ウィメンズ)' },
    { id: 21, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :clothes
end
