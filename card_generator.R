# install.packages("devtools")
# devtools::install_github("embruna/bingo", force=TRUE)
# devtools::install_github("jennybc/bingo")
library(bingo)
library(here)

here::i_am("card_generator.R")
## see some of the SuperBowl 50 squares
# tail(get_topic("football"))
# tail(get_topic("jc2"))
# tail(get_topic("math-proofs"))
tail(get_topic("movie_junglecruise"))
#> [1] "Shot of Golden Gate Bridge"
#> [2] "\"Silicon Valley and tech\" blah blah blah"
#> [3] "Mike Carey is WRONG"
#> [4] "Unexpected artist joins Beyoncé"
#> [5] "Cam's Superman shirt-opening thing"
#> [6] "Idle speculation it's Peyton's last game"

## make 8 bingo cards
bc <- bingo(n_cards = 80, words = get_topic("movie_junglecruise"))

## print them to PDF
plot(bc)
