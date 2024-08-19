install.package("Lahman")

library(Lahman)
library(dplyr)
library(ggplot2)
library(caret)

teams <- Teams

teams <- teams %>%
  mutate(runs_game = R / (W + L)) #runs_game is defined

teams_year <- teams %>%
  group_by(yearID) %>%
  summarize(mean_runs = mean(runs_game, na.rm=TRUE))

teams_year %>%
  ggplot(aes(x=yearID,y=mean_runs)) +
  geom_line()+
  geom_point()+
  ggtitle('Average MLB Runs by Year')
head(teams_year)

