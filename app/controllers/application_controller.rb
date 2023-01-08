class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/furnitures' do
    furnitures = Furniture.all.order(:space_category)
    furnitures.to_json
  end

  get '/furnitures/:id' do
    furniture = Furniture.find(params[:id])
    furniture.to_json(include: { reviews: {include: :customer} })
  end

  post '/reviews' do
    review = Review.create(
      furniture_id: params[:furniture_id],
      customer_id: params[:customer_id],
      score: params[:score],
      comment: params[:comment]
    )
    review.to_json
  end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      score: params[:score],
      comment: params[:comment]
    )
    review.to_json
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end
end
