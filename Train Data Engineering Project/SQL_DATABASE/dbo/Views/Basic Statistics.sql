-- Auto Generated (Do not modify) 513DD6A98692CF37A82D74FEA0DBDA9C72F056B2EFCA01D0B192BB8407E74C6A
CREATE VIEW [dbo].[Basic Statistics] AS (SELECT
    -- Basic stats
    (SELECT COUNT(DISTINCT Train_Name) FROM Railway_info) AS Total_Trains,
    (SELECT COUNT(DISTINCT Source_Station_Name) FROM Railway_info) AS Unique_Source_Stations,
    (SELECT COUNT(DISTINCT Destination_Station_Name) FROM Railway_info) AS Unique_Destination_Stations,

    -- Most common source station
    (SELECT TOP 1 Source_Station_Name
     FROM Railway_info
     GROUP BY Source_Station_Name
     ORDER BY COUNT(*) DESC) AS Most_Common_Source,

    -- Most common destination station
    (SELECT TOP 1 Destination_Station_Name
     FROM Railway_info
     GROUP BY Destination_Station_Name
     ORDER BY COUNT(*) DESC) AS Most_Common_Destination)