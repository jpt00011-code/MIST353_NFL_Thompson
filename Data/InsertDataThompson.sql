use MIST353_NFL_RDB_Thompson;
GO

--inserting into ConferenceDivision table

DELETE FROM ConferenceDivision;
DELETE FROM Team;

INSERT INTO ConferenceDivision (Conference, Division)
VALUES ( 'AFC', 'East'),
       ( 'AFC', 'West'),
       ('AFC', 'North'),
       ('AFC', 'South'),
       ('NFC', 'East'),
       ('NFC', 'West'),
       ('NFC', 'North'),
       ('NFC', 'South');

GO
select * from ConferenceDivision;

GO
insert into Team (TeamName, TeamCityState, Teamcolors, ConferenceDivisionID)
VALUES ('Buffalo Bills', 'Buffalo, NY', 'Royal Blue, Red, White', 29),
       ('Miami Dolphins', 'Miami, FL', 'Aqua, Orange, White', 29),
       ('New England Patriots', 'Foxborough, MA', 'Navy Blue, Red, Silver', 29),
       ('New York Jets', 'East Rutherford, NJ', 'Green, White', 29),

       ('Denver Broncos', 'Denver, CO', 'Orange, Navy Blue, White', 34),
       ('Kansas City Chiefs', 'Kansas City, MO', 'Red, Gold, White', 34),
       ('Las Vegas Raiders', 'Las Vegas, NV', 'Silver and Black with White', 34),
       ('Los Angeles Chargers', 'Los Angeles, CA', 'Blue and White', 34),

       ('Baltimore Ravens', 'Baltimore, MD', 'Purple, Black, Metallic Gold', 31),
       ('Cincinnati Bengals', 'Cincinnati, OH', 'Black, Orange, White', 31),
       ('Cleveland Browns', 'Cleveland, OH', 'Brown, Orange, White', 31),
       ('Pittsburgh Steelers', 'Pittsburgh, PA', 'Black, Gold, White', 31),

        ('Houston Texans', 'Houston, TX', 'Deep Steel Blue, Battle Red, Liberty White', 32),
        ('Indianapolis Colts', 'Indianapolis, IN', 'Royal Blue and White', 32),
        ('Jacksonville Jaguars', 'Jacksonville, FL', 'Teal, Black, Gold, White', 32),
        ('Tennessee Titans', 'Nashville, TN', 'Titans Blue, Titans Navy, Red, Silver', 32),

        ('Dallas Cowboys', 'Arlington, TX', 'Navy Blue, Metallic Silver, White', 33),
        ('New York Giants', 'East Rutherford, NJ', 'Royal Blue, Red, White', 33),
        ('Philadelphia Eagles', 'Philadelphia, PA', 'Midnight Green, Silver, Black, White', 33),
        ('Washington Commanders', 'Landover, MD', 'Burgundy and Gold with White', 33),

        ('Chicago Bears', 'Chicago, IL', 'Navy Blue and Orange with White', 35),
        ('Detroit Lions', 'Detroit, MI', 'Honolulu Blue and Silver with White', 35),
        ('Green Bay Packers', 'Green Bay, WI', 'Dark Green and Gold with White', 35),
        ('Minnesota Vikings', 'Minneapolis, MN', 'Purple and Gold with White', 35),

        ('Atlanta Falcons', 'Atlanta, GA', 'Red and Black with White', 36),
        ('Carolina Panthers', 'Charlotte, NC', 'Black and Panther Blue with Silver and White', 36),
        ('New Orleans Saints', 'New Orleans, LA', 'Old Gold and Black with White', 36),
        ('Tampa Bay Buccaneers', 'Tampa Bay, FL', 'Red and Pewter with Black and Orange', 36),

        ('Arizona Cardinals', 'Phoenix, AZ', 'Cardinal Red and Black with White', 34),
        ('Los Angeles Rams', 'Los Angeles, CA', 'Royal Blue and Yellow with White', 34),
        ('San Francisco 49ers', 'San Francisco, CA', 'Red and Gold with White', 34),
        ('Seattle Seahawks','Seattle, WA','College Navy and Green', 34);

        select * from Team ORDER BY TeamID;



       




