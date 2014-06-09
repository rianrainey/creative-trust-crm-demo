class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price

  validates_presence_of :name
  validates_presence_of :description

  belongs_to :customer

  scope :this_week, -> {
    where("created_at > ?", 1.week.ago)
  }
end
