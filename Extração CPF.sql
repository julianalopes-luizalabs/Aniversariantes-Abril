

--Extra��o CPF
DECLARE @QUERY VARCHAR(MAX)			= 'SELECT CPF
									   FROM JOBS..ANIVERSARIANTES_MAR2018
									   WHERE FlagControle = ''n'''
DECLARE @LAYOUT		VARCHAR(255)	= 'Base_CPF_Aniversariantes_Marco'
DECLARE @CAMINHO	VARCHAR(255)	= '\\fssp\marketdata\Dados\DBM\Aniversariantes\2018\03 - Mar�o\Arquivos\Bases CPF\'
EXEC MAGAZINELUIZA.DBO.EXPORTBCP @QUERY,	@CAMINHO,	@LAYOUT, 0,	'TXT',	'|',	1	


--Extra��o N�mero + 3 �ltimos d�gitos do CPF
GO
DECLARE @QUERY VARCHAR(MAX)			= 'SELECT CelularTratado PHONE, SUBSTRING(CPF, 9, 3) CPF
									   FROM JOBS..ANIVERSARIANTES_MAR2018
									   WHERE FlagControle = ''n'''
DECLARE @LAYOUT		VARCHAR(255)	= 'Base_Cel_3_ultimos_digitos_CPF_Aniversariantes'
DECLARE @CAMINHO	VARCHAR(255)	= '\\fssp\marketdata\Dados\DBM\Aniversariantes\2018\03 - Mar�o\Arquivos\Bases CPF\'
EXEC MAGAZINELUIZA.DBO.EXPORTBCP @QUERY,	@CAMINHO,	@LAYOUT, 0,	'TXT',	'|',	1	

/*
Ju, Obrigada!

Para a base que tem celular e �ltimos 3 d�gitos de CPF, vc consegue gerar de novo,
s� deixando as pessoas que fazem aniver de 12 a 31/03?

Bjs! Tks!
*/

DECLARE @QUERY VARCHAR(MAX)			= 'SELECT CelularTratado PHONE, SUBSTRING(CPF, 9, 3) CPF
									   FROM JOBS..ANIVERSARIANTES_MAR2018
									   WHERE FlagControle = ''n'' and aniversario between ''2018-03-12'' and ''2018-03-31'''
DECLARE @LAYOUT		VARCHAR(255)	= 'Base_Cel_3_ultimos_digitos_CPF_Aniversariantes_12-03_a_31-03'
DECLARE @CAMINHO	VARCHAR(255)	= '\\fssp\marketdata\Dados\DBM\Aniversariantes\2018\03 - Mar�o\Arquivos\Bases CPF\'
EXEC MAGAZINELUIZA.DBO.EXPORTBCP @QUERY,	@CAMINHO,	@LAYOUT, 0,	'TXT',	'|',	1	

