class ApplicationController < Sinatra::Base

  set :default_content_type, 'application/json'
 
 
  get '/bakeries' do
  
    bakeries = Bakery.all
  bakeries.to_json
  end


get '/bakeries/:id' do
  bakeries = Bakery.find(params[:id])

  bakeries.to_json(only: [:id, :name, ], include: {
    baked_goods: { only: [:name, :price]}, 
    } 
  ) 
end
# get '/baked_goods/price_order' do
  
#   bakegood = BakedGood.price_order 

#  bakegood.to_json(only: [:name, :price ])
# end
get '/baked_goods/price' do
  # see the BakedGood class for the  method definition of `.by_price`
  baked_goods = BakedGood.price
  baked_goods.to_json(only: [:name, :price ])
end




end
