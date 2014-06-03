class Penguin < ActiveRecord::Base
	validates :name, :description, :sex, :breed, :presence => true
end
