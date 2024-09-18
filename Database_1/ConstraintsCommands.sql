ALTER TABLE students
    ADD CONSTRAINT chk_participated_class CHECK (participated_class >= 1 AND participated_class <= 12);
