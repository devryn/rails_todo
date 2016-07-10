# README
What has been added to the ToDo app:
1. List and Task models
    - The List corresponds with the Task (has_many tasks) and the Task corresponds with the List (belongs_to List)
    - Validations for List's title column (between 2-80 characters)
    - Validation for Task's body (between 5-1000 characters), id (presence: true), and completed (must be true or false, defaults to false)

2. ListsController defines index, show, create, update, and destroy methods specific to the List model.

3. TasksController defines index, show, create, update, and destroy methods specific to the Task model.

4. seeds.rb generates 10 lists using Faker and 2 tasks per each list.

4. Two migration files that define the parameters of the Task and List tables.


# rails_todo
