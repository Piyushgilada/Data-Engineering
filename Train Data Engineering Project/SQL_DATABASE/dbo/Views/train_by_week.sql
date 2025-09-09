-- Auto Generated (Do not modify) 2505DEF691D20A9CB11FFB583F8FDB5F6051F87D57FE3A776EF2E4314D3EB397
CREATE VIEW [dbo].[train_by_week] AS (SELECT 
    days,
    COUNT(*) AS TrainCount
FROM Railway_info
GROUP BY days)