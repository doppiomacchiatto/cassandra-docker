CREATE KEYSPACE IF NOT EXISTS tweety
WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };