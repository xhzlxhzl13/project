--회원가입
CREATE TABLE board_join (
	id VARCHAR2(20) constraint PK_board_join primary key, /* ���̵� */
	passwd VARCHAR2(20) NOT NULL, /* ��й�ȣ */
	email VARCHAR2(20) NOT NULL, /* �̸��� */
	name VARCHAR2(20) NOT NULL, /* �̸� */
	nick VARCHAR2(20), /* �г��� */
	phone VARCHAR2(20) NOT NULL, /* ��ȭ��ȣ */
	portrait VARCHAR2(20), /* �ʻ�ȭ */
	grade VARCHAR2(20), /* ��� */
	major VARCHAR2(20) /* Ȱ���о� */
);

drop table board_join purge;


--게시판
create table board(
  id varchar2(20) constraint FK_board_join references board_join, /* board_join���̺� id�� ���� */
  no number(20) constraint PK_board primary key,
  content varchar2(2000) not null,
  readcount varchar2(20),
  file_upload varchar2(20),
  nick varchar2(20) not null,
  section varchar2(20),
  write_date varchar2(20)
);

drop table board purge;



/* ��� */
CREATE TABLE reply (
	id VARCHAR2(20) not null, /* ���̵� */
	no NUMBER(20) constraint FK_board references board(no), /* no */
	reply VARCHAR2(200), /* ��� */
	nick VARCHAR2(20), /* �г��� */
	re_ref VARCHAR2(20), /* ref */
	re_step VARCHAR2(20), /* step */
	re_level VARCHAR2(20) /* level */
);


/* ��õ */
CREATE TABLE good_bad (
	id VARCHAR2(20) NOT NULL, /* ���̵� */
	no NUMBER(20) constraint good_bad_board_FK references board(no), /* no */
	good VARCHAR2(20), /* ��õ */
	bad VARCHAR2(20) /* ����õ */
);

select * from tab;

