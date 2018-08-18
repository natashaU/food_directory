class TrucksController < ApplicationController
	# list of all trucks
	def index  
	@trucks = Truck.all
	render json: @trucks
	end

 # add new truck with one meal in form as an option, can also add truck without a meal
	def create
		@truck = Truck.create(truck_params)
		if params[:meal_name]
			@meal = Meal.create(meal_name: params[:meal_name], price: params[:price], truck_id: @truck.id)
		end
	end

	# see all meals in selected truck /:id
	def show
		@truck = Truck.find(params[:id])
		@meals = @truck.meals

		#below code works as well:
		#@meals = Meal.where("truck_id =? ", params[:id])
		render json: @meals

		
	end


 # destroy truck and associated meals in the other tables (associated meals dependent in model) 
	def destroy
		@truck = Truck.find(params[:id])
		@truck.destroy

	end
 
# edit truck 
	def update
		@truck = Truck.find(params[:id])
		@truck.update(truck_params)
		render json: @truck
	end

          #find all trucks in brooklyn in alphabetical order: trucks/brooklyn
	def brooklyn
		@trucks = Truck.where("address =?", "bushwick").order(:name)
		render json: @trucks
	end


	private
	def truck_params
		params.permit(:name, :address)
	end

	private
	def meals_params
		params.permit(:meal_name, :price)
	end


end

