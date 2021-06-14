class Like < ApplicationRecord
  belongs_to :post_id
  belongs_to :user_id

  validates_uniqueness_of :tweet_id, scope: :user_id
end
