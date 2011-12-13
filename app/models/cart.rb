class Cart < ActiveRecord::Base
  #:dependent destroy means that the line items are dependent on cart and should be destroyed if cart does not exist
  has_many :line_items, :dependent => :destroy
end
