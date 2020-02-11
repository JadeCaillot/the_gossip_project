class Gossip < ApplicationRecord
  validates :title, presence: true, 
    length: {in:3..14}
  validates :content, presence: true
  
  has_many :join_gossip_tags
  has_many :tags, through: :join_gossip_tags
  belongs_to :user
  has_many :likes, as: :content
  has_many :comments
end
