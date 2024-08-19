library(Lahman)
library(dplyr)
library(ggplot2)
library(caret)

teams <- Teams


## runs_game is defined ##

teams <- teams %>%
  mutate(runs_game = R / (W + L)) #runs_game is defined

## mean_runs is defined ##

teams_year <- teams %>%
  group_by(yearID) %>%
  summarize(mean_runs = mean(runs_game, na.rm=TRUE))


## drawing the graph ##

teams_year %>%
  ggplot(aes(x=yearID,y=mean_runs)) +
  geom_line()+
  geom_point()+
  ggtitle('Average MLB Runs by Year')
head(teams_year)



## Predict Wins by Team ##

df_clean <- teams %>%
  select(name,yearID, W, L, R, H, HR, SO, RA) %>%
  filter(yearID >= 2010)

head(df_clean)
