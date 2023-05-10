age <- 33
length(age)

## Vector creation ----
ages <- c(33, 29, 35)
length(ages)

ages/10

selection_age <- 30
ages > selection_age

cities <- #5 cities (Prague included)
cities <- c("Prague", "Madrid", "Brno", "London", "Bratislava")
length(cities)

toupper(cities)

1:10
seq(1,10)
rep(1,10)

1:10 + 1
1:10 + 1:2
1:10 + rep(1:2, 5)

1:10 + 1:5

## Accesing vectors -----

### Numeric indexing -----
cities[1]
cities[5]
cities[1:3]
cities[1 & 3]
1 & 3
cities[TRUE]
cities[0 & 3]

cities[c(1,3)]

cities[-1]
cities[-c(1,5,3)]

cities == "Prague"

i_prague <- which(cities == "Prague")
cities[i_prague]

i_city <- which(cities == "Madrid")
cities[i_city]

# Create vector of ages
ages <- c(33, 29, 3, 25, 40, 70)
# select all larger than 30
i_30plus <- which(ages > 30)
ages[i_30plus]

### Logical indexing -----
cities[c(TRUE, FALSE, FALSE, TRUE, TRUE)]
cities <- c("Prague", "Madrid", "Brno", "London", "Bratislava", "Berlin")
cities[c(TRUE, FALSE)]

i_prague <- cities == "Prague"

cities[i_prague]
cities[cities == "Prague"]

letters
length(letters)

i_i <- which(letters == "i")
 
# Roulette
numbers <- c(0:36)
0:36 == seq(0,36)
red_black <- rep(c("red", "black"), 18)
colors <- c("green", red_black)
colors <- c("green", rep(c("red", "black"), 18))

rolled_number <- 0
i_number <- which(numbers == rolled_number)
colors[i_number]

?sample
# generate a random number from numbers
rolled_number <- sample(numbers, 1)
# what color was it?


# generate 20 numbers
# return colors
# save to "rolled_colors"¨
table(rolled_colors)

?rep
?seq
seq(0, 1, length.out = 11)
seq(1, 9, by = 2) 
