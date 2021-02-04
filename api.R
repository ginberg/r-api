library(plumber)
library(gapminder)
library(dplyr)

#* @apiTitle Gapminder API
#* @apiDescription API to explore the Gapminder dataset

#* Returns countries that satisfy condition
#* @param world_continent continent in the world
#* @param min_life_exp minimum life expectancy
#* @param min_pop minimum population
#* @get /countries
function(world_continent = "Europe", min_life_exp = 70, min_pop = 1000000) {
  gapminder %>%
    filter(
      year == 2007,
      continent == world_continent,
      lifeExp > min_life_exp,
      pop > min_pop)
}
