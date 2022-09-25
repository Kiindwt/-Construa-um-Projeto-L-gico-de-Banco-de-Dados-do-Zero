-- Inserir dados dos clientes
-- select * from cliente;
insert into Cliente (TipoPessoa,Documento,Nome,Endereco,Telefone,Email) values ('PF','17627864241','Julio','Rua Roxo 85 - Cidade das cores','11953434464','julio@gmail.com');
insert into Cliente (TipoPessoa,Documento,Nome,Endereco,Telefone,Email) values ('PF','34517864241','Jose','Rua Roxo 85 - Cidade das cores','1178456678','Jose@gmail.com');
insert into Cliente (TipoPessoa,Documento,Nome,Endereco,Telefone,Email) values ('PF','24510263441','Kevin','Rua Roxo 85 - Cidade das cores','1178526678','Kevin@gmail.com');
insert into Cliente (TipoPessoa,Documento,Nome,Endereco,Telefone,Email) values ('PF','27517524131','Joao','Rua Roxo 85 - Cidade das coress','1178476678','joao@gmail.com');
insert into Cliente (TipoPessoa,Documento,Nome,Endereco,Telefone,Email) values ('PJ','4761792547172','Pedro','Rua Roxo 85 - Cidade das cores','1178456878','Pedro@gmail.com');
insert into Cliente (TipoPessoa,Documento,Nome,Endereco,Telefone,Email) values ('PJ','2478792514462','Francisco','Rua Roxo 85 - Cidade das cores','1124456678','francisco@gmail.com');

-- Inserir StatusOrdemServico
-- select * from StatusOrdemServico;

INSERT INTO StatusOrdemServico (Identificacao) VALUES ('EM ANDAMENTO');
INSERT INTO StatusOrdemServico (Identificacao) VALUES ('PAUSADO');
INSERT INTO StatusOrdemServico (Identificacao) VALUES ('EM ABERTO');
INSERT INTO StatusOrdemServico (Identificacao) VALUES ('CANCELADO');
INSERT INTO StatusOrdemServico (Identificacao) VALUES ('CONCLUÍDO');

-- Inserir dados da ordem de serviço
-- select * from ordemservico;

INSERT INTO OrdemServico (idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, Obs) VALUES (1, 3, '1000', '2022-09-20', null, 450, null);
INSERT INTO OrdemServico (idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, Obs) VALUES (2, 1, '1001', '2022-09-21', null, 200, null);
INSERT INTO OrdemServico (idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, Obs) VALUES (3, 2, '1002', '2022-09-21', null, 100, null);
INSERT INTO OrdemServico (idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, Obs) VALUES (4, 5, '1003', '2022-09-22', null, 250, null);
INSERT INTO OrdemServico (idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, Obs) VALUES (5, 4, '1004', '2022-09-23', null, 300, null);

-- Inserir dados das Marcas dos Veiculos
-- select * from Marca;
INSERT INTO Marca (Identificacao) VALUES ('BMW');
INSERT INTO Marca (Identificacao) VALUES ('HONDA');
INSERT INTO Marca (Identificacao) VALUES ('JEEP');
INSERT INTO Marca (Identificacao) VALUES ('NISSAN');

-- Inserir Modelo dos carros 
-- select * from Modelo;
INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (1, 'BMW 250i', 2012);
INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (1, 'HONDA Civic', 2020);
INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (2, 'JEEP Renegade', 2018);
INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (3, 'NISSAN Kicks ', 2017);

-- Inserir Equipes de Trabalho
-- select * from Equipe;

INSERT INTO Equipe (Identificacao) VALUES ('Funilaria');
INSERT INTO Equipe (Identificacao) VALUES ('Pintura');
INSERT INTO Equipe (Identificacao) VALUES ('Eletrica');
INSERT INTO Equipe (Identificacao) VALUES ('Mecanica');
INSERT INTO Equipe (Identificacao) VALUES ('Troca de Oleo');

-- Inserir Status do Serviço
-- select * from StatusServico;

INSERT INTO StatusServico (Identificacao) VALUES ('CONCLUIDO');
INSERT INTO StatusServico (Identificacao) VALUES ('CANCELADO');
INSERT INTO StatusServico (Identificacao) VALUES ('AGUARDANDO CLIENTE');
INSERT INTO StatusServico (Identificacao) VALUES ('TRIAGEM');
INSERT INTO StatusServico (Identificacao) VALUES ('AGUARDANDO TROCA DE PEÇA');
INSERT INTO StatusServico (Identificacao) VALUES ('SERVICO INICIADO');

-- Inserir TabelaServico
-- select * from TabelaServico;
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Troca de lampada do farol', 25);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Troca do motor', 1800);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Alinhamento', 80);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Troca de pneu', 300);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Pintura geral', 3200);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Troca de Oleo', 150);

-- Inserir Veiculo
-- select * from Veiculo;

INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (1, 1,'Prata','MVH0606');
INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (1, 2, 'Vermelho', 'MDY9537');
INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (3, 3, 'Preto', 'HPS1968');


-- Inserir Servicos Realizados
-- select * from Servico;
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (1, 1, 1, 1, 'Trocar Pneu', 0, 50, '2022-09-20', '2022-09-20');
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (2, 2, 2, 2, 'Instalar som', 1500, 250, '2022-09-21', '2022-09-21');
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (3, 3, 3, 3, 'Trocar Setas', 1000, 300, '2022-09-22', '2022-09-22');
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (4, 4, 4, 4, 'Refazer motor', 100, 1000, '2022-09-22', '2022-09-23');

-- Inserir Especialidade dos servicos
-- select * from Especialidade;
INSERT INTO Especialidade (Identificacao) VALUES ('Trocar Pneu');
INSERT INTO Especialidade (Identificacao) VALUES ('Pintar');
INSERT INTO Especialidade (Identificacao) VALUES ('Lixar');
INSERT INTO Especialidade (Identificacao) VALUES ('Mecanica Hidráulico');
INSERT INTO Especialidade (Identificacao) VALUES ('Instalar som');
INSERT INTO Especialidade (Identificacao) VALUES ('Ar Condicionado');


-- Inserir Mecanico
-- select * from Mecanico;
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, Endereco) VALUES (1, 1, '001', 'Lucas', 'Rua AZUL');
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, Endereco) VALUES (2, 2, '002', 'Nivaldo', 'Rua VERMELHO');
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, Endereco) VALUES (3, 3, '003', 'Jeferson', 'Rua ROSA');
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, Endereco) VALUES (4, 4, '004', 'Roberto', 'Rua ROXO');


-- Inserir as Pecas
-- select * from Peca;
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Tinta Galão', 150);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Pneu', 450);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Lâmpada do farol', 30);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Ar condicionado completo', 1000);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Óloe 1lt', 40);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Filtro de óleo', 50);



-- Inserir as ServicoPeca
-- select * from ServicoPeca;
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (1, 1, 50);
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (2, 2, 50);
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (3, 3, 50);
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (4, 4, 50);