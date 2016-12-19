/*----------------------------------------
 * CREATE DATABASE
 *----------------------------------------*/
CREATE DATABASE Chat;
USE Chat;

/*----------------------------------------
 * CREATE TABLE
 *----------------------------------------*/
/**
 * UserInfo Table
 */
CREATE TABLE UserInfo(
    uid           int,
    loginID       varchar(32) NOT NULL,    /* NULL禁止 */
    password      varchar(16) NOT NULL,   /* NULL禁止 */
    dispname      varchar(32),
    del_flag      boolean DEFAULT false,
    lastlogin_date datetime,
    PRIMARY KEY(uid)
);

/**
 * Log Table
 */
CREATE TABLE Log(
    lid           int,
    uid           int,
    dispname      varchar(32),
    message       varchar(255),
    del_flag      boolean DEFAULT false,
    log_date      datetime,
    PRIMARY KEY(lid)
);

/*
* Stamp Table
*/

CREATE TABLE Stamp(
  sid           int,
  fileName      varchar(64),
  PRIMARY KEY(sid)
);



/*----------------------------------------
 * INSERT
 *----------------------------------------*/
/**
 * User
 */
INSERT INTO UserInfo(uid, loginID, password , dispname,del_flag, lastlogin_date)
VALUES (0, 'SysOp', 'SysOp', 'SysOp', false, now()),
       (1, 'tom', 'nosushinolife', 'GOD', false, now()),
       (2, 'mike', 'apple2016', 'Taro', false, now()),
       (3, 'mary', 'c@ndyclash', 'Yoko', false, now());
