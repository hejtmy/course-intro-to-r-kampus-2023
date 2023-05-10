library(dplyr)

read.table("data/midlife-data-paper.csv", sep=",", header = TRUE)
summary(read.table("data/midlife-data-paper.csv", sep=",", header = TRUE))
str(read.table("data/midlife-data-paper.csv", sep=",", header = TRUE))

df_midlife <- read.table("data/midlife-data-paper.csv",
                         sep=",", header = TRUE)
df_iris <- iris

## Variable naming ----

age <- 33
height <- 183
weight <- 78
# height in meters
height_meters <- height/100
height_meters

# DRY - dont repeat yourself
my_bmi <- weight/(height_meters * height_meters)

### naming errors ----

weekday7 <- "Sunday"
weekday1 <- "Monday"

# Bad naming examples
# 7weekday <- "Sunday"

weekday.7 <- "Sunday"

# Reserved symbols
# ;!?^:/*-+%"'\|$^&()

# weekday$danger

# weekday definition 
# weekday <- "Sunday"

# Data types ----

### Numeric ----
class(age)
class(height)

age * 10
class(age)
age_upper <- toupper(age)
class(age_upper)
age_upper * 10

abs(-5)
log(10)
log10(10)
exp(10)

### Characters ----
class(weekday7)
weekday7 * 10
toupper(weekday7)
tolower(weekday7)

my_age_char <- "10"
class(my_age_char)

### Logical/Boolean -----
TRUE
FALSE

HELLO <- "Hello World!"
TRUE <- 5

is_smoker <- FALSE
class(is_smoker)

T
F

is_smoker <- F
class(is_smoker)
F <- 5
is_smoker <- F
class(is_smoker)
F <- FALSE

### Factors ------
# factor()

### List/Dictionary/Hash -----
person1 <- list()
person1$age <- 33
person1$name <- "Lukas"
person1$is_smoker <-FALSE
person1$height <- 183

person1$age / 10

### Missing values ----
NULL
NA

name <- ""
name <- NA

## Data type checking ----

name <- NA
# Is name na?
is.na(name)
# is it a character?
is.character(name)
# is it a number?
is.numeric(name)

is.numeric(df_iris$Sepal.Length)

## Data conversions ----
toupper(10)

education <- 1
as.character(education)

my_age_char <- "33"
as.numeric(my_age_char)
as.numeric("     33 . 5    ")
as.character(df_iris$Sepal.Length)

# Convert numbers to logicals
# convert 5 to logical
# convert -5 to logical
as.logical(-Inf)
as.logical(0)
# convert "hello" to logical

as.logical(" akshd  akjsdh jkashd jkahsd jkhajksdh jkashd kjashd jkas ")

9 + "hello"

10 + TRUE
TRUE + FALSE + TRUE

### Logical comparisons ----

selection_age <- 30

my_age <- 33
# is my age larger than selection age?
my_age > selection_age
my_age >= selection_age

# Is my age exactly the selection age?
my_age == selection_age

exclusion_age <- 30
# Is my age different than exclusion age?
exclusion_age != my_age

(5 > 1)
!(5 > 1)
!TRUE
!FALSE

# is my age larger than selection and am I a smoker?
is_smoker <- FALSE

my_age >= selection_age
is_smoker

(my_age >= selection_age) & is_smoker

(my_age >= selection_age) | is_smoker

## Example data -----
df_iris$Sepal.Length > 5
df_iris[df_iris$Sepal.Length > 5, ]

filter(df_iris, Sepal.Length > 5)
