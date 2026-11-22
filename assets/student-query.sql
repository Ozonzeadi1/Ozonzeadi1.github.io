-- Analysing International Students' Mental Health
-- Average depression (PHQ-9), social connectedness (SCS) and
-- acculturative stress (ASISS) scores for international students,
-- grouped by length of stay in years.

SELECT stay,
       COUNT(*)               AS count_int,
       ROUND(AVG(todep), 2)   AS average_phq,
       ROUND(AVG(tosc), 2)    AS average_scs,
       ROUND(AVG(toas), 2)    AS average_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC;
