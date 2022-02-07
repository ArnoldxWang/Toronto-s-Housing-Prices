#### Preamble ####
# Purpose: A Study on Toronto's Housing Prices and Its Effects
# Author: Jing Li
# Data: Sat, 05 Feb 2022
# Contact: jingle.li@mail.utoronto.ca
# Pre-requisites: 
# - Need to have downloaded the data and saved it to inputs/data

#### Workspace setup ####
library(patchwork)
library(tidyverse)

data <- read.csv("housing_price.csv")

p1 <- data %>% ggplot(aes(x=Rent.Bank.Applicants, y=Home.Prices)) + geom_point(alpha=0.7, color="thistle")

p2 <- data %>% ggplot(aes(x=Mid.Century.Highrise.Population, y=Home.Prices)) + geom_point(alpha=0.7, color="thistle")

p3 <- data %>% ggplot(aes(x=Social.Housing.Units, y=Home.Prices)) + geom_point(alpha=0.7, color="thistle")

(p1 | p2 | p3)

data %>% ggplot(aes(x= Rent.Bank.Applicants  , y=Social.Housing.Units)) + geom_point(alpha=0.7, color="thistle")

data %>% ggplot(aes(x= Social.Housing.Waiting.List  , y=Social.Housing.Units)) + geom_point(alpha=0.7, color="thistle")
