class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
  validates :name, presence: true
  validates :address, presence: true
end
