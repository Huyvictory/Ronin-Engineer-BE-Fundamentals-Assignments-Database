update students
set participated_class = participated_class + 1
where totalScoreTotal >= 5
  and totalScoreMath != 0
  and totalScoreLiterature != 0
  and totalScoreEnglish != 0
  and participated_class < 12;
