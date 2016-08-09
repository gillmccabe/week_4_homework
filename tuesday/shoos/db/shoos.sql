DROP TABLE shoes;

CREATE TABLE shoes (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  address VARCHAR(255),
  shoe_size INT4,
  quantity INT4
);
