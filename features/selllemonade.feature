Feature: Sell lemonade
	As sales employee
	I want to sell lemonade
	to earn money.

	#For now all payment is cash.
	Scenario: Selling one cup of lemonade
		Given the price of a cup is 5 DKK
		When I sell a cup to a customer, receiving 5 DKK as payment
		Then the following lemonade sale took place:
			|Number of cups sold|Amount received|
			|1		    |5 DKK	    |

	Scenario: Selling one cup of lemonade with cashback
		Given the price of a cup is 5 DKK
		When I sell a cup receiving 20 DKK as payment
		Then the following lemonade sale took place:
			|Number of cups sold|Amount received|Cashback|
			|1		    |5 DKK	    |15 DKK  |
		
	Scenario: Sale is rejected if insuffecient payment
		Given the price of a cup is 5 DKK
		When I sell a cup to a customer, receiving 2 DKK as payment
		Then no lemonade is sold

	Scenario: Selling five cups of lemonade
		Given the price of a cup is 5 DKK
		When I sell five cups to a customer, receiving 25 DKK as payment
		Then the following lemonade sale took place:
			|Number of cups sold|Amount received|Cashback|
			|5		    |25 DKK	    |0 DKK   |
