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

Features:
1. Add a List
  - Using Postman, POST localhost:3000/lists will allow you to add a new list. You must fill in the Title, or an error will be thrown:  "is too short (minimum is 2 characters)"
2. Add a Task
  -  Using Postman, POST localhost:3000/tasks will allow you to add a new task. You must fill in the Body, List ID, and whether it has been completed or it will cause an error.
3. All lists
  - GET localhost:3000/lists will show all lists in the database.
4. All tasks
  - GET localhost:3000/tasks will show all tasks in the database.
5. One list
  - GET localhost:3000/lists/1 will first look for the a list with the ID of 1, and if it exists, will show the list with the ID of 1, and so on for all existing lists. When searching for an ID that has not been assigned yet, you will see "List not found."
6. One task
  - GET localhost:3000/tasks/1 will first look for the a task with the ID of 1, and if it exists, show the task with the ID of 1, and so on for all existing tasks. When searching for an ID that has not been assigned yet, you will see "Task not found."
7. Edit a list
  - PUT localhost:3000/lists/8 will allow you to update the title of the list with ID 8. Once sent, the page will redirect to showing that one list with ID and title.
8. Edit a task
  - PUT localhost:3000/tasks/8 will allow you to fill in the column you'd like to update - you can update just one or as many as needed. Once sent, the page will redirect to showing that one task with ID, body, list ID, and completed status.
9. Delete a list
  - DELETE localhost:3000/lists/2 will delete the list with ID of 2. Once complete, you will see the message "List destroyed."
10. Delete a task
  - DELETE localhost:3000/tasks/2 will delete the task with ID of 2. Once complete, you will see the message "Task destroyed."

# rails_todo
