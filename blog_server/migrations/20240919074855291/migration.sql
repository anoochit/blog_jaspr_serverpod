BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "post" (
    "id" bigserial PRIMARY KEY,
    "title" text NOT NULL,
    "content" text NOT NULL,
    "created" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);


--
-- MIGRATION VERSION FOR blog
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('blog', '20240919074855291', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240919074855291', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
