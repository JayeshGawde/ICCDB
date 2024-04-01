create database test11;
use test11;
create table Countries (CountryID INT PRIMARY KEY,CountryName VARCHAR(100),Continent VARCHAR(50),MemberSince DATE);
INSERT INTO Countries VALUES (1, 'India', 'Asia', '1947-08-15');
INSERT INTO Countries VALUES (2, 'Australia', 'Oceania', '1901-01-01');
INSERT INTO Countries VALUES (3, 'England',  'Europe', '1707-05-01');
INSERT INTO Countries VALUES (4, 'Pakistan','Asia', '1947-08-14');
INSERT INTO Countries VALUES (5, 'South Africa', 'Africa', '1961-05-31');
INSERT INTO Countries VALUES (6, 'Sri Lanka', 'Asia', '1948-02-04');
INSERT INTO Countries VALUES(7, 'West Indies', 'North America', NULL);
INSERT INTO Countries VALUES(8, 'Bangladesh', 'Asia', '1971-03-26');
INSERT INTO Countries VALUES(9, 'New Zealand', 'Oceania', '1947-01-10');
INSERT INTO Countries VALUES (10, 'Afghanistan', 'Asia', '2001-12-22');
select * from Countries;  
SELECT CountryID, CountryName FROM Countries;


CREATE TABLE Players (PlayerID INT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),DOB DATE,CountryID INT,BatingStyle VARCHAR(50),BowlingStyle VARCHAR(50),DebutDate DATE,FOREIGN KEY (CountryID) REFERENCES Countries(CountryID));
INSERT INTO Players VALUES (1, 'Virat', 'Kohli', '1988-11-05', 1, 'Right-handed', 'Right-arm medium', '2008-08-18');
INSERT INTO Players VALUES (2, 'Steve', 'Smith', '1989-06-02', 2, 'Right-handed', 'Right-arm leg break', '2010-02-28');
INSERT INTO Players VALUES (3, 'Joe', 'Root', '1990-12-30', 3, 'Right-handed', 'Right-arm off break', '2012-12-13');
INSERT INTO Players VALUES  (4, 'Babar', 'Azam', '1994-10-15', 4, 'Right-handed', 'Right-arm leg break', '2015-05-31');
INSERT INTO Players VALUES  (5, 'Kagiso', 'Rabada', '1995-05-25', 5, 'Right-handed', 'Right-arm fast', '2015-11-05');
INSERT INTO Players VALUES(6, 'Kane', 'Williamson', '1990-08-08', 9, 'Right-handed', 'Right-arm off break', '2010-11-04');
INSERT INTO Players VALUES (7, 'Shakib', 'Al Hasan', '1987-03-24', 8, 'Left-handed', 'Left-arm orthodox', '2006-08-06');
INSERT INTO Players VALUES (8, 'Rashid', 'Khan', '1998-09-20', 10, 'Right-handed', 'Right-arm leg break googly', '2015-10-18');
INSERT INTO Players VALUES(9, 'Quinton', 'de Kock', '1992-12-17', 5, 'Left-handed', 'None', '2012-01-20');
INSERT INTO Players VALUES(10, 'Kusal', 'Perera', '1990-08-17', 6, 'Left-handed', 'Right-arm medium', '2009-12-06');
select * from Players;  

CREATE TABLE Teams (TeamID INT PRIMARY KEY,TeamName VARCHAR(100),CaptainID INT,CoachID INT,EstablishedYear INT);
INSERT INTO Teams VALUES(1, 'India National Cricket Team', 1, 101, 1932);
INSERT INTO Teams VALUES(2, 'Australia National Cricket Team', 2, 102, 1905);
INSERT INTO Teams VALUES (3, 'England National Cricket Team', 3, 103, 1877);
INSERT INTO Teams VALUES (4, 'Pakistan National Cricket Team', 4, 104, 1952);
INSERT INTO Teams VALUES(5, 'South Africa National Cricket Team', 5, 105, 1889);
INSERT INTO Teams VALUES(6, 'Sri Lanka National Cricket Team', 6, 106, 1981);
INSERT INTO Teams VALUES(7, 'West Indies National Cricket Team', 7, 107, 1928);
INSERT INTO Teams VALUES(8, 'Bangladesh National Cricket Team', 8, 108, 1971);
INSERT INTO Teams VALUES(9, 'New Zealand National Cricket Team', 9, 109, 1926);
INSERT INTO Teams VALUES(10, 'Afghanistan National Cricket Team', 10, 110, 2001);
select * from Teams;

CREATE TABLE Official(OfficialID INT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),Role VARCHAR(100),CountryID INT,FOREIGN KEY (CountryID) REFERENCES Countries(CountryID));
INSERT INTO Official VALUES(1, 'Greg', 'Barclay', 'Chairman', 2);
INSERT INTO Official VALUES(2, 'Manu', 'Sawhney', 'CEO', 1);
INSERT INTO Official VALUES(3, 'Geoff', 'Allardice', 'General Manager - Cricket', 3); 
INSERT INTO Official VALUES(4, 'David', 'Richardson', 'Former CEO', 5);
INSERT INTO Official VALUES(5, 'Ehsan', 'Mani', 'Former Chairman', 4); 
INSERT INTO Official VALUES(6, 'Narayanaswami', 'Srinivasan', 'Former President', 1);
INSERT INTO Official VALUES(7, 'Shashank', 'Manohar', 'Former Chairman', 1);
INSERT INTO Official VALUES(8, 'Dave', 'Cameron', 'Former President', 7);
INSERT INTO Official VALUES(9, 'Mustafa', 'Kamal', 'Former President', 8);
INSERT INTO Official VALUES(10, 'Zaheer', 'Abbas', 'Former President', 4);
select * from Official;

CREATE TABLE Matches (MatchID INT PRIMARY KEY,Team1ID INT,Team2ID INT,Venue VARCHAR(100),MatchDate DATE,Result VARCHAR(50));
INSERT INTO Matches VALUES(1, 1, 2, 'Eden Gardens, Kolkata', '2024-03-20', 'Team1 won'); 
INSERT INTO Matches VALUES(2, 3, 4, 'LordCricket Ground,London', '2024-04-05', 'Team3 won'); 
INSERT INTO Matches VALUES(3, 5, 1, 'Newlands Cricket Ground, Cape Town', '2024-04-15', 'Match tied');
INSERT INTO Matches VALUES(4, 2, 4, 'Melbourne Cricket Ground, Melbourne', '2024-05-01', 'Team2 won');
INSERT INTO Matches VALUES(5, 3, 5, 'The Oval, London', '2024-05-10', 'Team5 won');
INSERT INTO Matches VALUES(6, 4, 5, 'Gaddafi Stadium, Lahore', '2024-05-25', 'Team4 won');
INSERT INTO Matches VALUES(7, 1, 3, 'Wankhede Stadium, Mumbai', '2024-06-10', 'Match abandoned');
INSERT INTO Matches VALUES(8, 2, 5, 'Sydney Cricket Ground, Sydney', '2024-06-20', 'Team2 won');
INSERT INTO Matches VALUES(9, 4, 1, 'National Stadium, Karachi', '2024-07-05', 'Team1 won');
INSERT INTO Matches VALUES(10, 5, 3, 'SuperSport Park, Centurion', '2024-07-15', 'Team3 won');
select * from Matches ;

CREATE TABLE BCCI_Tournaments (TournamentID INT PRIMARY KEY,TournamentName VARCHAR(255),StartDate DATE,EndDate DATE,HostCountry VARCHAR(100),WinnerID INT);
INSERT INTO BCCI_Tournaments VALUES (1, 'Indian Premier League (IPL)', '2023-03-23', '2023-05-21', 'India', 4);
INSERT INTO BCCI_Tournaments VALUES (2, 'ICC Cricket World Cup', '2023-10-18', '2023-11-26', 'India', 8);
INSERT INTO BCCI_Tournaments VALUES (3, 'Champions Trophy', '2024-06-01', '2024-06-18', 'England', 3);
INSERT INTO BCCI_Tournaments VALUES (4, 'Asia Cup', '2024-09-15', '2024-09-28', 'UAE', 6);
INSERT INTO BCCI_Tournaments VALUES (5, 'Indian T20 League', '2024-03-30', '2024-05-15', 'India', 1);
INSERT INTO BCCI_Tournaments VALUES (6, 'ICC mens Cricket World Cup', '2025-02-01', '2025-03-31', 'New Zealand', 9);
INSERT INTO BCCI_Tournaments VALUES (7, 'Indian ODI League', '2025-04-10', '2025-05-25', 'India', 2);
INSERT INTO BCCI_Tournaments VALUES (8, 'Champions Trophy', '2025-06-10', '2025-06-27', 'Australia', 5);
INSERT INTO BCCI_Tournaments VALUES (9, 'Asia Cup', '2025-09-20', '2025-10-03', 'Pakistan', 7);
INSERT INTO BCCI_Tournaments VALUES (10, 'Indian Premier League (IPL)', '2026-03-15', '2026-05-10', 'India', 3);
select * from BCCI_Tournaments ;

CREATE TABLE Umpires (umpireid INT PRIMARY KEY,firstname VARCHAR(50),lastname VARCHAR(50),countryid INT,matchesofficiated INT,FOREIGN KEY (countryid) REFERENCES Countries(countryid));
INSERT INTO Umpires  VALUES(1, 'Simon', 'Taufel', 1, 200);
INSERT INTO Umpires  VALUES(2, 'Aleem', 'Dar', 2, 250);
INSERT INTO Umpires  VALUES(3, 'Nigel', 'Llong', 3, 180);
INSERT INTO Umpires  VALUES(4, 'Anil', 'Chaudhary', 1, 150);
INSERT INTO Umpires  VALUES(5, 'Richard', 'Kettleborough', 4, 220);
INSERT INTO Umpires VALUES(6, 'Marais', 'Erasmus', 5, 230);
INSERT INTO Umpires VALUES(7, 'Kumar', 'Dharmasena', 6, 210);
INSERT INTO Umpires VALUES(8, 'Paul', 'Reiffel', 2, 190);
INSERT INTO Umpires VALUES(9, 'Bruce', 'Oxenford', 4, 240);
INSERT INTO Umpires VALUES(10, 'Chris', 'Gaffaney', 7, 260);
select * from  Umpires ;

CREATE TABLE Venues (venueid INT PRIMARY KEY,venuename VARCHAR(100),location VARCHAR(100),capacity INT);
INSERT INTO Venues VALUES(1, 'Eden Gardens', 'Kolkata', 66000);
INSERT INTO Venues VALUES(2, 'Wankhede Stadium', 'Mumbai', 33000);
INSERT INTO Venues VALUES(3, 'M. Chinnaswamy Stadium', 'Bengaluru', 38000);
INSERT INTO Venues VALUES(4, 'Feroz Shah Kotla Ground', 'New Delhi', 41000);
INSERT INTO Venues VALUES(5, 'Rajiv Gandhi International Cricket Stadium', 'Hyderabad', 55000);
INSERT INTO Venues VALUES(6, 'Adelaide Oval', 'Adelaide', 53000);
INSERT INTO Venues VALUES(7, 'The Gabba', 'Brisbane', 42000);
INSERT INTO Venues VALUES(8, 'Old Trafford Cricket Ground', 'Manchester', 26000);
INSERT INTO Venues VALUES(9, 'Lords Cricket Ground', 'London', 28000);
INSERT INTO Venues VALUES(10, 'MCG - Melbourne Cricket Ground', 'Melbourne', 100024);
select * from  Venues ;

CREATE TABLE Rankings (RankingID INT PRIMARY KEY,TeamID INT,PlayerID INT,Format VARCHAR(50),Position INT,Points INT,FOREIGN KEY (TeamID) REFERENCES Teams(TeamID),FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID));
INSERT INTO Rankings  VALUES (1, 1, 1, 'Test', 1, 500);
INSERT INTO Rankings  VALUES(2, 2, 2, 'ODI', 2, 450);
INSERT INTO Rankings  VALUES(3, 3, 3, 'T20', 3, 400);
INSERT INTO Rankings  VALUES(4, 4, 4, 'Test', 2, 480);
INSERT INTO Rankings  VALUES(5, 5, 5, 'ODI', 1, 520);
INSERT INTO Rankings VALUES (6, 6, 6,'Test', 3, 430);
INSERT INTO Rankings VALUES (7, 7, 7, 'ODI', 3, 410);
INSERT INTO Rankings VALUES (8, 8, 8, 'T20', 2, 480);
INSERT INTO Rankings VALUES (9, 9, 9, 'Test', 4, 410);
INSERT INTO Rankings VALUES (10, 10, 10, 'ODI', 4, 390);
select * from Rankings;

CREATE TABLE DisciplinaryCommittee (committeeid INT PRIMARY KEY,memberid INT,meetingdate DATE,disciplinaryaction TEXT);
INSERT INTO DisciplinaryCommittee VALUES(1, 101, '2024-02-15', 'Issued a warning to the player for misconduct during a match.');
INSERT INTO DisciplinaryCommittee VALUES(2, 102, '2024-03-05', 'Suspended the player for one match due to violation of code of conduct.');
INSERT INTO DisciplinaryCommittee VALUES(3, 103, '2024-03-10', 'Fined the player for inappropriate behavior during a press conference.');
INSERT INTO DisciplinaryCommittee VALUES(4, 104, '2024-03-20', 'Banned the player for three matches for on-field altercation with an opponent.');
INSERT INTO DisciplinaryCommittee VALUES(5, 105, '2024-04-02', 'Warned the player and the team management for repeated instances of slow over-rate.');
INSERT INTO DisciplinaryCommittee VALUES(6, 106, '2024-04-15', 'Suspended the player for two matches due to dissent against the umpire.');
INSERT INTO DisciplinaryCommittee VALUES(7, 107, '2024-04-30', 'Fined the player for using inappropriate language on the field.');
INSERT INTO DisciplinaryCommittee VALUES(8, 108, '2024-05-10', 'Issued a warning to the player for breaching the ICC Code of Conduct.');
INSERT INTO DisciplinaryCommittee VALUES(9, 109, '2024-05-25', 'Suspended the player from all cricketing activities for a month due to doping violation.');
INSERT INTO DisciplinaryCommittee VALUES(10, 110, '2024-06-05', 'Banned the player for the remainder of the season for involvement in match-fixing.');
select * from DisciplinaryCommittee;

CREATE TABLE awards (awardid INT PRIMARY KEY,playerid INT,awardname VARCHAR(255),year INT,category VARCHAR(50));
INSERT INTO awards VALUES (1, 1, 'ICC Cricketer of the Year', 2021, 'Overall');
INSERT INTO awards VALUES (2, 2, 'Player of the Match', 2020, 'ODI');
INSERT INTO awards VALUES(3, 3, 'Test Player of the Year', 2019, 'Test');
INSERT INTO awards VALUES (4, 4, 'Emerging Player of the Year', 2022, 'Overall');
INSERT INTO awards VALUES(5, 5, 'T20I Performance of the Year', 2021, 'T20I');
INSERT INTO awards VALUES (6, 6, 'ODI Bowler of the Year', 2023, 'ODI');
INSERT INTO awards VALUES (7, 7, 'T20I Batsman of the Year', 2022, 'T20I');
INSERT INTO awards VALUES (8, 8, 'Test Batsman of the Year', 2024, 'Test');
INSERT INTO awards VALUES (9, 9, 'Spirit of Cricket Award', 2023, 'Overall');
INSERT INTO awards VALUES (10, 10, 'ODI All-rounder of the Year', 2022, 'ODI');
select * from awards;   
    
CREATE TABLE records (recordid INT PRIMARY KEY,playerid INT,type VARCHAR(50),value INT,matchid INT);
INSERT INTO records VALUES(1, 1, 'Most Runs in an Innings', 264, 101);
INSERT INTO records VALUES(2, 2, 'Best Bowling Figures in an Innings', 7, 102);
INSERT INTO records VALUES(3, 3, 'Most Catches in a Match', 5, 103);
INSERT INTO records VALUES(4, 4, 'Fastest Century', 31, 104);
INSERT INTO records VALUES(5, 5, 'Most Sixes in a Match', 12, 105);
INSERT INTO records VALUES(6, 6, 'Highest Individual Score', 400, 106);
INSERT INTO records VALUES(7, 7, 'Best Bowling Average', 12, 107);
INSERT INTO records VALUES(8, 8, 'Most Dismissals by a Wicketkeeper in a Match', 8, 108);
INSERT INTO records VALUES(9, 9, 'Fastest Fifty', 14, 109);
INSERT INTO records VALUES(10, 10, 'Most Runs in a Calendar Year', 2500, 110);
select * from records;  

CREATE TABLE broadcasting_partners (partnerid INT PRIMARY KEY,partnername VARCHAR(255),contractstartdate DATE,contractenddate DATE);
INSERT INTO broadcasting_partners VALUES(1, 'ESPN', '2023-01-01', '2026-12-31');
INSERT INTO broadcasting_partners VALUES(2, 'Star Sports', '2022-07-01', '2025-06-30');
INSERT INTO broadcasting_partners VALUES(3, 'Sky Sports', '2024-03-15', '2027-03-14');
INSERT INTO broadcasting_partners VALUES (4, 'Sony Pictures Network', '2023-09-01', '2026-08-31');
INSERT INTO broadcasting_partners VALUES (5, 'Willow TV', '2022-12-01', '2025-11-30');
INSERT INTO broadcasting_partners VALUES(6, 'SuperSport', '2023-06-01', '2026-05-31');
INSERT INTO broadcasting_partners VALUES(7, 'PTV Sports', '2024-01-15', '2026-12-14');
INSERT INTO broadcasting_partners VALUES(8, 'Geo Super', '2023-08-01', '2026-07-31');
INSERT INTO broadcasting_partners VALUES(9, 'Fox Sports', '2024-05-01', '2027-04-30');
INSERT INTO broadcasting_partners VALUES(10, 'BeIN Sports', '2022-10-01', '2025-09-30');
select * from broadcasting_partners; 
    
CREATE TABLE injuries (injuryid INT PRIMARY KEY,playerid INT,injurytype VARCHAR(50),datereported DATE);
INSERT INTO injuries VALUES(1, 1, 'Hamstring Strain', '2023-05-10');
INSERT INTO injuries VALUES(2, 2, 'Shoulder Dislocation', '2022-09-15');
INSERT INTO injuries VALUES(3, 3, 'Ankle Sprain', '2024-01-20');
INSERT INTO injuries VALUES(4, 4, 'Knee Ligament Tear', '2023-11-05');
INSERT INTO injuries VALUES(5, 5, 'Back Spasm', '2022-12-30');
INSERT INTO injuries VALUES(6, 6, 'Groin Strain', '2024-03-25');
INSERT INTO injuries VALUES(7, 7, 'Concussion', '2023-08-10');
INSERT INTO injuries VALUES(8, 8, 'Fractured Finger', '2024-05-15');
INSERT INTO injuries VALUES(9, 9, 'Elbow Tendonitis', '2022-11-20');
INSERT INTO injuries VALUES(10, 10, 'Stress Fracture', '2023-07-05');
select * from injuries; 
    
CREATE TABLE sponsors (sponsorid INT PRIMARY KEY,sponsor_name VARCHAR(255),contract_start_date DATE,contract_end_date DATE);
INSERT INTO sponsors VALUES(1, 'Nike', '2023-01-01', '2026-12-31');
INSERT INTO sponsors VALUES(2, 'PepsiCo', '2022-07-01', '2025-06-30');
INSERT INTO sponsors VALUES(3, 'Adidas', '2024-03-15', '2027-03-14');
INSERT INTO sponsors VALUES(4, 'Coca-Cola', '2023-09-01', '2026-08-31');
INSERT INTO sponsors VALUES (5, 'Mastercard', '2022-12-01', '2025-11-30');
INSERT INTO sponsors VALUES(6, 'Samsung', '2023-06-01', '2026-05-31');
INSERT INTO sponsors VALUES(7, 'Vodafone', '2024-01-15', '2026-12-14');
INSERT INTO sponsors VALUES(8, 'Amazon', '2023-08-01', '2026-07-31');
INSERT INTO sponsors VALUES(9, 'Gatorade', '2024-05-01', '2027-04-30');
INSERT INTO sponsors VALUES(10, 'Toyota', '2022-10-01', '2025-09-30');
select * from sponsors ;   
 
-- Find the oldest established team:
SELECT * FROM Teams ORDER BY EstablishedYear ASC LIMIT 1;

-- List the players who have scored more than 500 points in rankings:
SELECT * FROM Rankings WHERE Points > 500;

-- Show the player with the highest number of awards:
SELECT * FROM awards WHERE playerid = (SELECT playerid FROM awards GROUP BY playerid ORDER BY COUNT(*) DESC LIMIT 1);
SELECT p.PlayerID, CONCAT(p.FirstName, ' ', p.LastName) AS PlayerName, COUNT(*) AS AwardCount
FROM awards a
JOIN Players p ON a.PlayerID = p.PlayerID
GROUP BY p.PlayerID, PlayerName
ORDER BY AwardCount DESC
LIMIT 1;

-- List the tournaments hosted in England after 2023:
SELECT * FROM BCCI_Tournaments WHERE HostCountry = 'England' AND StartDate > '2023-01-01';

-- Display the top 3 umpires based on the number of matches officiated:
SELECT * FROM Umpires ORDER BY matchesofficiated DESC LIMIT 3;

-- Show the venue with the highest capacity:
SELECT * FROM Venues ORDER BY capacity DESC LIMIT 1;

-- List players who debuted between 2010 and 2015:
SELECT * FROM Players WHERE DebutDate BETWEEN '2010-01-01' AND '2015-12-31';

-- Display disciplinary actions taken in 2024:
SELECT * FROM DisciplinaryCommittee WHERE meetingdate BETWEEN '2024-01-01' AND '2024-12-31';

-- Find the player with the most catches in a match:
SELECT * FROM records WHERE type = 'Most Catches in a Match' ORDER BY value DESC LIMIT 1;

-- List the broadcasting partners with contracts expiring in 2026:
SELECT * FROM broadcasting_partners WHERE contractenddate BETWEEN '2026-01-01' AND '2026-12-31';

-- Show players from Pakistan:
SELECT * FROM Players WHERE CountryID = 4;

-- List the teams without a coach:
SELECT * FROM Teams WHERE CoachID IS NULL;

-- Display the matches held in London:
SELECT * FROM Matches WHERE Venue LIKE '%London%';
 
-- 1st tournaments won by India National Cricket Team:
SELECT * FROM BCCI_Tournaments WHERE WinnerID = 1;

-- Show players who have won an award in the 'Overall' category:
SELECT * FROM awards WHERE category = 'Overall';

-- Find players with injuries reported in 2023:
SELECT * FROM injuries WHERE datereported BETWEEN '2023-01-01' AND '2023-12-31';

-- List sponsors whose contracts start after 2023:
SELECT * FROM sponsors WHERE contract_start_date > '2023-12-31';

-- Show matches where the result was 'Match tied':
SELECT * FROM Matches WHERE Result = 'Match tied';

-- List players with more than 100 umpiring matches:
SELECT * FROM Umpires WHERE matchesofficiated > 100;

-- Find the teams that were established before 1900:
SELECT * FROM Teams WHERE EstablishedYear < 1900;

-- Display the players with a bowling style of 'Right-arm fast':
SELECT * FROM Players WHERE BowlingStyle = 'Right-arm fast';

-- List the official roles in descending order of occurrence:
SELECT Role, COUNT(*) AS role_count FROM Official GROUP BY Role ORDER BY role_count DESC;

-- Show the tournaments hosted outside of India:
SELECT * FROM BCCI_Tournaments WHERE HostCountry != 'India';

-- Find the venues with capacities between 40000 and 50000:
SELECT * FROM Venues WHERE capacity BETWEEN 40000 AND 50000;

-- Find players along with their teams:
SELECT Players.*, Teams.TeamName
FROM Players
inner JOIN Teams ON Players.CountryID = Teams.TeamID;

-- players and their awars
SELECT Players.FirstName, Players.LastName, awards.awardname
FROM Players
LEFT JOIN awards ON Players.PlayerID = awards.playerid;

-- officals with their respective--  countries
SELECT Official.FirstName, Official.LastName, Countries.CountryName
FROM Official
RIGHT JOIN Countries ON Official.CountryID = Countries.CountryID;


















    
    
    

    









    
 

    
    
    
    
    

 

    

   
   
    

    
    
    
    
   

 
   
