BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "sobre" (
	"cod_usuario"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"idade"	TEXT NOT NULL,
	"telefone"	INTEGER NOT NULL,
	"email"	TEXT NOT NULL,
	"endereco"	TEXT NOT NULL,
	FOREIGN KEY("cod_usuario") REFERENCES "carreira"("cod_usuario"),
	PRIMARY KEY("cod_usuario" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "caracteristicas" (
	"cod_usuario"	INTEGER NOT NULL,
	"idiomas"	TEXT NOT NULL,
	"habilidades"	TEXT NOT NULL,
	PRIMARY KEY("cod_usuario" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "carreira" (
	"cod_usuario"	integer NOT NULL,
	"faculdade"	char(128) NOT NULL,
	"curso"	integer(11) NOT NULL,
	"data_inicio"	char(10) NOT NULL,
	"profissao_futura"	TEXT,
	PRIMARY KEY("cod_usuario" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "projeto" (
	"cod_projeto"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"data_inicio"	NUMERIC NOT NULL,
	"data_fim"	NUMERIC NOT NULL,
	PRIMARY KEY("cod_projeto")
);
INSERT INTO "sobre" VALUES (1,'Luiz Fernando Haddad Saad Villaça Leão','18 anos',11973350403,'luiz.leao@sou.inteli.edu.br','Rua ABC, 123');
INSERT INTO "caracteristicas" VALUES (1,'Inglês avançado (leitura, escrita e conversação) e alemão intermediário','Colaboração e comprometimento');
INSERT INTO "carreira" VALUES (1,'INTELI','Engenharia da Computação','2023-30-01','Engenheiro da Computação');
INSERT INTO "projeto" VALUES (1,'Desenvolvimento de jogo digital','2023-30-01','2023-06-04');
INSERT INTO "projeto" VALUES (2,'Elaboração de aplicação para ambiente web','2023-17-04','2023-23-06');
COMMIT;
