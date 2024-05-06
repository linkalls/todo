class Task < ApplicationRecord
  validates :content, presence: true, length: { maximum: 140 }
  validates :title, presence: true, length: { maximum: 20 }
end
