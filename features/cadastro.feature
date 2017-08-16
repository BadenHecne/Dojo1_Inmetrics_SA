#language: pt
#utf-8

@all
Funcionalidade: Efetuar login site para cadastrar e editar um funcionario
Eu como usuario do site ORANGEHRM
Quero logar no site
Para efetuar o cadastro e edição um funcionario

    @cadastro
	Cenario: Efetuar login no site para cadastrar um funcionario
	Dado que estou na tela de login do site ORANGEHRM e realizo o login
	Quando estou na home acesso a tela de cadastro
	Quando realizo o cadastro
	Entao vejo a mensagem cadastro realizado com sucesso

    @edicao
	Cenario: Efetuar login no site e editar um funcionario existente
	Dado que estou na tela de login do site ORANGEHRM e realizo o login
	Quando estou na home acesso a tela para editar o cadastro
	Quando realizo a edicao
	Entao vejo a mensagem edicao realizada com sucesso