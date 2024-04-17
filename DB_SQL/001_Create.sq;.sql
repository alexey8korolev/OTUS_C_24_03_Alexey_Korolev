-- Database: Otus

-- DROP DATABASE IF EXISTS "Otus";

-- Role: "Otus_AlexeyK"
-- DROP ROLE IF EXISTS "Otus_AlexeyK";

DO $$
BEGIN

IF not Exists(select * from pg_roles where rolname='lOtus') then
	CREATE ROLE "lOtus" WITH
	  LOGIN
	  SUPERUSER
	  INHERIT
	  CREATEDB
	  CREATEROLE
	  REPLICATION
	  BYPASSRLS
	  ENCRYPTED PASSWORD 'md5f5a624c66f55ba8eb9b31a8faa0cbedb';
END IF; 

	


END
$$