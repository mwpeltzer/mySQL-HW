
# mySQL-HW

## Description on how to use the app

- Run 'node bamazonCustomer.js' to start the application

- Enter a number between 1 and 10 to indicate the ID of the item

- You will then see a description of the product (name, price, department, quantity)

- Enter the number of items you would like to purchase

- If the amount of items is under the available quanity, you will be given a final price that you owe

- If there are no more items, you will be told that there are none remaining

## Requirements

- Create a database using MySQL that stores the users grocery order -

- In order to take in the order, create a CLI application using Node with prompts asking for user input

- The users input will then be taken into the database and the database will send a prompt with regars to 
  whether the item is in stock or not


## Technologies Used

- Javascript

- Node

- MySQL

## Code Explaination

- The first bit of code requres the mysql and inquirer node packages

- The next bit initializes the connection to the mysql database

- My next step was to creat a database and table in mysql with the required columns

- I then created 3 functions to allow the user to input and ID number, and quantity desire while receiving
  a response regarding the item selected, the price and quantity of the item available and how much is owed

