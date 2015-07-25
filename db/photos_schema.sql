DROP TABLE IF EXISTS photos;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS comments;

CREATE TABLE members (
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email_address TEXT,
  age TEXT,
  gender TEXT,
  join_date TIMESTAMP
);

CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  title TEXT,
  photo_url TEXT,
  date_added TIMESTAMP,
  member_id INT REFERENCES members(id)
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  comment_text TEXT,
  date_posted TIMESTAMP,
  member_id INT REFERENCES members(id),
  photo_id INT REFERENCES photos(id)
);
