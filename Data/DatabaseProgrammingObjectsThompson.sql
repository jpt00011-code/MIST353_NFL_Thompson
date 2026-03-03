use MIST353_NFL_RDB_Thompson;
GO

CREATE or ALTER PROCEDURE procGetTeamsByConferenceDivision
(
 @Conference NVARCHAR(50),
    @Division NVARCHAR(50)
)
AS 
BEGIN
    select TeamName, TeamColors, Conference, Division
    from Team t
    inner join ConferenceDivision c
    on t.ConferenceDivisionID = c.ConferenceDivisionID
    where c.Conference = @Conference
    and c.Division = @Division
END
GO

