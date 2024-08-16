-- public." fMatricula" definition

-- Drop table

-- DROP TABLE public." fMatricula";

CREATE TABLE public." fMatricula" (
	id_aluno varchar(25) NULL,
	ano int2 NULL,
	cod_escola int4 NULL,
	tipo_pgto varchar(6) NULL,
	parcelas int2 NULL,
	perc_bolsa int8 NULL,
	perc_desconto int8 NULL,
	eh_default int2 NULL,
	dt_matricula date NULL,
	data_desligamento date NULL,
	id_matricula varchar(39) NULL,
	vlr_mensal numeric(23, 4) NULL,
	vlr_anual numeric(23, 4) NULL,
	cod_serie int2 NULL,
	id_turma varchar(25) NULL,
	matricula_online varchar(3) NULL,
	departamento_curso int4 NULL,
	dt_matricula_real date NULL,
	perc_bols_aa float4 NULL,
	perc_desconto_aa float4 NULL,
	custo_pessoal float4 NULL,
	custo_adm float8 NULL,
	custo_educ float8 NULL,
	custo_outorg float8 NULL,
	outras_receitas float8 NULL,
	inadimplencia float8 NULL,
	unico text NULL
);


-- public." fMatricula_desligado" definition

-- Drop table

-- DROP TABLE public." fMatricula_desligado";

CREATE TABLE public." fMatricula_desligado" (
	id_matricula varchar(39) NULL,
	id_aluno varchar(25) NULL,
	ano int2 NULL,
	cod_escola int4 NULL,
	tipo_pgto varchar(6) NULL,
	parcelas int2 NULL,
	vlr_mensal numeric(23, 4) NULL,
	vlr_anual numeric(23, 4) NULL,
	perc_bolsa int8 NULL,
	perc_desconto int8 NULL,
	eh_default int2 NULL,
	dt_matricula date NULL,
	dt_desligamento date NULL
);


-- public." f_alteracaoboletos" definition

-- Drop table

-- DROP TABLE public." f_alteracaoboletos";

CREATE TABLE public." f_alteracaoboletos" (
	id_matricula varchar(39) NULL,
	id_aluno varchar(25) NULL,
	cod_carne int4 NULL,
	cod_escola int4 NULL,
	cod_aluno int4 NULL,
	tipo varchar(11) NULL,
	parcela int2 NULL,
	data_emissao date NULL,
	data_vencimento date NULL,
	valor numeric(23, 4) NULL,
	data_alteracao date NULL,
	nome_usuario varchar(50) NULL,
	campo varchar(20) NULL
);


-- public." f_alteracaodescontos" definition

-- Drop table

-- DROP TABLE public." f_alteracaodescontos";

CREATE TABLE public." f_alteracaodescontos" (
	id_matricula varchar(51) NULL,
	id_aluno varchar(25) NULL,
	ano int4 NULL,
	cod_escola int4 NULL,
	servico varchar(50) NULL,
	percentual numeric(23, 4) NULL,
	dt_alteracao date NULL,
	usuario varchar(100) NULL
);


-- public.acrm definition

-- Drop table

-- DROP TABLE public.acrm;

CREATE TABLE public.acrm (
	aluno_id int4 NOT NULL,
	aluno_rc int4 NULL,
	aluno_escola text NULL,
	aluno_nome text NULL,
	aluno_genero bpchar(1) NULL,
	origem_lead text NULL,
	aluno_estrangeiro bpchar(1) NULL,
	aluno_nascimento date NULL,
	aluno_naturalidade text NULL,
	aluno_uf_naturalidade bpchar(2) NULL,
	aluno_nacionalidade bpchar(2) NULL,
	aluno_cidade text NULL,
	aluno_uf_cidade bpchar(2) NULL,
	aluno_bairro text NULL,
	aluno_raca text NULL,
	aluno_religiao text NULL,
	filho_funcionario bpchar(1) NULL,
	filho_obreiro bpchar(1) NULL,
	serie_nome text NULL,
	data_matricula timestamp NULL,
	mensalidade_base money NULL,
	bolsa int4 NULL,
	desconto int4 NULL,
	mensalidade money NULL,
	atendente_responsavel text NULL,
	data_lead date NULL,
	status_lead text NULL,
	status_visita text NULL,
	data_visita date NULL,
	entrevistador text NULL,
	ultima_atualizacao date NULL,
	motivo_perda text NULL,
	nome_resp_legal text NULL,
	tel_resp_legal text NULL,
	email_resp_legal text NULL
);


-- public.apiponto_batidas definition

-- Drop table

-- DROP TABLE public.apiponto_batidas;

CREATE TABLE public.apiponto_batidas (
	"Id" int8 NULL,
	"FuncionarioId" int8 NULL,
	"Data" text NULL,
	"Entrada1" text NULL,
	"Saida1" text NULL,
	"Entrada2" text NULL,
	"Saida2" text NULL,
	"Entrada3" text NULL,
	"Saida3" text NULL,
	"Entrada4" text NULL,
	"Saida4" text NULL,
	"Entrada5" text NULL,
	"Saida5" text NULL,
	"MemoriaEntrada1" text NULL,
	"MemoriaSaida1" text NULL,
	"MemoriaEntrada2" text NULL,
	"MemoriaSaida2" text NULL,
	"MemoriaEntrada3" text NULL,
	"MemoriaSaida3" text NULL,
	"MemoriaEntrada4" text NULL,
	"MemoriaSaida4" text NULL,
	"MemoriaEntrada5" text NULL,
	"MemoriaSaida5" text NULL,
	"BancoId" int8 NULL
);


-- public.apiponto_funcionarios definition

-- Drop table

-- DROP TABLE public.apiponto_funcionarios;

CREATE TABLE public.apiponto_funcionarios (
	"Id" int8 NULL,
	"Nome" text NULL,
	"NumeroFolha" int8 NULL,
	"NumeroIdentificador" float8 NULL,
	"NumeroPis" text NULL,
	"Admissao" text NULL,
	"Demissao" text NULL,
	"EmpresaNome" text NULL,
	"HorarioDescricao" text NULL,
	"DepartamentoDescricao" text NULL,
	"FuncaoDescricao" text NULL,
	"BancoId" int8 NULL
);


-- public.apiponto_justificativas definition

-- Drop table

-- DROP TABLE public.apiponto_justificativas;

CREATE TABLE public.apiponto_justificativas (
	"Id" int8 NULL,
	"NomeAbreviado" text NULL,
	"NomeCompleto" text NULL,
	"BancoId" int8 NULL
);


-- public.base_equilibrio definition

-- Drop table

-- DROP TABLE public.base_equilibrio;

CREATE TABLE public.base_equilibrio (
	funcao_padrao text NULL,
	corte float8 NULL,
	equilibrio_corte float8 NULL,
	meta float8 NULL,
	equilibrio_meta float8 NULL,
	alunos_atual float8 NULL,
	equilibrio_atual float8 NULL,
	cod_escola float8 NULL
);


-- public.base_equilibrio_extra definition

-- Drop table

-- DROP TABLE public.base_equilibrio_extra;

CREATE TABLE public.base_equilibrio_extra (
	cod_escola int4 NULL,
	metro_quadrados int4 NULL,
	saidas int4 NULL,
	corte int4 NULL,
	meta int4 NULL,
	atual int4 NULL,
	turmas int4 NULL,
	banheiros int4 NULL
);


-- public.conta_credora definition

-- Drop table

-- DROP TABLE public.conta_credora;

CREATE TABLE public.conta_credora (
	id_entity int4 NULL,
	id_allowance int4 NULL,
	id_type_payment int4 NULL,
	accounting_year int2 NULL,
	enrollment_relationship int4 NULL,
	cr_db varchar(1) NULL,
	conta varchar(20) NULL
);


-- public.conta_devedora definition

-- Drop table

-- DROP TABLE public.conta_devedora;

CREATE TABLE public.conta_devedora (
	id_entity int4 NULL,
	id_allowance int4 NULL,
	id_type_payment int4 NULL,
	accounting_year int2 NULL,
	enrollment_relationship int4 NULL,
	cr_db varchar(1) NULL,
	conta varchar(20) NULL
);


-- public.custo definition

-- Drop table

-- DROP TABLE public.custo;

CREATE TABLE public.custo (
	entidade text NULL,
	cod_departamento text NULL,
	nome_departamento text NULL,
	id_funcionario text NULL,
	cod_funcionario text NULL,
	nome_funcionario text NULL,
	id_verba int4 NULL,
	valor numeric(23, 4) NULL,
	referencia1 numeric(23, 4) NULL,
	referencia2 numeric(23, 4) NULL,
	referencia3 numeric(23, 4) NULL,
	cod_verba text NULL,
	nome_verba text NULL,
	operador text NULL,
	categoria text NULL,
	tipo text NULL,
	id_type_payment int4 NULL,
	ano int2 NULL,
	mes int2 NULL,
	cargo text NULL,
	t2_pk_vinculo int4 NULL,
	conta_c text NULL,
	conta_d text NULL
);


-- public.custo_temp definition

-- Drop table

-- DROP TABLE public.custo_temp;

CREATE TABLE public.custo_temp (
	entidade text NULL,
	cod_departamento text NULL,
	nome_departamento text NULL,
	id_funcionario int4 NULL,
	cod_funcionario text NULL,
	nome_funcionario text NULL,
	id_verba int4 NULL,
	valor numeric(23, 4) NULL,
	referencia1 numeric(23, 4) NULL,
	referencia2 numeric(23, 4) NULL,
	referencia3 numeric(23, 4) NULL,
	cod_verba text NULL,
	nome_verba text NULL,
	operador text NULL,
	categoria text NULL,
	tipo text NULL,
	id_type_payment int4 NULL,
	ano int2 NULL,
	mes int2 NULL,
	cargo text NULL,
	t2_pk_vinculo int4 NULL,
	id_entity int4 NULL
);


-- public.d_funcionarios definition

-- Drop table

-- DROP TABLE public.d_funcionarios;

CREATE TABLE public.d_funcionarios (
	id text NULL,
	nome_funcionario text NULL,
	genero text NULL,
	estado_civil int4 NULL,
	data_nascimento date NULL,
	cod_departamento text NULL,
	escola text NULL,
	cod_funcionario text NULL,
	data_contratacao date NULL,
	data_desligamento date NULL,
	grupo text NULL,
	cargo text NULL,
	carga_horaria text NULL,
	religion varchar NULL,
	base numeric(23, 4) NULL,
	graduation text NULL,
	rescisao_motivo varchar(100) NULL,
	idade int4 NULL,
	tempo_casa int4 NULL,
	faixa_etaria text NULL,
	classificacao text NULL,
	cargo_simples text NULL,
	faixa_tempo_casa text NULL,
	foto_func bytea NULL,
	fpe int4 NULL
);


-- public.daluno definition

-- Drop table

-- DROP TABLE public.daluno;

CREATE TABLE public.daluno (
	id_aluno varchar(25) NULL,
	id_escola int4 NULL,
	rc_aluno int4 NULL,
	nome_aluno varchar(100) NULL,
	sexo_aluno varchar(9) NULL,
	dt_nascimento date NULL,
	religiao_aluno varchar(50) NULL,
	foto bytea NULL,
	cpf_resp_financeiro text NULL,
	nome_responsavel text NULL,
	ano int2 NULL,
	observacao varchar(255) NULL,
	tutor varchar(3) NULL
);


-- public.datetime definition

-- Drop table

-- DROP TABLE public.datetime;

CREATE TABLE public.datetime (
	horaatualdoservidor timestamp NULL
);


-- public.datetime_aasi definition

-- Drop table

-- DROP TABLE public.datetime_aasi;

CREATE TABLE public.datetime_aasi (
	horaatualdoservidor timestamp NULL
);


-- public.ddepartamentos definition

-- Drop table

-- DROP TABLE public.ddepartamentos;

CREATE TABLE public.ddepartamentos (
	id_departamento text NULL,
	nome_departamento text NULL,
	escola text NULL,
	nivel text NULL,
	rateio text NULL
);


-- public.descola definition

-- Drop table

-- DROP TABLE public.descola;

CREATE TABLE public.descola (
	id_escola int4 NULL,
	nome_escola varchar(70) NULL,
	abrev_escola varchar(6) NULL
);


-- public.dmatricula definition

-- Drop table

-- DROP TABLE public.dmatricula;

CREATE TABLE public.dmatricula (
	id_matricula varchar(39) NULL,
	ano_matricula int2 NULL,
	id_serie int2 NULL,
	nivel_serie varchar(21) NULL,
	abrev_nivel varchar(6) NULL,
	cod_turma varchar(5) NULL,
	turno varchar(5) NULL,
	tipo_aluno varchar(8) NULL,
	perc_bolsa int8 NULL,
	perc_desconto int8 NULL,
	status varchar(7) NULL,
	dt_matricula date NULL,
	id_turma varchar(25) NULL,
	ordem_serie varchar(2) NULL,
	nome_serie varchar(14) NULL,
	religiao varchar(50) NULL,
	tp_desconto varchar(100) NULL,
	cobra_matricula int2 NULL,
	formando varchar(12) NULL,
	dia_vencimento int4 NULL,
	contraturno text NULL,
	id_aluno varchar(25) NULL,
	matricula_online varchar(3) NULL
);


-- public.dmensalidade definition

-- Drop table

-- DROP TABLE public.dmensalidade;

CREATE TABLE public.dmensalidade (
	cod_escola int4 NULL,
	"data" varchar(12) NULL,
	ordem_serie varchar(2) NULL,
	nivel_serie varchar(21) NULL,
	abrev_nivel varchar(6) NULL,
	nome_serie varchar(14) NULL,
	valor numeric(23, 4) NULL
);


-- public.dplanocontas definition

-- Drop table

-- DROP TABLE public.dplanocontas;

CREATE TABLE public.dplanocontas (
	cod_conta varchar(20) NULL,
	nome_conta varchar(50) NULL,
	cod_conta_nv1 varchar(7) NULL,
	nome_conta_nv1 varchar(60) NULL,
	cod_conta_nv2 varchar(7) NULL,
	nome_conta_nv2 varchar(60) NULL,
	cod_conta_nv3 varchar(7) NULL,
	nome_conta_nv3 varchar(60) NULL,
	cod_conta_nv4 varchar(7) NULL,
	nome_conta_nv4 varchar(60) NULL,
	cod_conta_nv5 varchar(7) NULL,
	nome_conta_nv5 varchar(60) NULL,
	cod_conta_nv6 varchar(7) NULL,
	nome_conta_nv6 varchar(60) NULL
);


-- public.dtbricks_dracma_beneficiario definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_beneficiario;

CREATE TABLE public.dtbricks_dracma_beneficiario (
	beneficiarioid int8 NULL,
	beneficiarionomecompleto text NULL,
	beneficiariodocumento text NULL,
	beneficiarioemail text NULL,
	"_silverupdatedate" date NULL
);


-- public.dtbricks_dracma_categoria_gasto definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_categoria_gasto;

CREATE TABLE public.dtbricks_dracma_categoria_gasto (
	categoriagastoid int8 NULL,
	categoriagastonome text NULL,
	"_silverupdatedate" date NULL
);


-- public.dtbricks_dracma_centro_custo definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_centro_custo;

CREATE TABLE public.dtbricks_dracma_centro_custo (
	centrocustoid int8 NULL,
	centrocustocodigo text NULL,
	centrocustonome text NULL,
	"_silverupdatedate" date NULL
);


-- public.dtbricks_dracma_condicao_documento definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_condicao_documento;

CREATE TABLE public.dtbricks_dracma_condicao_documento (
	condicaodocumentoid int4 NULL,
	condicaodocumento text NULL
);


-- public.dtbricks_dracma_condicao_pagamento definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_condicao_pagamento;

CREATE TABLE public.dtbricks_dracma_condicao_pagamento (
	condicaopagamentoid int4 NULL,
	condicaopagamento text NULL
);


-- public.dtbricks_dracma_documentos definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_documentos;

CREATE TABLE public.dtbricks_dracma_documentos (
	documentoid int8 NULL,
	statusdocumentoid int4 NULL,
	tipodocumentoid int8 NULL,
	condicaodocumentoid int4 NULL,
	condicaopagamentoid int4 NULL,
	entidadeid int8 NULL,
	fornecedorid int8 NULL,
	documentoidentificador text NULL,
	documentocodigo text NULL,
	documentonumero text NULL,
	datacriacao date NULL,
	criadopor text NULL,
	aprovadopor text NULL,
	dataemissao date NULL,
	valor numeric(20, 2) NULL,
	finalidade text NULL,
	observacao text NULL,
	entradamanual bool NULL,
	contabilizavel bool NULL,
	naocontabilizar bool NULL,
	contabilizado bool NULL,
	marcadocomopago bool NULL,
	bloqueado bool NULL,
	agrupado bool NULL,
	temsimilar bool NULL,
	documentolink text NULL,
	"_silverupdatedate" date NULL
);


-- public.dtbricks_dracma_entidade definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_entidade;

CREATE TABLE public.dtbricks_dracma_entidade (
	entidadeid int8 NULL,
	entidadecodigo text NULL,
	entidadedocumento text NULL,
	entidadedenome varchar(255) NULL,
	entidadelegalid int8 NULL,
	entidadelegalnome text NULL,
	entidadelegaldocumento text NULL,
	entidadelegaldescricao text NULL,
	"_silverupdatedate" date NULL
);


-- public.dtbricks_dracma_favorecido definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_favorecido;

CREATE TABLE public.dtbricks_dracma_favorecido (
	favorecidoid int8 NULL,
	favorecidofullname text NULL,
	favorecidodocument text NULL,
	favorecidoemail text NULL,
	"_silverupdatedate" date NULL
);


-- public.dtbricks_dracma_forma_pagamento definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_forma_pagamento;

CREATE TABLE public.dtbricks_dracma_forma_pagamento (
	formapagamentoid int4 NULL,
	formapagamento text NULL
);


-- public.dtbricks_dracma_fornecedor definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_fornecedor;

CREATE TABLE public.dtbricks_dracma_fornecedor (
	fornecedorid int8 NULL,
	fornecedorfullname text NULL,
	fornecedordocument text NULL,
	fornecedoremail text NULL,
	regime text NULL,
	regimerural text NULL,
	"_silverupdatedate" date NULL
);


-- public.dtbricks_dracma_pagamento_parcelas definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_pagamento_parcelas;

CREATE TABLE public.dtbricks_dracma_pagamento_parcelas (
	pagamentoparcelasid int4 NULL,
	datavencimento date NULL,
	gerapagamento bool NULL,
	cancelado bool NULL,
	formapagamentoid int4 NULL,
	parcelanumero text NULL,
	entradamanual bool NULL,
	motivorejeite text NULL,
	boletocodigo text NULL,
	boletonumero text NULL,
	contribuintenome text NULL,
	contribuintedocumento text NULL,
	contabancariatipoid int4 NULL,
	cartaofinanceirocorporativoid int8 NULL,
	pixid int4 NULL,
	pixchave text NULL,
	pixtipochaveid int4 NULL,
	favorecidoid int8 NULL,
	validacaoprevia bool NULL,
	validacaopreviadata date NULL,
	valor numeric(20, 2) NULL,
	valorliquido numeric(20, 2) NULL,
	statuspagamentoid int4 NULL,
	datapagamentoparcela date NULL,
	confirmado bool NULL,
	nomearquivo text NULL,
	pagamentocriadopor text NULL,
	documentoidentificador text NULL,
	documentoentidadeid int8 NULL,
	contasbancariasid int8 NULL,
	contapagadorapredefinida int8 NULL,
	"_silverupdatedate" date NULL
);


-- public.dtbricks_dracma_rateio definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_rateio;

CREATE TABLE public.dtbricks_dracma_rateio (
	rateioid int8 NULL,
	documentoid int8 NULL,
	documentoidentificador text NULL,
	finalidade text NULL,
	valor numeric(20, 2) NULL,
	centrocustoid int8 NULL,
	categoriagastoid int8 NULL,
	entidadeid int8 NULL,
	"_silverupdatedate" date NULL
);


-- public.dtbricks_dracma_status_documento definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_status_documento;

CREATE TABLE public.dtbricks_dracma_status_documento (
	statusdocumentoid int4 NULL,
	statusdocumento text NULL
);


-- public.dtbricks_dracma_status_pagto definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_status_pagto;

CREATE TABLE public.dtbricks_dracma_status_pagto (
	statuspagamentoid int4 NULL,
	statuspagamento text NULL
);


-- public.dtbricks_dracma_tipo_documento definition

-- Drop table

-- DROP TABLE public.dtbricks_dracma_tipo_documento;

CREATE TABLE public.dtbricks_dracma_tipo_documento (
	tipodocumentoid int8 NULL,
	tipodocumentocodigo text NULL,
	tipodocumentonome text NULL,
	"_silverupdatedate" date NULL
);


-- public.dtbricks_pagto_full definition

-- Drop table

-- DROP TABLE public.dtbricks_pagto_full;

CREATE TABLE public.dtbricks_pagto_full (
	id int8 NULL,
	status_doc text NULL,
	tp_doc text NULL,
	cond_pgto text NULL,
	unidade text NULL,
	fornecedor text NULL,
	ct_custo text NULL,
	categoria text NULL,
	num_doc text NULL,
	criadopor text NULL,
	aprovadopor text NULL,
	datacriacao date NULL,
	dataemissao date NULL,
	datavencimento date NULL,
	datapagamentoparcela date NULL,
	valor numeric NULL,
	valorliquido numeric NULL,
	finalidade text NULL,
	observacao text NULL,
	forma_pagto text NULL,
	parcelanumero text NULL,
	favorecido text NULL,
	valor_pagto numeric NULL,
	status_pagto text NULL
);


-- public.dturmas definition

-- Drop table

-- DROP TABLE public.dturmas;

CREATE TABLE public.dturmas (
	id_turma varchar(25) NULL,
	nome_serie varchar(14) NULL,
	ordem_serie varchar(2) NULL,
	nivel_serie varchar(21) NULL,
	nível varchar(6) NULL,
	cod_escola int4 NULL,
	turno varchar(1) NULL
);


-- public.f_extratoaluno definition

-- Drop table

-- DROP TABLE public.f_extratoaluno;

CREATE TABLE public.f_extratoaluno (
	id_aluno varchar(25) NULL,
	id_matricula varchar(39) NULL,
	cod_carne int4 NULL,
	cod_escola int4 NULL,
	cod_aluno int4 NULL,
	parcela int2 NULL,
	data_vencimento date NULL,
	valor numeric(23, 4) NULL,
	vlr_aberto numeric(23, 4) NULL,
	dt_quitacao date NULL,
	status_carne varchar(14) NULL,
	cod_servico int2 NULL
);


-- public.f_horas_extras_falex definition

-- Drop table

-- DROP TABLE public.f_horas_extras_falex;

CREATE TABLE public.f_horas_extras_falex (
	id int8 NULL,
	id_escola varchar(3) NULL,
	verba int4 NULL,
	funcionario varchar(254) NULL,
	funcao varchar(100) NULL,
	dt_ref varchar(35) NULL,
	atividade varchar(100) NULL,
	classificacao varchar(40) NULL,
	horas_tot varchar(10) NULL,
	total_decimais numeric(36, 10) NULL,
	funcao_edit varchar(100) NULL,
	tipo_func text NULL
);


-- public.f_lancamentosmarketing definition

-- Drop table

-- DROP TABLE public.f_lancamentosmarketing;

CREATE TABLE public.f_lancamentosmarketing (
	entidade varchar(15) NULL,
	dt_lancamento date NULL,
	tipo_lote varchar(15) NULL,
	cod_conta varchar(7) NULL,
	conta_contabil varchar(73) NULL,
	nome_conta varchar(73) NULL,
	conta_corrente varchar(68) NULL,
	departamento varchar(15) NULL,
	depto varchar(50) NULL,
	restricao varchar(20) NULL,
	lancamento varchar(15) NULL,
	item varchar(15) NULL,
	valor numeric(23, 4) NULL,
	vlr_despesa numeric(23, 4) NULL,
	historico varchar(1000) NULL,
	comentario varchar(1000) NULL,
	atualizado varchar(1) NULL,
	cod_conta_nv1 varchar(7) NULL,
	cod_conta_nv2 varchar(7) NULL,
	cod_conta_nv3 varchar(7) NULL,
	cod_conta_nv4 varchar(7) NULL,
	cod_conta_nv5 varchar(7) NULL,
	cod_conta_nv6 varchar(7) NULL,
	nome_conta_nv1 varchar(60) NULL,
	nome_conta_nv2 varchar(60) NULL,
	nome_conta_nv3 varchar(60) NULL,
	nome_conta_nv4 varchar(60) NULL,
	nome_conta_nv5 varchar(60) NULL,
	nome_conta_nv6 varchar(83) NULL,
	id_escola text NULL,
	orcamento_marketing text NULL
);


-- public.f_lancamentosorcamentointerno definition

-- Drop table

-- DROP TABLE public.f_lancamentosorcamentointerno;

CREATE TABLE public.f_lancamentosorcamentointerno (
	entidade varchar(15) NULL,
	dt_lancamento date NULL,
	tipo_lote varchar(15) NULL,
	cod_conta varchar(7) NULL,
	conta_contabil varchar(73) NULL,
	nome_conta varchar(73) NULL,
	conta_corrente varchar(68) NULL,
	departamento varchar(15) NULL,
	depto varchar(50) NULL,
	restricao varchar(20) NULL,
	lancamento varchar(15) NULL,
	item varchar(15) NULL,
	valor numeric(23, 4) NULL,
	vlr_despesa numeric(23, 4) NULL,
	historico varchar(1000) NULL,
	comentario varchar(1000) NULL,
	atualizado varchar(1) NULL,
	cod_conta_nv1 varchar(7) NULL,
	cod_conta_nv2 varchar(7) NULL,
	cod_conta_nv3 varchar(7) NULL,
	cod_conta_nv4 varchar(7) NULL,
	cod_conta_nv5 varchar(7) NULL,
	cod_conta_nv6 varchar(7) NULL,
	nome_conta_nv1 varchar(60) NULL,
	nome_conta_nv2 varchar(60) NULL,
	nome_conta_nv3 varchar(60) NULL,
	nome_conta_nv4 varchar(60) NULL,
	nome_conta_nv5 varchar(60) NULL,
	nome_conta_nv6 varchar(83) NULL,
	id_escola text NULL,
	orcamento_interno text NULL
);


-- public.f_lista_p definition

-- Drop table

-- DROP TABLE public.f_lista_p;

CREATE TABLE public.f_lista_p (
	id_matricula varchar(39) NULL,
	id_aluno varchar(25) NULL,
	dt_referencia varchar(22) NULL,
	status_pag varchar(1) NULL,
	cod_escola int4 NULL,
	tipo_pgto varchar(6) NULL,
	parcelas int2 NULL,
	dt_matricula date NULL,
	data_desligamento date NULL,
	cod_serie int2 NULL,
	id_turma varchar(25) NULL,
	status_lista_p varchar(23) NULL,
	vlr_aberto numeric(23, 4) NULL,
	vlr_mensal numeric(23, 4) NULL
);


-- public.f_notas definition

-- Drop table

-- DROP TABLE public.f_notas;

CREATE TABLE public.f_notas (
	id_matricula varchar(39) NULL,
	id_aluno varchar(25) NULL,
	nome_comum varchar(100) NULL,
	disciplina varchar(100) NULL,
	bimestre int2 NULL,
	ano int2 NULL,
	cod_aluno int4 NULL,
	cod_escola int4 NULL,
	media_informada01 varchar(8) NULL,
	media_informada02 varchar(8) NULL,
	media_calculada varchar(8) NULL,
	faltas int2 NULL,
	nota varchar(8) NULL
);


-- public.f_ocorrencias definition

-- Drop table

-- DROP TABLE public.f_ocorrencias;

CREATE TABLE public.f_ocorrencias (
	id_aluno text NULL,
	id_matricula text NULL,
	cod_escola int4 NULL,
	cod_aluno int4 NULL,
	tipo_ocorrencia text NULL,
	classificacao text NULL,
	dt_ocorrencia date NULL,
	observacao text NULL,
	disciplina text NULL
);


-- public.f_orcamentoaasi definition

-- Drop table

-- DROP TABLE public.f_orcamentoaasi;

CREATE TABLE public.f_orcamentoaasi (
	dt_orcamento varchar(14) NULL,
	cod_conta varchar(20) NULL,
	cod_departamento varchar(15) NULL,
	historico varchar(10) NULL,
	orcado numeric(23, 4) NULL,
	id_escola text NULL
);


-- public.f_pne definition

-- Drop table

-- DROP TABLE public.f_pne;

CREATE TABLE public.f_pne (
	id_aluno varchar(25) NULL,
	doenca varchar(30) NULL,
	pne varchar(5) NULL,
	tipo_pne varchar(50) NULL,
	observacao varchar(255) NULL
);


-- public.f_recebimento definition

-- Drop table

-- DROP TABLE public.f_recebimento;

CREATE TABLE public.f_recebimento (
	data_recebimento date NULL,
	data_pgto date NULL,
	cod_recebimento int4 NULL,
	cod_item_recebimento int4 NULL,
	cod_carne int4 NULL,
	descricao varchar(50) NULL,
	id_aluno varchar(25) NULL,
	cod_escola int4 NULL,
	cod_aluno int4 NULL,
	valor_pago numeric(23, 4) NULL,
	dt_vencimento date NULL,
	periodo varchar(11) NULL,
	banco_pgto int2 NULL,
	nome_arquivo varchar(50) NULL,
	tipo_baixa varchar(12) NULL,
	multa numeric(23, 4) NULL,
	juros numeric(23, 4) NULL,
	pgto_menor numeric(23, 4) NULL
);


-- public.fact_capacidadeturmas definition

-- Drop table

-- DROP TABLE public.fact_capacidadeturmas;

CREATE TABLE public.fact_capacidadeturmas (
	id_turma varchar(25) NULL,
	cod_escola int4 NULL,
	ano int2 NULL,
	qtd_minima int4 NULL,
	qtd_maxima int4 NULL,
	qtd_pcd int4 NULL
);


-- public.fact_realizado definition

-- Drop table

-- DROP TABLE public.fact_realizado;

CREATE TABLE public.fact_realizado (
	id_matricula varchar(39) NULL,
	id_aluno varchar(25) NULL,
	id_turma varchar(25) NULL,
	id_escola int4 NULL,
	dt_ref varchar(12) NULL,
	depto int4 NULL,
	mensalidade numeric(23, 4) NULL,
	desconto numeric(23, 4) NULL,
	desconto_outros_rat numeric(23, 4) NULL,
	desconto_ff numeric(23, 4) NULL,
	bolsa numeric(23, 4) NULL,
	inadimplencia numeric(23, 4) NULL,
	outras_receitas_nv numeric(23, 4) NULL,
	outras_receitas_rat_es numeric(23, 4) NULL,
	outras_receitas_rat_sd numeric(23, 4) NULL,
	subvencao_rat_es numeric(23, 4) NULL,
	subvencao_rat_sd numeric(23, 4) NULL,
	custo_pessoal_nv numeric(23, 4) NULL,
	custo_pessoal_rat_es numeric(23, 4) NULL,
	custo_pessoal_rat_sd numeric(23, 4) NULL,
	custo_adm_nv numeric(23, 4) NULL,
	custo_adm_rat_es numeric(23, 4) NULL,
	custo_adm_rat_sd numeric(23, 4) NULL,
	custo_educ_nv numeric(23, 4) NULL,
	custo_educ_rat_es numeric(23, 4) NULL,
	custo_educ_rat_sd numeric(23, 4) NULL,
	custo_outorg_rat_es numeric(23, 4) NULL,
	custo_outorg_rat_sd numeric(23, 4) NULL
);


-- public.fact_relatos definition

-- Drop table

-- DROP TABLE public.fact_relatos;

CREATE TABLE public.fact_relatos (
	id_escola int4 NULL,
	id_matricula varchar(39) NULL,
	id_aluno varchar(25) NULL,
	parcela int4 NULL,
	codcarne int4 NULL,
	valor numeric(23, 4) NULL,
	mensagem text NULL,
	dt_relato date NULL,
	tipo int4 NULL,
	tp_cobranca varchar(50) NULL,
	status_carne varchar(6) NULL,
	dt_vencto date NULL,
	usuario text NULL
);


-- public.fechamento definition

-- Drop table

-- DROP TABLE public.fechamento;

CREATE TABLE public.fechamento (
	mes int2 NULL,
	ano int2 NULL,
	data_abertura date NULL,
	data_fechamento date NULL
);


-- public.finadimplenciaperiodo definition

-- Drop table

-- DROP TABLE public.finadimplenciaperiodo;

CREATE TABLE public.finadimplenciaperiodo (
	referencia date NULL,
	mes varchar(10) NULL,
	id_escola int4 NULL,
	vlrprevisto numeric(23, 4) NULL,
	vlrrecebido numeric(23, 4) NULL,
	vlrreceber numeric(23, 4) NULL
);


-- public.finadimplenciaperiodo_temp definition

-- Drop table

-- DROP TABLE public.finadimplenciaperiodo_temp;

CREATE TABLE public.finadimplenciaperiodo_temp (
	referencia date NULL,
	mes varchar(10) NULL,
	id_escola int4 NULL,
	vlrprevisto numeric(23, 4) NULL,
	vlrrecebido numeric(23, 4) NULL,
	vlrreceber numeric(23, 4) NULL
);


-- public.finadimplenciaperiodo_temp2 definition

-- Drop table

-- DROP TABLE public.finadimplenciaperiodo_temp2;

CREATE TABLE public.finadimplenciaperiodo_temp2 (
	referencia date NULL,
	mes varchar(10) NULL,
	id_escola int4 NULL,
	vlrprevisto numeric(23, 4) NULL,
	vlrrecebido numeric(23, 4) NULL,
	vlrreceber numeric(23, 4) NULL
);


-- public.fmovimento_contabil definition

-- Drop table

-- DROP TABLE public.fmovimento_contabil;

CREATE TABLE public.fmovimento_contabil (
	entidade varchar(15) NULL,
	dt_lancamento date NULL,
	tipo_lote varchar(15) NULL,
	cod_conta varchar(7) NULL,
	conta_contabil varchar(73) NULL,
	nome_conta varchar(73) NULL,
	conta_corrente varchar(68) NULL,
	departamento varchar(15) NULL,
	depto varchar(50) NULL,
	restricao varchar(20) NULL,
	lancamento varchar(15) NULL,
	item varchar(15) NULL,
	valor numeric(23, 4) NULL,
	vlr_despesa numeric(23, 4) NULL,
	historico varchar(1000) NULL,
	comentario varchar(1000) NULL,
	atualizado varchar(1) NULL,
	cod_conta_nv1 varchar(7) NULL,
	cod_conta_nv2 varchar(7) NULL,
	cod_conta_nv3 varchar(7) NULL,
	cod_conta_nv4 varchar(7) NULL,
	cod_conta_nv5 varchar(7) NULL,
	cod_conta_nv6 varchar(7) NULL,
	nome_conta_nv1 varchar(60) NULL,
	nome_conta_nv2 varchar(60) NULL,
	nome_conta_nv3 varchar(60) NULL,
	nome_conta_nv4 varchar(60) NULL,
	nome_conta_nv5 varchar(60) NULL,
	nome_conta_nv6 varchar(83) NULL,
	id_escola text NULL
);


-- public.fmovimento_contabil_temp definition

-- Drop table

-- DROP TABLE public.fmovimento_contabil_temp;

CREATE TABLE public.fmovimento_contabil_temp (
	entidade varchar(15) NULL,
	dt_lancamento date NULL,
	tipo_lote varchar(15) NULL,
	cod_conta varchar(7) NULL,
	conta_contabil varchar(73) NULL,
	nome_conta varchar(73) NULL,
	conta_corrente varchar(68) NULL,
	departamento varchar(15) NULL,
	depto varchar(50) NULL,
	restricao varchar(20) NULL,
	lancamento varchar(15) NULL,
	item varchar(15) NULL,
	valor numeric(23, 4) NULL,
	vlr_despesa numeric(23, 4) NULL,
	historico varchar(1000) NULL,
	comentario varchar(1000) NULL,
	atualizado varchar(1) NULL,
	cod_conta_nv1 varchar(7) NULL,
	nome_conta_nv1 varchar(60) NULL,
	cod_conta_nv2 varchar(7) NULL,
	nome_conta_nv2 varchar(60) NULL,
	cod_conta_nv3 varchar(7) NULL,
	nome_conta_nv3 varchar(60) NULL,
	cod_conta_nv4 varchar(7) NULL,
	nome_conta_nv4 varchar(60) NULL,
	cod_conta_nv5 varchar(7) NULL,
	nome_conta_nv5 varchar(60) NULL,
	cod_conta_nv6 varchar(7) NULL,
	nome_conta_nv6 varchar(83) NULL
);


-- public.frematricula definition

-- Drop table

-- DROP TABLE public.frematricula;

CREATE TABLE public.frematricula (
	id_matricula varchar(39) NULL,
	id_aluno varchar(25) NULL,
	ano int2 NULL,
	cod_escola int4 NULL,
	tipo_pgto varchar(6) NULL,
	parcelas int2 NULL,
	vlr_mensal numeric(23, 4) NULL,
	vlr_anual numeric(23, 4) NULL,
	eh_default int4 NULL,
	dt_matricula date NULL,
	data_desligamento date NULL,
	cod_serie int2 NULL,
	id_turma varchar(25) NULL,
	perc_bolsa_24 int8 NULL,
	perc_desconto_24 int8 NULL,
	grat_2023 int8 NULL,
	desc_2023 int8 NULL,
	status_financeiro varchar(10) NULL,
	vlr_aberto numeric(23, 4) NULL
);


-- public.frematriculas definition

-- Drop table

-- DROP TABLE public.frematriculas;

CREATE TABLE public.frematriculas (
	id_matricula varchar(39) NULL,
	id_aluno varchar(25) NULL,
	ano int2 NULL,
	cod_escola int4 NULL,
	tipo_pgto varchar(6) NULL,
	parcelas int2 NULL,
	vlr_mensal numeric(23, 4) NULL,
	vlr_anual numeric(23, 4) NULL,
	perc_bolsa int8 NULL,
	perc_desconto int8 NULL,
	eh_default int4 NULL,
	dt_matricula date NULL,
	data_desligamento date NULL,
	cod_serie int2 NULL,
	id_turma varchar(25) NULL
);


-- public.fsaldosiniciais definition

-- Drop table

-- DROP TABLE public.fsaldosiniciais;

CREATE TABLE public.fsaldosiniciais (
	entidade varchar(15) NULL,
	dt_lancamento date NULL,
	tipo_lote varchar(15) NULL,
	cod_conta varchar(7) NULL,
	conta_contabil varchar(73) NULL,
	nome_conta varchar(73) NULL,
	conta_corrente varchar(68) NULL,
	departamento varchar(15) NULL,
	depto varchar(50) NULL,
	restricao varchar(20) NULL,
	lancamento varchar(15) NULL,
	item varchar(15) NULL,
	valor numeric(23, 4) NULL,
	vlr_despesa numeric(23, 4) NULL,
	historico varchar(1000) NULL,
	comentario varchar(1000) NULL,
	atualizado varchar(1) NULL,
	cod_conta_nv1 varchar(7) NULL,
	cod_conta_nv2 varchar(7) NULL,
	cod_conta_nv3 varchar(7) NULL,
	cod_conta_nv4 varchar(7) NULL,
	cod_conta_nv5 varchar(7) NULL,
	cod_conta_nv6 varchar(7) NULL,
	nome_conta_nv1 varchar(60) NULL,
	nome_conta_nv2 varchar(60) NULL,
	nome_conta_nv3 varchar(60) NULL,
	nome_conta_nv4 varchar(60) NULL,
	nome_conta_nv5 varchar(60) NULL,
	nome_conta_nv6 varchar(83) NULL,
	id_escola text NULL
);


-- public.funcionarios definition

-- Drop table

-- DROP TABLE public.funcionarios;

CREATE TABLE public.funcionarios (
	id int4 NULL,
	nome_funcionario text NULL,
	genero int4 NULL,
	estado_civil int4 NULL,
	data_nascimento date NULL,
	ativo text NULL,
	cod_entidade text NULL,
	nome_entidade text NULL,
	cod_departamento text NULL,
	nome_departamento text NULL,
	cod_funcionario text NULL,
	data_contratacao date NULL,
	data_desligamento date NULL,
	grupo text NULL,
	cargo text NULL,
	carga_horaria text NULL,
	religion varchar(100) NULL,
	base numeric(23, 4) NULL,
	graduation text NULL,
	rescisao_motivo varchar(100) NULL,
	foto_func bytea NULL,
	fpe int8 NULL
);


-- public.fvlraberto definition

-- Drop table

-- DROP TABLE public.fvlraberto;

CREATE TABLE public.fvlraberto (
	id_aluno varchar(25) NULL,
	parcela int4 NULL,
	id_escola int4 NULL,
	data_vencimento date NULL,
	id_matricula varchar(39) NULL,
	vlr_aberto numeric(23, 4) NULL,
	mes varchar(20) NULL,
	cod_carne int4 NULL,
	relatos int4 NULL
);


-- public.fvlrdevido definition

-- Drop table

-- DROP TABLE public.fvlrdevido;

CREATE TABLE public.fvlrdevido (
	id_escola int4 NULL,
	id_matricula varchar(39) NULL,
	id_aluno varchar(25) NULL,
	parcela int4 NULL,
	mes varchar(20) NULL,
	vlr_devido numeric(23, 4) NULL
);


-- public.historico_alunos_2023 definition

-- Drop table

-- DROP TABLE public.historico_alunos_2023;

CREATE TABLE public.historico_alunos_2023 (
	"Data" date NULL,
	"Escola" int4 NULL,
	"Total Alunos" int8 NULL,
	"Alunos Novos" int8 NULL,
	"Alunos Veteranos" int8 NULL,
	"Bolsistas 100%" int8 NULL,
	"Bolsistas 50%" int8 NULL
);


-- public.historico_alunos_2024 definition

-- Drop table

-- DROP TABLE public.historico_alunos_2024;

CREATE TABLE public.historico_alunos_2024 (
	"Data_historico" date NULL,
	id_matricula varchar(39) NULL,
	id_aluno varchar(25) NULL,
	ano int2 NULL,
	cod_escola int4 NULL,
	tipo_pgto varchar(6) NULL,
	parcelas int2 NULL,
	vlr_mensal numeric(23, 4) NULL,
	vlr_anual numeric(23, 4) NULL,
	perc_bolsa int8 NULL,
	perc_desconto int8 NULL,
	eh_default int4 NULL,
	dt_matricula date NULL,
	data_desligamento date NULL,
	cod_serie int2 NULL,
	id_turma varchar(25) NULL
);


-- public.historico_alunos_2025 definition

-- Drop table

-- DROP TABLE public.historico_alunos_2025;

CREATE TABLE public.historico_alunos_2025 (
	"Data_historico" date NULL,
	id_matricula varchar(39) NULL,
	id_aluno varchar(25) NULL,
	ano int2 NULL,
	cod_escola int4 NULL,
	tipo_pgto varchar(6) NULL,
	parcelas int2 NULL,
	vlr_mensal numeric(23, 4) NULL,
	vlr_anual numeric(23, 4) NULL,
	perc_bolsa int8 NULL,
	perc_desconto int8 NULL,
	eh_default int4 NULL,
	dt_matricula date NULL,
	data_desligamento date NULL,
	cod_serie int2 NULL,
	id_turma varchar(25) NULL
);


-- public.inadimplencia_contabilizada definition

-- Drop table

-- DROP TABLE public.inadimplencia_contabilizada;

CREATE TABLE public.inadimplencia_contabilizada (
	mes text NULL,
	cod_escola int4 NULL,
	vlr_previsto numeric NULL,
	vlr_receber numeric NULL,
	vlr_juros numeric NULL,
	vlr_pago numeric NULL
);


-- public.inadimplencia_contabilizada_temp definition

-- Drop table

-- DROP TABLE public.inadimplencia_contabilizada_temp;

CREATE TABLE public.inadimplencia_contabilizada_temp (
	cod_escola int4 NULL,
	nome varchar(70) NULL,
	valor_previsto numeric(23, 4) NULL,
	valor_receber int8 NULL,
	valor_juros numeric(23, 4) NULL,
	valor_pago int8 NULL,
	diferencas numeric(23, 4) NULL,
	mes text NULL
);


-- public.matriculas_2022 definition

-- Drop table

-- DROP TABLE public.matriculas_2022;

CREATE TABLE public.matriculas_2022 (
	data_matriculas date NULL,
	"cod escola" text NULL,
	novos float8 NULL,
	veteranos float8 NULL
);


-- public.matriculas_2023 definition

-- Drop table

-- DROP TABLE public.matriculas_2023;

CREATE TABLE public.matriculas_2023 (
	cod_escola int4 NULL,
	cod_aluno int4 NULL,
	nome_aluno varchar(100) NULL,
	id varchar(25) NULL,
	sexo varchar(1) NULL,
	ano varchar(12) NULL,
	cod_serie int2 NULL,
	data_matricula date NULL,
	tipo_pgto int2 NULL,
	parcelas int2 NULL,
	valor numeric(23, 4) NULL,
	religião varchar(50) NULL,
	turno varchar(1) NULL,
	cod_motivo_matricula int2 NULL,
	turma varchar(25) NULL,
	gratuidade numeric(5, 2) NULL,
	desconto numeric(5, 2) NULL
);


-- public.matriculas_2023_140 definition

-- Drop table

-- DROP TABLE public.matriculas_2023_140;

CREATE TABLE public.matriculas_2023_140 (
	cod_escola int4 NULL,
	cod_aluno int4 NULL,
	nome_aluno varchar(100) NULL,
	id varchar(25) NULL,
	sexo varchar(1) NULL,
	ano varchar(12) NULL,
	cod_serie int2 NULL,
	data_matricula timestamp NULL,
	tipo_pgto int2 NULL,
	parcelas int2 NULL,
	religião varchar(50) NULL,
	turno varchar(1) NULL,
	cod_motivo_matricula int2 NULL,
	turma varchar(25) NULL,
	gratuidade int8 NULL,
	desconto int8 NULL,
	data_desligamento date NULL,
	valor numeric(23, 4) NULL
);


-- public.matriculas_2024 definition

-- Drop table

-- DROP TABLE public.matriculas_2024;

CREATE TABLE public.matriculas_2024 (
	id_matricula varchar(39) NULL,
	id_aluno varchar(25) NULL,
	ano int2 NULL,
	cod_escola int4 NULL,
	tipo_pgto varchar(6) NULL,
	parcelas int2 NULL,
	vlr_mensal numeric(23, 4) NULL,
	vlr_anual numeric(23, 4) NULL,
	perc_bolsa int8 NULL,
	perc_desconto int8 NULL,
	eh_default int4 NULL,
	dt_matricula date NULL,
	data_desligamento date NULL,
	cod_serie int2 NULL,
	id_turma varchar(25) NULL
);


-- public.matriculas_2025 definition

-- Drop table

-- DROP TABLE public.matriculas_2025;

CREATE TABLE public.matriculas_2025 (
	id_matricula varchar(39) NULL,
	id_aluno varchar(25) NULL,
	ano int2 NULL,
	cod_escola int4 NULL,
	tipo_pgto varchar(6) NULL,
	parcelas int2 NULL,
	vlr_mensal numeric(23, 4) NULL,
	vlr_anual numeric(23, 4) NULL,
	perc_bolsa int8 NULL,
	perc_desconto int8 NULL,
	eh_default int4 NULL,
	dt_matricula date NULL,
	data_desligamento date NULL,
	cod_serie int2 NULL,
	id_turma varchar(25) NULL
);


-- public.meta_turmas definition

-- Drop table

-- DROP TABLE public.meta_turmas;

CREATE TABLE public.meta_turmas (
	cod_escola float8 NULL,
	id_turma text NULL,
	sala text NULL,
	area text NULL,
	sesa text NULL,
	pedagogico text NULL,
	meta text NULL
);


-- public.ouvidoria definition

-- Drop table

-- DROP TABLE public.ouvidoria;

CREATE TABLE public.ouvidoria (
	id int4 NOT NULL,
	classificacao text NULL,
	titulo text NULL,
	"data" text NULL,
	data_recebimento text NULL,
	descricao text NULL,
	email text NULL,
	resposta_feedback text NULL,
	id_resposta_feedback text NULL,
	validacao_feedback text NULL,
	identificacao text NULL,
	manifestante text NULL,
	nota text NULL,
	numero text NULL,
	protocolo int4 NULL,
	resposta text NULL,
	colegio text NULL,
	setor text NULL,
	tipo_pessoa text NULL,
	resposta_usuario text NULL,
	validacao_resposta text NULL
);


-- public.rateio_realizado_geral definition

-- Drop table

-- DROP TABLE public.rateio_realizado_geral;

CREATE TABLE public.rateio_realizado_geral (
	tipo text NULL,
	dt_ref text NULL,
	id_escola int4 NULL,
	rateio numeric NULL
);


-- public.rateio_realizado_nv definition

-- Drop table

-- DROP TABLE public.rateio_realizado_nv;

CREATE TABLE public.rateio_realizado_nv (
	tipo text NULL,
	dt_ref text NULL,
	departamento varchar(15) NULL,
	rateio numeric NULL
);


-- public.rca_custoadm definition

-- Drop table

-- DROP TABLE public.rca_custoadm;

CREATE TABLE public.rca_custoadm (
	id_turma varchar(25) NULL,
	custo_adm_alunos numeric NULL,
	tipo text NULL
);


-- public.rca_custoeduc definition

-- Drop table

-- DROP TABLE public.rca_custoeduc;

CREATE TABLE public.rca_custoeduc (
	id_turma varchar(25) NULL,
	custo_educ_alunos numeric NULL,
	tipo text NULL
);


-- public.rca_custooutorg definition

-- Drop table

-- DROP TABLE public.rca_custooutorg;

CREATE TABLE public.rca_custooutorg (
	id_turma varchar(25) NULL,
	custo_outorg_alunos numeric NULL,
	tipo text NULL
);


-- public.rca_custopessoal definition

-- Drop table

-- DROP TABLE public.rca_custopessoal;

CREATE TABLE public.rca_custopessoal (
	id_turma varchar(25) NULL,
	custo_pessoal_alunos numeric NULL,
	tipo text NULL
);


-- public.rca_outras_receitas definition

-- Drop table

-- DROP TABLE public.rca_outras_receitas;

CREATE TABLE public.rca_outras_receitas (
	id_turma varchar(25) NULL,
	outras_receitas_alunos numeric NULL,
	tipo text NULL
);


-- public.verbas definition

-- Drop table

-- DROP TABLE public.verbas;

CREATE TABLE public.verbas (
	entidade text NULL,
	cod_departamento text NULL,
	nome_departamento text NULL,
	id_funcionario int4 NULL,
	cod_funcionario text NULL,
	nome_funcionario text NULL,
	id_verba int4 NULL,
	valor numeric(23, 4) NULL,
	referencia1 numeric(23, 4) NULL,
	referencia2 numeric(23, 4) NULL,
	referencia3 numeric(23, 4) NULL,
	cod_verba text NULL,
	verba text NULL,
	sinal text NULL,
	grupo text NULL,
	tipo_pagamento text NULL,
	ano int2 NULL,
	mes int2 NULL,
	cargo text NULL
);