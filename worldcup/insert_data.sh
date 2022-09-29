#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# instead of checking, let's truncate the table
($PSQL "TRUNCATE games, teams RESTART IDENTITY");


($PSQL "insert into teams(name) values('Algeria')");
($PSQL "insert into teams(name) values('Argentina')");
($PSQL "insert into teams(name) values('Belgium')");
($PSQL "insert into teams(name) values('Brazil')");
($PSQL "insert into teams(name) values('Chile')");
($PSQL "insert into teams(name) values('Colombia')");
($PSQL "insert into teams(name) values('Costa Rica')");
($PSQL "insert into teams(name) values('Croatia')");
($PSQL "insert into teams(name) values('Denmark')");
($PSQL "insert into teams(name) values('England')");
($PSQL "insert into teams(name) values('France')");
($PSQL "insert into teams(name) values('Germany')");
($PSQL "insert into teams(name) values('Greece')");
($PSQL "insert into teams(name) values('Japan')");
($PSQL "insert into teams(name) values('Mexico')");
($PSQL "insert into teams(name) values('Netherlands')");
($PSQL "insert into teams(name) values('Nigeria')");
($PSQL "insert into teams(name) values('Russia')");
($PSQL "insert into teams(name) values('Sweden')");
($PSQL "insert into teams(name) values('Spain')");
($PSQL "insert into teams(name) values('Portugal')");
($PSQL "insert into teams(name) values('Switzerland')");
($PSQL "insert into teams(name) values('United States')");
($PSQL "insert into teams(name) values('Uruguay')");


cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    # fetch teams
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name ='$OPPONENT'")

    # check if they don't exist
    #if [[ -z $WINNER_ID ]]
    #then
      INSERTED_WINNER=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values('$YEAR', '$ROUND', '$WINNER_ID', '$OPPONENT_ID', '$WINNER_GOALS', '$OPPONENT_GOALS')")
      echo $INSERTED_WINNER;
    #fi
  fi
done
