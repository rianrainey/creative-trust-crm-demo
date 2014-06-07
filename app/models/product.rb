class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price

  validates_presence_of :name
  validates_presence_of :description

  belongs_to :customer
end
