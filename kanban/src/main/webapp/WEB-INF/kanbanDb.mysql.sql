create table dashboard(
	id varchar(64) not null unique primary KEY,
	authorId varchar(64) not null,
	name varchar(255) not null default '', 
	position int not null default 0
);

create table dashboardContent(
	id varchar(64) not null unique primary KEY,
	dashboardId varchar(64) not null ,
	authorId varchar(64) not null,
	position int not null default 0,
	text text not null 
);

create table users(
	id varchar(64) not null unique primary KEY,
	name varchar(255) not null default '', 
	email varchar(255) not null default '',
	password text
);


