--USERS
INSERT INTO USER (USERNAME, PASSWORD, ENABLED) VALUES ('admin@gmail.com','12345678',TRUE);
INSERT INTO USER (USERNAME, PASSWORD, ENABLED) VALUES ('user@gmail.com','12345678',TRUE);

--AUTHORITIES
INSERT INTO AUTHORITIES (USERNAME,AUTHORITY) VALUES ('admin@gmail.com','ROLE_ADMIN');
INSERT INTO AUTHORITIES (USERNAME,AUTHORITY) VALUES ('user@gmail.com','ROLE_USER');




