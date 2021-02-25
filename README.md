# analysis-of-the-house-s-price-kielmc-
In this project, I try to explain the price of a house using different variables such as its positioning in relation to the super market, seniority etc.
Students learning both econometrics and R may find the introduction to both challenging. However, if the text is "Introductory Econometrics: A Modern Approach" by Jeffrey M. Wooldridge, they are in luck! The wooldridge data package aims to lighten the task by efficiently loading any data set found in the text with a single command.
I chose the Kielmc.gdt database to do an econometric study using linear regression.
Biblioth??que des variables:

A data.frame with 321 observations on 25 variables:

- year: 1978 or 1981

- age: age of house

- agesq: age^2

- nbh: neighborhood, 1-6

- cbd: dist. to cent. bus. dstrct, ft.

- intst: dist. to interstate, ft.

- lintst: log(intst)

- price: selling price

- rooms: # rooms in house

- area: square footage of house

- land: square footage lot

- baths: # bathrooms

- dist: dist. from house to incin., ft.

- ldist: log(dist)

- wind: prc. time wind incin. to house

- lprice: log(price)

- y81: =1 if year == 1981

- larea: log(area)

- lland: log(land)

- y81ldist: y81*ldist

- lintstsq: lintst^2

- nearinc: =1 if dist <= 15840

- y81nrinc: y81*nearinc

- rprice: price, 1978 dollars

- lrprice: log(rprice)

**NB: In order to be able to read extension data . gdt, here is the link of the functions used: https://github.com/dickoa/gretlReadWrite/tree/master/R**
