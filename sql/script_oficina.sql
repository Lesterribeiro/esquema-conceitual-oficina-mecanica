CREATE TABLE CLIENTE (
  idCliente INT PRIMARY KEY,
  nome VARCHAR(100),
  cpf_cnpj VARCHAR(18),
  telefone VARCHAR(20),
  endereco VARCHAR(150)
);

CREATE TABLE VEICULO (
  idVeiculo INT PRIMARY KEY,
  placa VARCHAR(10),
  modelo VARCHAR(50),
  marca VARCHAR(50),
  ano INT,
  idCliente INT
);

CREATE TABLE EQUIPE (
  idEquipe INT PRIMARY KEY,
  nomeEquipe VARCHAR(50),
  especialidadePrincipal VARCHAR(50)
);

CREATE TABLE MECANICO (
  idMecanico INT PRIMARY KEY,
  codigo VARCHAR(20),
  nome VARCHAR(100),
  endereco VARCHAR(150),
  especialidade VARCHAR(50),
  idEquipe INT
);

CREATE TABLE ORDEM_SERVICO (
  idOS INT PRIMARY KEY,
  numeroOS VARCHAR(20),
  dataEmissao DATE,
  dataEntregaPrevista DATE,
  dataConclusao DATE,
  valorTotal DECIMAL(10,2),
  status VARCHAR(30),
  autorizadaCliente BOOLEAN,
  idVeiculo INT,
  idEquipe INT
);

CREATE TABLE TABELA_SERVICO (
  idServico INT PRIMARY KEY,
  descricaoServico VARCHAR(100),
  valorMaoDeObra DECIMAL(10,2)
);

CREATE TABLE PECA (
  idPeca INT PRIMARY KEY,
  nomePeca VARCHAR(100),
  valorUnitario DECIMAL(10,2),
  estoque INT
);

CREATE TABLE OS_SERVICO (
  idOS INT,
  idServico INT,
  quantidade INT,
  subtotalServico DECIMAL(10,2),
  PRIMARY KEY (idOS, idServico)
);

CREATE TABLE OS_PECA (
  idOS INT,
  idPeca INT,
  quantidade INT,
  subtotalPeca DECIMAL(10,2),
  PRIMARY KEY (idOS, idPeca)
);
