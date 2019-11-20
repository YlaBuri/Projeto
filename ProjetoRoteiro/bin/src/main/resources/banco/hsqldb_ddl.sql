

create table enderecos(
id  INTEGER IDENTITY PRIMARY KEY,
cep varchar(9) not null, -- ex: 43700-000
cidade varchar(45) not null,
bairro varchar(45) not null,
rua varchar (45) not null,
numero varchar(4)
);

create table instituicoes(
id  INTEGER IDENTITY PRIMARY KEY,
nome varchar(45) not null,
id_endereco integer,
foreign key(id_endereco) references enderecos(id)
);

create table cursos (
id  INTEGER IDENTITY PRIMARY KEY,
nome varchar(45) not null,
duracao integer not null,
id_instituicao integer,
foreign key (id_instituicao) references instituicoes(id)
);

create table papeis(
id  INTEGER IDENTITY PRIMARY KEY,
codigo varchar(45) not null,
descricao varchar(45) not null
);

create table usuarios(
id  INTEGER IDENTITY PRIMARY KEY,
nome varchar(45) not null,
nome_social varchar(45),
email varchar(45) not null,
cpf varchar(14) not null, -- 111.222.333-00
senha varchar(45) not null,
id_endereco integer,
id_papel integer,
foreign key (id_endereco) references enderecos(id),
foreign key (id_papel) references papeis(id)
);

create table estudantes(
id  INTEGER IDENTITY PRIMARY KEY,
id_curso integer,
id_usuario integer,
foreign key (id_curso) references cursos(id),
foreign key (id_usuario) references usuarios(id)
);

create table onibus(
id  INTEGER IDENTITY PRIMARY KEY,
detalhes varchar(45) not null,
situacao varchar(45) not null,
placa varchar(10) not null
);

create table motoristas(
id  INTEGER IDENTITY PRIMARY KEY,
nome varchar(45) not null,
descricao varchar(45) not null,
situacao varchar(45) not null
);

create table pontos(
id  INTEGER IDENTITY PRIMARY KEY,
descricao varchar(45) not null,
x FLOAT ,
y FLOAT 
);

create table roteiros(
id  INTEGER IDENTITY PRIMARY KEY,
codigo varchar(10) not null,
descricao varchar(45) not null,
tipo varchar(10) not null
);

create table roteiro_ponto(
id  INTEGER IDENTITY PRIMARY KEY,
id_roteiro integer,
id_ponto integer,
foreign key (id_roteiro) references roteiros(id),
foreign key (id_ponto) references pontos(id)
);

create table roteiro_estudante(
id  INTEGER IDENTITY PRIMARY KEY,
id_roteiro integer,
id_estudante integer,
foreign key (id_roteiro) references roteiros(id),
foreign key (id_estudante) references estudantes(id)
);

create table programacao(
id  INTEGER IDENTITY PRIMARY KEY,
dia date,
hora_ida time,
hora_volta time,
id_onibus integer,
id_motorista integer,
id_roteiro integer,
foreign key (id_onibus) references onibus(id),
foreign key (id_motorista) references motoristas(id),
foreign key (id_roteiro) references roteiros(id)
);
