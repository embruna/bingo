# install.packages("devtools")
devtools::install_github("embruna/bingo")

library(bingo)

## see some of the SuperBowl 50 squares
tail(get_topic("football"))
#> [1] "Shot of Golden Gate Bridge"
#> [2] "\"Silicon Valley and tech\" blah blah blah"
#> [3] "Mike Carey is WRONG"
#> [4] "Unexpected artist joins Beyoncé"
#> [5] "Cam's Superman shirt-opening thing"
#> [6] "Idle speculation it's Peyton's last game"

## make 8 bingo cards
bc <- bingo(n_cards = 8, words = get_topic("football"))

## print them to PDF
plot(bc)
