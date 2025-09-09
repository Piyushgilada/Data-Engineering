-- Auto Generated (Do not modify) 8E11BEF4966E2FF6F5E8A4D8502CA61FA17BEF6DA181E3D70A0CF8FBA5CBE2F1
CREATE VIEW [dbo].[No_of_trains_by_source_station] AS (SELECT 
    Source_Station_Name,
    COUNT(*) AS TrainCount
FROM Railway_info
GROUP BY Source_Station_Name)