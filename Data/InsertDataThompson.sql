--inserting into ConferenceDivision table
INSERT INTO ConferenceDivision (Conference, Division)
VALUES ('AFC', 'East'),
       ('AFC', 'West'),
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
VALUES ('Buffalo Bills', 'Buffalo, NY', 'Royal Blue, Red, White', 1),
       ('Miami Dolphins', 'Miami, FL', 'Aqua, Orange, White', 1),
       ('New England Patriots', 'Foxborough, MA', 'Navy Blue, Red, Silver', 1),
       ('New York Jets', 'East Rutherford, NJ', 'Green, White', 1),

     ('Denver Broncos', 'Denver, CO', 'Orange, Navy Blue, White', 2),
     ('Kansas City Chiefs', 'Kansas City, MO', 'Red, Gold, White', 2),
     ('Las Vegas Raiders', 'Las Vegas, NV', 'Silver and Black with White accents.', 2),
     ('Los Angeles Chargers', 'Los Angeles, CA', 'Powder Blue and Sunshine Gold with White accents.', 2),

       ('Baltimore Ravens', 'Baltimore, MD', 'Purple, Black, Metallic Gold', 3),
       ('Cincinnati Bengals', 'Cincinnati, OH', 'Black, Orange, White', 3),
       ('Cleveland Browns', 'Cleveland, OH', 'Brown, Orange, White', 3),
       ('Pittsburgh Steelers', 'Pittsburgh, PA', 'Black, Gold, White', 3),

        ('Houston Texans', 'Houston, TX', 'Deep Steel Blue, Battle Red, Liberty White', 4),
        ('Indianapolis Colts', 'Indianapolis, IN', 'Royal Blue and White', 4),
        ('Jacksonville Jaguars', 'Jacksonville, FL', 'Teal, Black, Gold, White', 4),
        ('Tennessee Titans', 'Nashville, TN', 'Titans Blue, Titans Navy, Red, Silver', 4),

        ('Dallas Cowboys', 'Arlington, TX', 'Navy Blue, Metallic Silver, White', 5),
        ('New York Giants', 'East Rutherford, NJ', 'Royal Blue, Red, White', 5),
        ('Philadelphia Eagles', 'Philadelphia, PA', 'Midnight Green, Silver, Black, White', 5),
        ('Washington Commanders', 'Landover, MD', 'Burgundy and Gold with White accents.', 5),

        ('Chicago Bears', 'Chicago, IL', 'Navy Blue and Orange with White accents.', 6),
        ('Detroit Lions', 'Detroit, MI', 'Honolulu Blue and Silver with White accents.', 6),
        ('Green Bay Packers', 'Green Bay, WI', 'Dark Green and Gold with White accents.', 6),
        ('Minnesota Vikings', 'Minneapolis, MN', 'Purple and Gold with White accents.', 6),

        ('Atlanta Falcons', 'Atlanta, GA', 'Red and Black with White accents.', 7),
        ('Carolina Panthers', 'Charlotte, NC', 'Black and Panther Blue with Silver and White accents.', 7),
        ('New Orleans Saints', 'New Orleans, LA', 'Old Gold and Black with White accents.', 7),
        ('Tampa Bay Buccaneers', 'Tampa Bay, FL', 'Red and Pewter with Black and Orange accents.', 7),

        ('Arizona Cardinals', 'Phoenix, AZ', 'Cardinal Red and Black with White accents.', 8),
        ('Los Angeles Rams', 'Los Angeles, CA', 'Royal Blue and Yellow with White accents.', 8),
        ('San Francisco 49ers', 'San Francisco, CA', 'Red and Gold with White accents.', 8),
        ('Seattle Seahawks','Seattle, WA','College Navy and Action Green with Wolf Grey and White accents.',8);



       




