CREATE DATABASE NBADB;
USE NBADB;

CREATE TABLE IF NOT EXISTS Stat(
StatID INT,
PlayerID INT, 
GP INT, 
FG DOUBLE, 
GS INT, 
BLK INT, 
PTS INT, 
Turnover INT, 
AST INT, 
STL INT, 
REB INT, 
PF INT, 
PRIMARY KEY(StatID, PlayerID)
);

CREATE TABLE IF NOT EXISTS Player(
PlayerID INT, 
TeamID INT,
FIRSTNAME VARCHAR(64), 
LASTNAME VARCHAR(64), 
DOB DATE, 
PRIMARY KEY(PlayerID), 
FOREIGN KEY(TeamID) REFERENCES Team(TeamID)
);

CREATE TABLE IF NOT EXISTS Player_College(
PlayerID INT, 
College VARCHAR(64), 
PRIMARY KEY(PlayerID, College)
);

CREATE TABLE IF NOT EXISTS Plays(
PlayID INT,
PlayerID INT, 
PositionID INT, 
WEIGHT VARCHAR(16),
HEIGHT VARCHAR(16),
PRIMARY KEY(PlayID),
FOREIGN KEY(PlayerID) REFERENCES Player(PlayerID), 
FOREIGN KEY(PositionID) REFERENCES Player_Position(PositionID)
);

CREATE TABLE IF NOT EXISTS Player_Position(
PositionID INT, 
TITLE VARCHAR(20), 
PRIMARY KEY(PositionID)
);

CREATE TABLE IF NOT EXISTS Team(
TeamID INT, 
ConfID INT, 
TEAM_NAME VARCHAR(60), 
ARENA_LOCATION VARCHAR(60), 
ARENA_NAME VARCHAR(60), 
PRIMARY KEY(TeamID),
FOREIGN KEY(ConfID) REFERENCES Conference(ConfID)
);

CREATE TABLE IF NOT EXISTS Coach(
CoachID INT, 
TeamID INT,
FIRST_NAME VARCHAR(60), 
LAST_NAME VARCHAR(60), 
START_YEAR DATE, 
PRIMARY KEY(CoachID),
FOREIGN KEY(TeamID) REFERENCES Team(TeamID)
);

CREATE TABLE IF NOT EXISTS Person(
PersonID INT, 
CoachID INT, 
PlayerID INT,
NAME VARCHAR(64), 
DOB DATE, 
FOREIGN KEY(CoachID) REFERENCES Coach(CoachID),
FOREIGN KEY(PlayerID) REFERENCES Player(PlayerID)
);

CREATE TABLE IF NOT EXISTS Conference(
ConfID INT, 
CONF_NAME VARCHAR(4), 
PRIMARY KEY(ConfID)
);

CREATE TABLE IF NOT EXISTS Conference_Division(
CDID INT,
ConfID INT, 
DivID INT,
PRIMARY KEY(CDID),
FOREIGN KEY(ConfID) REFERENCES Conference(ConfID), 
FOREIGN KEY(DivID) REFERENCES Division(DivID)
);

CREATE TABLE IF NOT EXISTS Division(
DivID INT, 
DIV_NAME VARCHAR(20), 
PRIMARY KEY(DivID)
);

CREATE TABLE IF NOT EXISTS Compete(
CompeteID INT, 
TeamID INT,
SeasonID INT,
WIN INT, 
LOSS INT, 
PRIMARY KEY(CompeteID),
FOREIGN KEY(TeamID) REFERENCES Team(TeamID),
FOREIGN KEY(SeasonID) REFERENCES Season(SeasonID)
);

CREATE TABLE IF NOT EXISTS Season(
SeasonID INT, 
REG_GAMES INT, 
END_DATE DATE, 
YEAR INT, 
START_DATE DATE, 
PLAYOFF_GAMES INT, 
PRIMARY KEY(SeasonID)
);

------------------------------------------------
-- SQL Commands/Query Statements
------------------------------------------------

-- 1 players with most games started in descending order
SELECT LastName, FirstName, Stat.GS as "Games Started"
FROM Player, Stat WHERE Player.PlayerID = Stat.PlayerID
ORDER BY Stat.GS DESC;
-- 2 Top points per game
SELECT Player.FirstName, Player.LastName, Stat.PTS/Stat.GP AS PPG
FROM Player, Stat WHERE PLAYER.PlayerID = Stat.PlayerID
ORDER BY PPG DESC;
-- 3 Top FG percentage averaged per position
SELECT p.TITLE AS Position, round(AVG(s.FG) * 100, 2) AS Avg_FG_Percentage FROM Stat s
JOIN Plays pl ON s.PlayerID = pl.PlayerID
JOIN Player_Position p ON pl.PositionID = p.PositionID
GROUP BY p.TITLE ORDER BY Avg_FG_Percentage DESC;
--  4 Players with greater than 50 blocks
SELECT Person.Name, Stat.BLK FROM Person, Player, Stat
WHERE Person.PlayerID = Player.PlayerID AND Player.PlayerID = Stat.PlayerID AND Stat.BLK >= 50;
-- 5 efficient shooters (above .5)
SELECT Person.Name, Stat.FG FROM Person, Player, Stat
WHERE Person.PlayerID = Player.PlayerID AND Player.PlayerID = Stat.PlayerID AND Stat.FG >= 0.5
ORDER BY Stat.FG DESC; 
-- 6 Players with High Assists-to-Turnovers Ratio: 
SELECT Person.Name, Stat.AST, Stat.Turnover, Round(Stat.AST/Stat.Turnover, 2) AS ASTRatio FROM Person, Player, Stat
WHERE Person.PlayerID = Player.PlayerID AND Player.PlayerID = Stat.PlayerID AND Stat.Turnover > 0
ORDER BY ASTRatio DESC;
-- 7 select the players that are from the same college
SELECT p1.FIRSTNAME AS Player1_FirstName, p1.LASTNAME AS Player1_LastName, p2.FIRSTNAME AS Player2_FirstName, p2.LASTNAME AS Player2_LastName, pc.College AS College_Attended
FROM Player_College pc JOIN Player p1 ON pc.PlayerID = p1.PlayerID JOIN Player p2 ON 
pc.College = (SELECT College FROM Player_College WHERE PlayerID = p2.PlayerID) WHERE p1.PlayerID < p2.PlayerID;
-- 8 Compute the rank and dense rank of each player 
SELECT Player.*, Stat.pts,
RANK() OVER (ORDER BY Stat.pts DESC) AS 'Rank',
DENSE_RANK() OVER (ORDER BY Stat.pts DESC) AS DenseRank
FROM Stat, Player WHERE Stat.PlayerID = Player.PlayerID;
-- 9 Arena that is used by multiple teams
SELECT Team.Arena_Name as "Shared Arena"
FROM Team GROUP BY Team.Arena_Name
HAVING COUNT(*) > 1;
-- 10 Compute the row number of each player based on the 
-- number of points they have scored in the Stat table
SELECT Player.*, Stat.pts,
ROW_NUMBER() OVER (ORDER BY Stat.pts DESC) AS RowNumber
FROM Stat, Player WHERE Stat.PlayerID = Player.PlayerID;
-- 11 Write a query that gets the name of the player who belongs to the Log Angeles Lakers. 
SELECT FirstName, LastName FROM Player
WHERE TeamID IN (SELECT TeamID FROM Team WHERE TEAM_NAME = 'Los Angeles Lakers');