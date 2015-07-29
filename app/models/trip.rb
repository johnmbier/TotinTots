class Trip < ActiveRecord::Base
	belongs_to :list
	has_many :kids
	accepts_nested_attributes_for :kids
end
