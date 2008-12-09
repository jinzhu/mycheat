= User:
== Create User:
  CREATE USER 'user1'@'localhost' IDENTIFIED BY 'pass1';

  GRANT SELECT,INSERT,UPDATE,DELETE ON *.* TO 'user1'@'localhost';

  GRANT ALL ON *.* TO 'user1'@'localhost';
 
  INSERT INTO user (Host,User,Password,Select_priv,Insert_priv) VALUES('localhost','user4',PASSWORD('pass3'),'Y','Y');
   
    
