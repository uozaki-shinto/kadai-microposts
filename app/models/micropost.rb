class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :fvs
  has_many :favoriters, through: :fvs, source: :user
end
