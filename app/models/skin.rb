class Skin < ActiveRecord::Base
	#List of champions
	Champions = ['Annie', 'Caitlyn']

	# Relationships
	has_many :guides

	# Scopes
	scope :alphabetical, -> { order(:name)}
	scope :for_champ, -> (champion) { where(champion: champion)}

	#Validations
	# validates :name, presence: true, uniqueness: { case_sensitive: false }
 #  	validates_numericality_of :units_per_item, only_integer: true, greater_than: 0
 #  	validates_numericality_of :weight, greater_than: 0
 #  	validates_inclusion_of :category, in: CATEGORIES.map{|key, value| value}, message: "is not an option"

 	#Callbacks
 	#before_destroy :is_destroyable?
 	# after_destroy :remove_unshipped_and_unpaid_order_items
 	# after_rollback :convert_to_inactive


 	# private
	 #  def is_destroyable?
	 #    @destroyable = self.order_items.shipped.empty?
	 #  end
	  
	 #  def convert_to_inactive
	 #    if !@destroyable.nil? && @destroyable == false
	 #      remove_unshipped_and_unpaid_order_items
	 #      make_inactive
	 #    end
	 #    @destroyable = nil
	 #  end

	 #  def remove_unshipped_and_unpaid_order_items
	 #    self.order_items.unshipped.each{|oi| oi.destroy if oi.order.payment_receipt.nil?}
	 #  end

	 #  def make_inactive
	 #    self.update_attribute(:active, false)
	 #  end


end
