BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "sobre" (
	"cod_usuario"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"idade"	TEXT NOT NULL,
	"telefone"	INTEGER NOT NULL,
	"email"	TEXT NOT NULL,
	"endereco"	TEXT NOT NULL,
	PRIMARY KEY("cod_usuario" AUTOINCREMENT),
	FOREIGN KEY("cod_usuario") REFERENCES "carreira"("cod_usuario")
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
INSERT INTO "sobre" VALUES (1,'luiz fernando haddad saad villaca leao','18 anos',11973350403,'luiz.leao@sou.inteli.edu.br','rua abc, 123');
INSERT INTO "caracteristicas" VALUES (1,'ingles avancado (leitura, escrita e conversação) e alemao intermediario','Colaboracao e comprometimento');
INSERT INTO "carreira" VALUES (1,'inteli','engenharia da computacao','2023-30-01','engenheiro da computacao');
INSERT INTO "projeto" VALUES (1,'desenvolvimento de jogo digital','2023-30-01','2023-06-04');
INSERT INTO "projeto" VALUES (2,'elaboração de aplicação para ambiente web','2023-17-04','2023-23-06');
COMMIT;
