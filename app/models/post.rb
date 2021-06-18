class Post < ApplicationRecord

    belongs_to :user

    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user

    validates :title, presence: true
    validates :category, presence: true
    validates :about, presence: true

end
