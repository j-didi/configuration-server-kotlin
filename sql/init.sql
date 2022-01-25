USE master;
CREATE DATABASE ConfigServer;
GO

USE ConfigServer;

CREATE TABLE properties
(
    [id]            uniqueidentifier not null constraint properties_pk primary key,
    [created_on]     datetime2       not null,
    [application]   varchar(255)    not null,
    [profile]       varchar(255)    not null,
    [label]         varchar(255)    not null,
    [key]           varchar(255)    not null,
    [value]         varchar(255)    not null
);

INSERT INTO properties
([id], [created_on], [application], [profile], [label], [key], [value])
VALUES
    (NEWID(), GETDATE(), 'configserver', 'dev', 'main', 'email', 'didi.silva.dev@gmail.com'),
    (NEWID(), GETDATE(), 'configserver', 'dev', 'main', 'name', 'Jefferson Didi Silva');