delete from geral.usuarios;
delete from geral.empresas;
delete from "001".notas_fiscais;
delete from "001".produto;
delete from "001".grupo;
delete from "001".unidade;
delete from "001".fornecedor;

insert into geral.empresas (nome, codigo_externo) values ('Empresa de testes', '001');

insert into geral.usuarios (nome, email, senha, id_empresa) values ('Usuário 1', 'user1@test.com', '123', (select id from geral.empresas where codigo_externo = '001'));
insert into geral.usuarios (nome, email, senha, id_empresa) values ('Usuário 2', 'user2@test.com', '321', (select id from geral.empresas where codigo_externo = '001'));

insert into "001".grupo (nome) values ('Comidas');
insert into "001".grupo (nome) values ('Bebidas');
insert into "001".grupo (nome) values ('Sobremesas');
insert into "001".grupo (nome) values ('Insumos');

insert into "001".unidade (nome, unitario) values ('Unidade', true);
insert into "001".unidade (nome, unitario) values ('Quilograma', false);
insert into "001".unidade (nome, unitario) values ('Caixa com 12', false);

insert into "001".fornecedor (nome, cnpj) values ('Fornecedor 1', '97.370.303/0001-38');
insert into "001".fornecedor (nome, cnpj) values ('Fornecedor 2', '86.161.108/0001-81');
insert into "001".fornecedor (nome, cnpj) values ('Fornecedor 3', '87.402.176/0001-58');

insert into "001".produto (nome, id_grupo) values ('Arroz', (select id from "001".grupo where upper(nome) = 'COMIDAS'));
insert into "001".produto (nome, id_grupo) values ('Macarrão', (select id from "001".grupo where upper(nome) = 'COMIDAS'));
insert into "001".produto (nome, id_grupo) values ('Água', (select id from "001".grupo where upper(nome) = 'BEBIDAS'));
insert into "001".produto (nome, id_grupo) values ('Coca-cola', (select id from "001".grupo where upper(nome) = 'BEBIDAS'));
insert into "001".produto (nome, id_grupo) values ('Guaraná Antártica', (select id from "001".grupo where upper(nome) = 'BEBIDAS'));
insert into "001".produto (nome, id_grupo) values ('Petit Gateau', (select id from "001".grupo where upper(nome) = 'SOBREMESAS'));
insert into "001".produto (nome, id_grupo) values ('Brownie', (select id from "001".grupo where upper(nome) = 'SOBREMESAS'));
insert into "001".produto (nome, id_grupo) values ('Detergente', (select id from "001".grupo where upper(nome) = 'INSUMOS'));
insert into "001".produto (nome, id_grupo) values ('Água Sanitária', (select id from "001".grupo where upper(nome) = 'INSUMOS'));
insert into "001".produto (nome, id_grupo) values ('Vassoura', (select id from "001".grupo where upper(nome) = 'INSUMOS'));