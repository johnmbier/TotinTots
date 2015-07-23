class List < ActiveRecord::Base
	 has_and_belongs_to_many :items
	 validates :item_name, :presence => true, :if => :active_or_item_name?
	 validates :age_group, :presence => true, :if => :active_or_age_group?
	 validates :quantity,  :presence => true, :if => :active_or_quantity?

  def active?
    status == 'active'
  end

  def active_or_item_name?
    status.include?('item_name') || active?
  end

  def active_or_age_group?
    status.include?('age_group') || active?
  end

  def active_or_quantity?
    status.include?('quantity') || active?
  end
end