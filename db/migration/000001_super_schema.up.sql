CREATE TABLE "teams" (
  "team_id" bigint PRIMARY KEY,
  "name" varchar UNIQUE,
  "ground" varchar,
  "created_at" timestamp NOT NULL DEFAULT (now())
);

--Create Players Table
CREATE TABLE "players" (
  "player_id" bigint UNIQUE PRIMARY KEY,
  "firstname" varchar NOT NULL,
  "lastname" varchar NOT NULL,
  "birthdate" DATE,
  "email" varchar UNIQUE NOT NULL,
  "team_id" bigint NOT NULL,
  "added_on" timestamp NOT NULL DEFAULT (now())
);

--Add the indexes
--Indexes help to uniquely identify a particular player or team
CREATE INDEX ON "teams" ("team_id");

CREATE INDEX ON "teams" ("name");

CREATE INDEX ON "players" ("player_id");

CREATE INDEX ON "players" ("team_id");

CREATE INDEX ON "players" ("email");

ALTER TABLE "players" ADD FOREIGN KEY ("team_id") REFERENCES "teams" ("team_id");