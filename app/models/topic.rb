class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
  
  scope :visible_to, -> (user) { user ? all : Topic.publicly_viewable }
  scope :publicly_viewable, -> { Topic.where(public: true) }
  scope :privately_viewable, -> { Topic.where(public: false) }
end
