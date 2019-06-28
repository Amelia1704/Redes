create table usuario (
  id serial NOT NULL unique primary key,
  nombre varchar(30) NOT NULL,
  clave varchar(30) NOT NULL
);

create table amigo(
   id serial NOT NULL unique primary key,
   nombre varchar(30) NOT NULL,
   fk_usuario integer,
   constraint fk_usuario foreign key(fk_usuario) references usuario(id)
);

create table chat(
   id serial NOT NULL unique primary key,
   mensaje varchar(200) NOT NULL,
   destino integer,
   notificacion integer NOT NULL,
   tiempo timestamp NOT NULL,
   constraint notificacion check(notificacion IN(0,1)),
   constraint destino foreign key(destino) references usuario(id)
);