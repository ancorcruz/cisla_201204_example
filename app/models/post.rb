class Post < ActiveRecord::Base
  attr_accessible :body, :user_id

  #validates_presence_of :body, :user
  validates :body, :user, :presence => true

  has_many :comments
  belongs_to :user

  delegate :name, :to => :user, :prefix => true, :allow_nil => true
end
