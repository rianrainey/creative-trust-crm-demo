class Customer < ActiveRecord::Base
  attr_accessible :name, :represented_date

  validates_presence_of :name

  has_many :products
end
