create table students
(
    id                   int primary key auto_increment,
    fullname             nvarchar(200),
    age                  int,
    totalScoreMath       double(2, 1) default 0,
    totalScoreLiterature double(2, 1) default 0,
    totalScoreEnglish    double(2, 1) default 0,
    totalScoreTotal      double(2, 1) default 0,
    participated_class   int(2),
    created_at           timestamp,
    updated_at           timestamp
);