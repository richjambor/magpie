class ListsController < ApplicationController
	def index
		@lists = Wishlist.all
		render "empty" and return if @lists.count == 0
	end
	def show
		@lists = Wishlist.all
		@list = Wishlist.find params[:id]
	end
	def new
		@list = Wishlist.new
	end
	def create
		@list = Wishlist.create wishlist_params
		redirect_to list_path(@list)
	end
	
	private
	
	def wishlist_params
		params.require(:wishlist).permit :name
	end
end
