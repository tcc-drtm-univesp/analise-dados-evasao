CREATE VIEW ODS.VW_ODS_MUNICICIPIO_CAPITAL
AS 
SELECT NO_MUNICIPIO,	SG_UF

	FROM 
		(VALUES 
			('Rio Branco',	'Acre'),
			('Maceió',	'Alagoas'),
			('Macapá',	'Amapá'),
			('Manaus',	'Amazonas'),
			('Salvador',	'Bahia'),
			('Fortaleza',	'Ceará'),
			('Brasília',	'Distrito Federal'),
			('Vitória',	'Espírito Santo'),
			('Goiânia',	'Goiás'),
			('São Luís',	'Maranhão'),
			('Cuiabá',	'Mato Grosso'),
			('Campo Grande',	'Mato Grosso do Sul'),
			('Belo Horizonte',	'Minas Gerais'),
			('Belém',	'Pará'),
			('João Pessoa',	'Paraíba'),
			('Curitiba',	'Paraná'),
			('Recife',	'Pernambuco'),
			('Teresina',	'Piauí'),
			('Rio de Janeiro',	'Rio de Janeiro'),
			('Natal',	'Rio Grande do Norte'),
			('Porto Alegre',	'Rio Grande do Sul'),
			('Porto Velho',	'Rondônia'),
			('Boa Vista',	'Roraima'),
			('Florianópolis',	'Santa Catarina'),
			('São Paulo',	'São Paulo'),
			('Aracaju',	'Sergipe'),
			('Palmas',	'Tocantins')
		) AS capitais (NO_MUNICIPIO,	SG_UF)

