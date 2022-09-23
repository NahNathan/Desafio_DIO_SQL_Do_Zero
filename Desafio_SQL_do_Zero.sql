

CREATE TABLE Cliente (
Cliente_Nome int,
Cliente_ID int PRIMARY KEY
)

CREATE TABLE Veiculo (
Veiculo ID int PRIMARY KEY,
Veiculo_Nome varchar,
Cliente_Nome varchar,
Equipe_ID int
)

CREATE TABLE OS (
OS_ID int PRIMARY KEY,
Equipe_ID int,
OS_Servico varchar,
OS_Conclusao date,
OS_Inicio date,
OS_Status varchar,
OS_Valor float
)

CREATE TABLE Peca (
Peca_ID int PRIMARY KEY,
Peca_Valor float,
Peca_Nome varchar
)

CREATE TABLE Mecanico (
Mecanico_ID int PRIMARY KEY,
Mecanico_End varchar,
Mecanico_Nome varchar,
Especialidade varchar,
Equipe_ID int
)

CREATE TABLE Equipe (
Equipe_ID int PRIMARY KEY
)

CREATE TABLE Usa_Peca (
Peca_ID int,
OS_ID int,
FOREIGN KEY(Peca_ID) REFERENCES Peca (Peca_ID),
FOREIGN KEY(OS_ID) REFERENCES OS (OS_ID)
)

CREATE TABLE Cliente_Veiculo (
Veiculo ID int,
Cliente_ID int,
FOREIGN KEY(Veiculo ID) REFERENCES Veiculo (Veiculo ID),
FOREIGN KEY(Cliente_ID) REFERENCES Cliente (Cliente_ID)
)

CREATE TABLE Veiculo_Equipe (
Equipe_ID int,
Veiculo ID int,
FOREIGN KEY(Equipe_ID) REFERENCES Equipe (Equipe_ID),
FOREIGN KEY(Veiculo ID) REFERENCES Veiculo (Veiculo ID)
)

CREATE TABLE Equipe_Mecanico (
Mecanico_ID int,
Equipe_ID int,
FOREIGN KEY(Mecanico_ID) REFERENCES Mecanico (Mecanico_ID),
FOREIGN KEY(Equipe_ID) REFERENCES Equipe (Equipe_ID)
)

CREATE TABLE Equipe_OS (
Equipe_ID int,
OS_ID int,
FOREIGN KEY(OS_ID) REFERENCES OS (OS_ID)
)

