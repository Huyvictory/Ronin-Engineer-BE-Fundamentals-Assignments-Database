create table students
(
    id                   int primary key auto_increment,
    fullname             nvarchar(200),
    age                  int,
    totalScoreMath       double(3, 1) default 0,
    totalScoreLiterature double(3, 1) default 0,
    totalScoreEnglish    double(3, 1) default 0,
    totalScoreTotal      double(3, 1) default 0,
    participated_class   int(2),
    created_at           timestamp,
    updated_at           timestamp
);