# README

## Pizza Product Costing Database

## Proposal
This program will allow a local pizza business to gain a better understanding of their margins and product costs. This should optimize their ingredients ordering process.

## MVP
*	Store and return (CRUD) pizza recipes
*	Calculate COGS (cost of good sold)
*	Compare COGS across multiple stores
* Example Dashboard View:
<img src="./public/Screen Shot 2019-09-24 at 5.14.16 PM.png" alt="dashboard view" />

## Stretch Goals
*	Ideally the program will read csv files and maybe print updated csv’s
*	A way for the program to generate ingredients order forms based off products sold/ingredients remaining
*	Sales Forecasting

## Database Schema UPDATED
<img src="./public/Screen Shot 2019-09-27 at 2.19.40 PM.png"
     alt="schema"
/>

## User Stories
* As a user, I should be able to find the ingredients required for every menu item
* As a user, I should be able to find the cost of goods sold for each menu item
* As a user, I should be able to rank each menu item by their margin
* As a user, I should be able to compare COGS across multiple stores
* As a user, I should be able to upload a sales report csv and have that info stored in a database

## Product Accounting Formula
Beginning Inventory + Purchases - Ending Inventory = Cost of Goods Sold

## Practice Reading and Storing CSV Data
<img src="./public/Screen Shot 2019-09-23 at 7.35.57 AM.png"
     alt="dummy csv" />

<img src="./public/Screen Shot 2019-09-23 at 7.36.18 AM.png"
    alt="dummy csv"     
/>

Was able to successfully read and store csv data using the COPY command. Found a gem for using this in Rails applications.

## Program flexibility thoughts
Due to my comfort level with excel, as I work towards MVP, I'm going to prioritize reading a basic csv file. The file itself will consist of nothing more than the table columns I plan on storing it. So I will do considerable work in excel to find the needed info from sales/inventory reports, and then just have the program read simple tables.
