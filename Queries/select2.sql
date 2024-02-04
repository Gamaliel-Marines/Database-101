SELECT * FROM athletes
WHERE best_time < 60 AND best_event = '100m fly';

SELECT AVG(best_time) AS average_time
FROM athletes
WHERE best_event = '100m free';