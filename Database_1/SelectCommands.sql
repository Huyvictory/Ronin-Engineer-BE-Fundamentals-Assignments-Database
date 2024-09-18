# all students
select *
from students;

# list of participated classes of all students
select distinct participated_class as class
from students
order by class;

# Number of students in table
select count(*) as number_of_students
from students;

# Number of students in each class
select participated_class as class, count(*) as number_of_students
from students
group by participated_class
order by class;

# Calculate sum of every subject score of all students
select sum(totalScoreMath)       as total_math_all_students,
       sum(totalScoreLiterature) as total_literature_all_students,
       sum(totalScoreEnglish)    as total_english_all_students
from students;

# Calculate avg of every subject score of all students
select avg(totalScoreMath)       as avg_math_all_students,
       avg(totalScoreLiterature) as avg_literature_all_students,
       avg(totalScoreEnglish)    as avg_english_all_students
from students;

# Find the maximum score of every subject in every class
select participated_class        as class,
       max(totalScoreMath)       as max_math,
       max(totalScoreLiterature) as max_literature,
       max(totalScoreEnglish)    as max_english
from students
group by participated_class
order by class;

# Find the minimum score of every subject in every class
select participated_class        as class,
       min(totalScoreMath)       as min_math,
       min(totalScoreLiterature) as min_literature,
       min(totalScoreEnglish)    as min_english
from students
group by participated_class
order by class;

# Find the student with full name that starts with 'A'
select *
from students
where fullname like 'A%';

# Find the student that has the math score of 9 or 10
select *
from students
where totalScoreMath = 9
   or totalScoreMath = 10;

# Get the total highest score and student count of each class
SELECT participated_class,
       COUNT(*)             AS student_count,
       MAX(totalScoreTotal) AS highest_score
FROM students
GROUP BY participated_class
ORDER BY highest_score DESC;

# Find the top 5 students with the highest total score
select *
from students
order by totalScoreTotal desc
limit 5;

# Find the student with the literature score of 8 and higher and the english score less than 6
select *
from students
where totalScoreLiterature >= 8
  and totalScoreEnglish < 6;

# Find the students with the math score less than 5 or the total score less than 10
select *
from students
where totalScoreMath < 5
   or totalScoreTotal < 10;

# Find the students that qualified for class promotion
select *
from students
where totalScoreTotal >= 5
  and totalScoreMath != 0
  and totalScoreLiterature != 0
  and totalScoreEnglish != 0
  and participated_class < 12;