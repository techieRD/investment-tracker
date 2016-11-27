class StocksController < ApplicationController
  def search
  	# when we go to search stock page, there will be stock parameter
  	if params[:stock]
  		@stock = Stock.find_by_ticker(params[:stock])
  		# this symbol ||= is saying, if @stock is nil, false, undefined, assign from new_from_lookup
  		@stock ||= Stock.new_from_lookup(params[:stock])
  	end

  	# and so, if there is something inside @stock...
  	if @stock
  		# a way to just check if the api call works is using json
  		# render json: @stock
  		render partial: 'lookup'
  	else
  		render status: :not_found, nothing: true
  	end
  end
end
