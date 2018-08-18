class MealsController < ApplicationController

def index
	#path trucks/truck_id/meals.ALL, #shows all meals for a truck
	@truck = Truck.find(params[:truck_id])
	@meals = @truck.meals
	render json: @meals
	end

      # add new food item to truck  trucks/truck_id/meals
	def create
		@truck = Truck.find(params[:truck_id])
		@meal = @truck.meals.create(meals_params)
		render json: @truck.meals
	end

	#show one meal by clicking on it trucks/truck_id/meals/meal_id

	def show
		@trucks = Truck.find(params[:truck_id])
		@meal = @trucks.meals.find(params[:id])

		render json: @diets_meals
	end

	def destroy
		@meal = Truck.find(params[:truck_id]).meals.find(params[:id])
		@meal.destroy
	end

	def update
		@meal = Truck.find(params[:truck_id]).meals.find(params[:id]).update(meals_params)
		render json: @meal
	end

	
		



   # find all meals under $20 for the selected truck  PATH:/truck_id/meals/cheap
	def cheap
		@truck = Truck.find(params[:truck_id])
		@meals = @truck.meals.where("price <?", 20)
		render json: @meals
	end

	private
	def meals_params
		params.permit(:meal_name, :price)
	end


end




