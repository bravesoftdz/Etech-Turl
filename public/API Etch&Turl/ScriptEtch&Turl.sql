/* Script de criação do banco de dados Etch&Turl */

CREATE USER "etch&turl" WITH
	LOGIN
	SUPERUSER
	CREATEDB
	CREATEROLE
	INHERIT
	REPLICATION
	CONNECTION LIMIT -1
	PASSWORD '#etch&turl#';

/* ****************************************************** */
	
CREATE DATABASE "etch&turl"
    WITH 
    OWNER = "etch&turl"
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    CONNECTION LIMIT = -1;

/* ****************************************************** */

CREATE SCHEMA geral
    AUTHORIZATION "etch&turl";

/* ****************************************************** */

CREATE SEQUENCE geral.empresas_id_seq;

ALTER SEQUENCE geral.empresas_id_seq
    OWNER TO "etch&turl";

CREATE TABLE geral.empresas
(
    id integer NOT NULL DEFAULT nextval('geral.empresas_id_seq'::regclass),
    nome character varying(100) COLLATE pg_catalog."default" NOT NULL,
	codigo_externo character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT empresas_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE geral.empresas	
    OWNER to "etch&turl";
	
/* ****************************************************** */

CREATE SEQUENCE geral.usuarios_id_seq;

ALTER SEQUENCE geral.usuarios_id_seq
    OWNER TO "etch&turl";

CREATE TABLE geral.usuarios
(
    id integer NOT NULL DEFAULT nextval('geral.usuarios_id_seq'::regclass),
    nome character varying(100) COLLATE pg_catalog."default" NOT NULL,
	email character varying(100) COLLATE pg_catalog."default" NOT NULL,
	senha character varying(100) COLLATE pg_catalog."default" NOT NULL,
	id_empresa integer NOT NULL,
    CONSTRAINT usuarios_pkey PRIMARY KEY (id),
	CONSTRAINT id_empresa_fkey FOREIGN KEY (id_empresa)
        REFERENCES geral.empresas (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE geral.empresas	
    OWNER to "etch&turl";
	
/* ****************************************************************************** */
/* DESTA PARTE PARA BAIXO, DEVE SER EXECUTADA PARA A CRIAÇÃO DE TODOS OS CLIENTES */
/* ****************************************************************************** */

CREATE SCHEMA "001"
    AUTHORIZATION "etch&turl";

/* ****************************************************** */

CREATE SEQUENCE "001".grupo_id_seq;

ALTER SEQUENCE "001".grupo_id_seq
    OWNER TO "etch&turl";

CREATE TABLE "001".grupo
(
    id integer NOT NULL DEFAULT nextval('"001".grupo_id_seq'::regclass),
    nome character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT grupo_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "001".grupo
    OWNER to "etch&turl";

/* ****************************************************** */

CREATE SEQUENCE "001".fornecedor_id_seq;

ALTER SEQUENCE "001".fornecedor_id_seq
    OWNER TO "etch&turl";

CREATE TABLE "001".fornecedor
(
    id integer NOT NULL DEFAULT nextval('"001".fornecedor_id_seq'::regclass),
    nome character varying(100) COLLATE pg_catalog."default" NOT NULL,
    cnpj character varying(18) COLLATE pg_catalog."default",
    CONSTRAINT fornecedor_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "001".fornecedor
    OWNER to "etch&turl";

/* ****************************************************** */

CREATE SEQUENCE "001".notas_fiscais_id_seq;

ALTER SEQUENCE "001".notas_fiscais_id_seq
    OWNER TO "etch&turl";

CREATE TABLE "001".notas_fiscais
(
    id integer NOT NULL DEFAULT nextval('"001".notas_fiscais_id_seq'::regclass),
    data date NOT NULL,
	id_grupo integer,
    quantidade double precision,
	id_produto integer NOT NULL,
	id_unidade integer,
	observacoes character varying(255) COLLATE pg_catalog."default",
	preco_unitario double precision,
	id_fornecedor integer,
    CONSTRAINT notas_fiscais_pkey PRIMARY KEY (id),
	CONSTRAINT notas_fiscais_id_grupo_fkey FOREIGN KEY (id_grupo)
        REFERENCES "001".grupo (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT notas_fiscais_id_produto_fkey FOREIGN KEY (id_produto)
        REFERENCES "001".produto (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT notas_fiscais_id_unidade_fkey FOREIGN KEY (id_unidade)
        REFERENCES "001".unidade (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT notas_fiscais_id_fornecedor_fkey FOREIGN KEY (id_fornecedor)
        REFERENCES "001".fornecedor (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "001".notas_fiscais
    OWNER to "etch&turl";

/* ****************************************************** */

CREATE SEQUENCE "001".estoque_id_seq;

ALTER SEQUENCE "001".estoque_id_seq
    OWNER TO "etch&turl";

CREATE TABLE "001".estoque
(
    id integer NOT NULL DEFAULT nextval('"001".estoque_id_seq'::regclass),
	mes_ano character varying(10) COLLATE pg_catalog."default" NOT NULL,
	id_produto integer NOT NULL,
    valor_dia_1 double precision,
	valor_dia_2 double precision,
	valor_dia_3 double precision,
	valor_dia_4 double precision,
	valor_dia_5 double precision,
	valor_dia_6 double precision,
	valor_dia_7 double precision,
	valor_dia_8 double precision,
	valor_dia_9 double precision,
	valor_dia_10 double precision,
	valor_dia_11 double precision,
	valor_dia_12 double precision,
	valor_dia_13 double precision,
	valor_dia_14 double precision,
	valor_dia_15 double precision,
	valor_dia_16 double precision,
	valor_dia_17 double precision,
	valor_dia_18 double precision,
	valor_dia_19 double precision,
	valor_dia_20 double precision,
	valor_dia_21 double precision,
	valor_dia_22 double precision,
	valor_dia_23 double precision,
	valor_dia_24 double precision,
	valor_dia_25 double precision,
	valor_dia_26 double precision,
	valor_dia_27 double precision,
	valor_dia_28 double precision,
	valor_dia_29 double precision,
	valor_dia_30 double precision,
	valor_dia_31 double precision,
    CONSTRAINT estoque_pkey PRIMARY KEY (id),
	CONSTRAINT estoque_id_produto_fkey FOREIGN KEY (id_produto)
        REFERENCES "001".produto (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "001".notas_fiscais
    OWNER to "etch&turl";

/* ****************************************************** */

CREATE SEQUENCE "001".kgvendidos_id_seq;

ALTER SEQUENCE "001".kgvendidos_id_seq
    OWNER TO "etch&turl";

CREATE TABLE "001".kgvendidos
(
    id integer NOT NULL DEFAULT nextval('"001".kgvendidos_id_seq'::regclass),
    data date NOT NULL,
    quantidade double precision NOT NULL,
    CONSTRAINT kgvendidos_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "001".kgvendidos
    OWNER to "etch&turl";

/* ****************************************************** */

CREATE SEQUENCE "001".produto_id_seq;

ALTER SEQUENCE "001".produto_id_seq
    OWNER TO "etch&turl";

CREATE TABLE "001".produto
(
    id integer NOT NULL DEFAULT nextval('"001".produto_id_seq'::regclass),
    nome character varying(100) COLLATE pg_catalog."default" NOT NULL,
    id_grupo integer NOT NULL,
    CONSTRAINT produto_pkey PRIMARY KEY (id),
    CONSTRAINT produto_id_grupo_fkey FOREIGN KEY (id_grupo)
        REFERENCES "001".grupo (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "001".produto
    OWNER to "etch&turl";

/* ****************************************************** */

CREATE SEQUENCE "001".unidade_id_seq;

ALTER SEQUENCE "001".unidade_id_seq
    OWNER TO "etch&turl";

CREATE TABLE "001".unidade
(
    unitario boolean NOT NULL,
    nome character varying(50) COLLATE pg_catalog."default" NOT NULL,
    id integer NOT NULL DEFAULT nextval('"001".unidade_id_seq'::regclass),
    CONSTRAINT unidade_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "001".unidade
    OWNER to "etch&turl";

/* ****************************************************** */

CREATE SEQUENCE "001".estrategiacompras_id_seq;

ALTER SEQUENCE "001".estrategiacompras_id_seq
    OWNER TO "etch&turl";

CREATE TABLE "001".estrategiacompras
(
    id integer NOT NULL DEFAULT nextval('"001".estrategiacompras_id_seq'::regclass),
    mes_ano date NOT NULL,
    meta_mensal double precision,
	meta_gastos_percentual double precision,
    CONSTRAINT estrategiacompras_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "001".estrategiacompras
    OWNER to "etch&turl";

/* ****************************************************** */

CREATE SEQUENCE "001".valoresvendas_id_seq;

ALTER SEQUENCE "001".valoresvendas_id_seq
    OWNER TO "etch&turl";

CREATE TABLE "001".valoresvendas
(
    id integer NOT NULL DEFAULT nextval('"001".valoresvendas_id_seq'::regclass),
    data date NOT NULL,
    valor double precision NOT NULL,
    CONSTRAINT valoresvendas_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "001".valoresvendas
    OWNER to "etch&turl";

/* ****************************************************** */

CREATE SEQUENCE "001".faturamentosemanal_id_seq;

ALTER SEQUENCE "001".faturamentosemanal_id_seq
    OWNER TO "etch&turl";

CREATE TABLE "001".faturamentosemanal
(
    id integer NOT NULL DEFAULT nextval('"001".faturamentosemanal_id_seq'::regclass),
    mes_ano date NOT NULL,
    projecao_semana_1 double precision,
    valor_semana_1 double precision,
    projecao_semana_2 double precision,
    valor_semana_2 double precision,
    projecao_semana_3 double precision,
    valor_semana_3 double precision,
    projecao_semana_4 double precision,
    valor_semana_4 double precision,
    projecao_semana_5 double precision,
    valor_semana_5 double precision,
    CONSTRAINT faturamentosemanal_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "001".faturamentosemanal
    OWNER to "etch&turl";

/* ****************************************************** */

CREATE SEQUENCE "001".saida_id_seq;

ALTER SEQUENCE "001".saida_id_seq
    OWNER TO "etch&turl";

CREATE TABLE "001".saida
(
    id integer NOT NULL DEFAULT nextval('"001".saida_id_seq'::regclass),
    data date NOT NULL,
    quantidade double precision NOT NULL,
    id_produto integer NOT NULL,
    CONSTRAINT saida_pkey PRIMARY KEY (id),
    CONSTRAINT saida_id_produto_fkey FOREIGN KEY (id_produto)
        REFERENCES "001".produto (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "001".saida
    OWNER to "etch&turl";

/* ****************************************************** */

CREATE SEQUENCE "001".estrategiacompragrupos_id_seq;

ALTER SEQUENCE "001".estrategiacompragrupos_id_seq
    OWNER TO "etch&turl";

CREATE TABLE "001".estrategiacompragrupos
(
    id integer NOT NULL DEFAULT nextval('"001".estrategiacompragrupos_id_seq'::regclass),
    percentual double precision,
    id_grupo integer NOT NULL,
    id_estrategia_compra integer NOT NULL,
    CONSTRAINT estrategiacompragrupos_pkey PRIMARY KEY (id),
    CONSTRAINT estrategiacompragrupos_id_estrategia_compra_fkey FOREIGN KEY (id_estrategia_compra)
        REFERENCES "001".estrategiacompras (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT estrategiacompragrupos_id_grupo_fkey FOREIGN KEY (id_grupo)
        REFERENCES "001".grupo (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "001".estrategiacompragrupos
    OWNER to "etch&turl";

/* ****************************************************** */

CREATE SEQUENCE "001".metacompra_id_seq;

ALTER SEQUENCE "001".metacompra_id_seq
    OWNER TO "etch&turl";

CREATE TABLE "001".metacompra
(
    id integer NOT NULL DEFAULT nextval('"001".metacompra_id_seq'::regclass),
    id_estrategia_compra integer NOT NULL,
    id_grupo integer NOT NULL,
    valor_semana_1 double precision,
    valor_semana_2 double precision,
    valor_semana_3 double precision,
    valor_semana_4 double precision,
    valor_semana_5 double precision,
    CONSTRAINT metacompra_pkey PRIMARY KEY (id),
    CONSTRAINT metacompra_id_estrategia_compra_fkey FOREIGN KEY (id_estrategia_compra)
        REFERENCES "001".estrategiacompras (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT metacompra_id_grupo_fkey FOREIGN KEY (id_grupo)
        REFERENCES "001".grupo (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "001".metacompra
    OWNER to "etch&turl";

/* ****************************************************** */
	
CREATE SEQUENCE "001".entrada_id_seq;

ALTER SEQUENCE "001".entrada_id_seq
    OWNER TO "etch&turl";

CREATE TABLE "001".entrada
(
    id integer NOT NULL DEFAULT nextval('"001".entrada_id_seq'::regclass),
    data date NOT NULL,
    id_produto integer NOT NULL,
    id_unidade integer NOT NULL,
    id_fornecedor integer NOT NULL,
    quantidade double precision,
    preco_unitario double precision,
    preto_total double precision,
    info_nota text COLLATE pg_catalog."default",
    CONSTRAINT entrada_pkey PRIMARY KEY (id),
    CONSTRAINT entrada_id_fornecedor_fkey FOREIGN KEY (id_fornecedor)
        REFERENCES "001".fornecedor (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT entrada_id_produto_fkey FOREIGN KEY (id_produto)
        REFERENCES "001".produto (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT entrada_id_unidade_fkey FOREIGN KEY (id_unidade)
        REFERENCES "001".unidade (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "001".entrada
    OWNER to "etch&turl";