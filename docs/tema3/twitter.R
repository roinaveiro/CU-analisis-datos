library(rtweet)
library(tidyverse)

app_name <- "CUNEF_data_analysis"

auth_setup_default()

# post a tweet from R
post_tweet("Look, i'm tweeting from R in my #rstats #earthanalytics class! @EarthLabCU")
## your tweet has been posted!


# Now you are ready to search twitter for recent tweets! Let’s start by finding 
# all tweets that use the #rstats hashtag. Notice below you use the rtweet::search_tweets() 
# function to search. search_tweets() requires the following arguments:

# q: the query word that you want to look for
# n: the number of tweets that you want returned. You can request up to a maximum of 18,000 tweets.

brexit_tweets <- search_tweets(q = "#BREXIT",
                               n = 500)


brexit_tweets %>% select(full_text) %>% slice(1:3)

