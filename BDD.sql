create table if not exists COLOR (
  COLOR_ID INT not null AUTO_INCREMENT, 
  COLOR_NOM varchar (50) not null, 
  primary key (COLOR_ID) 
  );
  

create table if not exists ESPECIE( 
ESP_ID INT not null AUTO_INCREMENT,
 ESP_NOM varchar (50) not null,
 primary key (ESP_ID) 
 );


create table if not exists ANIMALES ( 
ANI_ID INT auto_increment not null , 
ANI_NOM varchar (50) not null , 
ANI_COL_ID int not null, 
ANI_ESP_ID int not null, 
primary key (ANI_ID),
 foreign key (ANI_COL_ID) references COLOR(COLOR_ID),
 foreign key (ANI_ESP_ID) references ESPECIE (ESP_ID)  
 );
 
 
INSERT INTO ANIMALES (ANI_ID,ANI_NOM, ANI_COL_ID , ANI_ESP_ID ) VALUES (null,'GATO', 2,1);
INSERT INTO ANIMALES (ANI_ID,ANI_NOM, ANI_COL_ID , ANI_ESP_ID ) VALUES (null,'PERRO', 1,1);
INSERT INTO ANIMALES (ANI_ID,ANI_NOM, ANI_COL_ID , ANI_ESP_ID ) VALUES (null,'VACA', 6,1);
INSERT INTO ANIMALES (ANI_ID,ANI_NOM, ANI_COL_ID , ANI_ESP_ID ) VALUES (null,'PALOMA', 2,3);
INSERT INTO ANIMALES (ANI_ID,ANI_NOM, ANI_COL_ID , ANI_ESP_ID ) VALUES (null,'BOA', 2,3);


UPDATE ANIMALES SET ANI_NOM='PYTON' WHERE ANI_ID=5;
DELETE FROM ANIMALES WHERE ANI_ID=4