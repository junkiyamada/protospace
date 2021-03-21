class Prototype < ApplicationRecord
belongs_to :user
has_one_attached :prototype
validates :title, presence: true
validates :catch_copy, presence: true
validates :concept, presence: true
validates :prototype, presence: true

has_many :comments, dependent: :destroy
end
