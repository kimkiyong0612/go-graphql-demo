-- 元データ(csv)の整合性が一致しないためFKなし
DROP TABLE IF EXISTS company; 
CREATE TABLE company (
    company_cd integer not null,
    rr_cd integer not null,
    company_name varchar,
    company_name_k varchar,
    company_name_h varchar,
    company_name_r varchar,
    company_url varchar,
    company_type integer,
    e_status integer,
    e_sort integer,
    PRIMARY KEY (company_cd)
);
comment on table company is 'company20200619.csv';

DROP TABLE IF EXISTS line; 
CREATE TABLE line (
    line_cd integer not null,
    company_cd integer not null,
    line_name varchar,
    line_name_k varchar,
    line_name_h varchar,
    line_color_c varchar,
    line_color_t varchar,
    line_type varchar,
    lon float,
    lat float,
    zoom integer,
    e_status integer,
    e_sort integer,
    PRIMARY KEY (line_cd)
    -- FOREIGN KEY (company_cd) REFERENCES company(company_cd)
);
comment on table line is 'line20210312free.csv';


DROP TABLE IF EXISTS station; 
CREATE TABLE station
(
    station_cd integer not null,
    station_g_cd integer not null,
    station_name varchar not null,
    station_name_k varchar,
    station_name_r varchar,
    line_cd integer,
    pref_cd integer,
    post varchar,
    address varchar,
    lon float,
    lat float,
    open_ymd varchar ,
    close_ymd varchar,
    e_status integer,
    e_sort integer,
    PRIMARY KEY (station_cd)
    -- FOREIGN KEY(line_cd) REFERENCES line(line_cd)
);
comment on table station is 'station20210312free.csv';


DROP TABLE IF EXISTS "join"; 
CREATE TABLE "join" (
    line_cd integer not null,
    station_cd1 integer not null,
    station_cd2 integer not null
    -- FOREIGN KEY (line_cd) REFERENCES line(line_cd)
    -- FOREIGN KEY (station_cd1) REFERENCES station(station_cd),
    -- FOREIGN KEY (station_cd2) REFERENCES station(station_cd)
);
comment on table "join" is 'join20210312.csv';

