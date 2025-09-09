-- Auto Generated (Do not modify) 3EE1061C5B5B88B42F040A5BAB3DB111B1A071FBB01E700422EF7A5A59446927
CREATE VIEW [dbo].[Avg_train_by_source_station] AS (SELECT 
    Source_Station_Name,
    AVG(DailyTrainCount) AS Avg_Trains_Per_Day
FROM (
    SELECT 
        Source_Station_Name,
        days,
        COUNT(*) AS DailyTrainCount
    FROM Railway_info
    GROUP BY Source_Station_Name, days
) t
GROUP BY Source_Station_Name)