# Food Directory API practice app

* A crappy app to practice rails, please don't look at this if you want to see serious coding. This is just for practice! 

* Food truck directory API (full crud with currently two working tables). 

* Currently ,user can make a delete / update / read / create request to food truck database containing a table that has food truck addresses, and the name of the truck. The second table in the database contains a list of the meal names and prices, each truck offers. Each meal in the table belongs to a food truck. A food truck has many meals. 

* User can add a new food truck and can choose to add a meal item with the new entry. Data will be saved in both truck and meal tables, if the user chooses to include a meal item.
* User can delete a food truck, which will also delete all meals associated with the food truck in both tables.
* User can edit food truck entry
* User can see all food truck listings in Brooklyn & Bushwick. 
* User can see a list of all the meals a food truck has when clicking on a food truck.


* User can add new meal items to food trucks
* User can delete / edit  meal items
* User can see a listing of all "cheap" food items under $20 for each food truck. (I added this feature because I am cheap and like to see cheap listings)

Todo:

Trying to create 3 tables. The logic is already there --- I want to add a table where each meal items has many "diets" (gluten-free, vegan, etc..). I want to add multiple diets to one meal. 

Maybe I'll add some views so you can see it in action as a demo. I also need to clean up the code, as its a work-in-progress and not ready to be viewed. 


Logic
Most of the logic for this app is located in the controllers & models folders. Please check out the trucks_controller, meals_controller, and models/meal.rb and models/trucks.rb. Also check out routes.rb in /config. 