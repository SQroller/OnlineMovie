CREATE TABLE "Users" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar(50),
  "email" varchar(100),
  "password" varchar(255),
  "date_registered" timestamp
);
//dsadasdasd6к5екгекгекгшк8ш5к858
CREATE TABLE "Movies" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "title" varchar(100),
  "description" text,
  "genre" varchar(50),
  "duration" int,
  "release_date" date,
  "rating" float,
  "poster" varchar(255)
);
// вырджвырьвыр

CREATE TABLE "Rentals" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "user_id" int,
  "movie_id" int,
  "start_date" timestamp,
  "end_date" timestamp,
  "rental_price" float
);
// выпвы
CREATE TABLE "Purchases" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "user_id" int,
  "movie_id" int,
  "price" float,
  "purchase_date" timestamp
);

CREATE TABLE "Reviews" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "user_id" int,
  "movie_id" int,
  "rating" float,
  "comment" text,
  "review_date" timestamp
);

ALTER TABLE "Rentals" ADD FOREIGN KEY ("user_id") REFERENCES "Users" ("id");

ALTER TABLE "Rentals" ADD FOREIGN KEY ("movie_id") REFERENCES "Movies" ("id");

ALTER TABLE "Purchases" ADD FOREIGN KEY ("user_id") REFERENCES "Users" ("id");

ALTER TABLE "Purchases" ADD FOREIGN KEY ("movie_id") REFERENCES "Movies" ("id");

ALTER TABLE "Reviews" ADD FOREIGN KEY ("user_id") REFERENCES "Users" ("id");

ALTER TABLE "Reviews" ADD FOREIGN KEY ("movie_id") REFERENCES "Movies" ("id");