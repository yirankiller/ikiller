mysqldump -d --opt flower -u root -p root > 20141031.flower.s.sql;
mysqldump -t flower -u root -p > 20141031.flower.data.sql;
mysqldump flower -u root -p > 20141031.flower.data.s.sql;