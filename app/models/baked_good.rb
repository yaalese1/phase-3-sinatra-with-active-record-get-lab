class BakedGood < ActiveRecord::Base
  # add association macro here
  belongs_to :bakery

  # def self.price_order  
  #   BakedGood.all.order(price: :desc)
    
  # end

  def self.price
    BakedGood.all.order(price: :desc)
  end
end
