#...67p.DB 생성, 기본 스키마, 사용자(ID: joywins2, PW: tiger)
CREATE DATABASE `zbook_db` DEFAULT CHARACTER SET utf8;

#...126p.
create table ZTBL_MEMBER
(
	 user_id	nvarchar(50)	not null
    ,user_pw	nvarchar(50)	not null
    ,user_name	nvarchar(50)	not null
    ,email		nvarchar(100)
	,reg_date 	TIMESTAMP NOT NULL DEFAULT 0
	,update_date TIMESTAMP DEFAULT now()
	#,update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP    
    ,primary key(user_id)
);

# ...174p.
create table ztbl_board
(
	bno	int not null auto_increment
	,title	varchar(200) not null
	,content text null
	,writer	varchar(50) not null
	,regdate	timestamp not null	default	now()
	#,UPDATEDATE	timestamp	default	now()
	,view_cnt	int default 0
	,primary key(bno)
); 

#...246p.200개 이상만 만들어도 실습에 문제없음.
insert into ztbl_board(title, content, writer)
(select title, content, writer from ztbl_board);
