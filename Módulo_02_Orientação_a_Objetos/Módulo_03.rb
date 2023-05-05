########################################
####    Realizando Herança em RUBY  ####
####     Usando o atribúto SUPER   #####
########################################

=begin

A Herança entre classes nos permite evitar repetições de código.

Se pensarmos no caso onde em uma empresa todos são funcionários e TODOS os funcionários
possum cada um seu rg, cpf, nome, data de nasacimento e salário, temos um caso onde todos
os atendentes possuem estes atributos pois são funcionários, os motoristas por exemplo também,
e os gerentes também possuem, porém cada um deles tem cargos diferentes, oque garante
aos mesmos atributos variados como bonús por exemplo apenas para os atendentes com base
na quantidade de agendamentos que os mesmos fazem ou grau de hierarquia para os gerentes e
veículo dos motoristas que contém como informações placa, modelo, ano e quilometragem.

Pensando neste caso o qual o mesmo é um ótimo exemplo para praticarmos o uso de herança,
iremos utilizar dele para ver na prática como funciona, e além disso iremos conferir o funcionamento
do atribúto super.

=end

class Funcionario
    attr_accessor :nome
    attr_accessor :cpf
    attr_accessor :rg
    attr_accessor :data_nascimento
    attr_accessor :salario
    attr_reader :cargo
    def dados_funcionario
        puts "Nome: #{@nome}"
        puts "Cpf: #{@cpf}"
        puts "Rg: #{@rg}"
        puts "Data de nascimento: #{@data_nascimento}"
        puts "Salário: #{@salario}"
        puts "Cargo: #{@cargo}"
    end
end

class Gerente < Funcionario
    attr_accessor :hierarquia
    def initialize(nome, cpf,rg, data_nascimento, salario, hierarquia)
        @cargo = "Gerente"
        @nome = nome
        @cpf = cpf
        @rg = rg
        @data_nascimento = data_nascimento
        @salario = salario
        @hierarquia = hierarquia
    end
    def dados_funcionario
        super
        puts "Hierarquia: #{@hierarquia}"
    end
end

class Atendente < Funcionario
    attr_accessor :quantidade_de_agendamentos
    def initialize(nome, cpf,rg, data_nascimento, salario, quantidade_de_agendamentos)
        @cargo = "Atendente"
        @nome = nome
        @cpf = cpf
        @rg = rg
        @data_nascimento = data_nascimento
        @salario = salario
        @quantidade_de_agendamentos = quantidade_de_agendamentos
    end
    def dados_funcionario
        super
        puts "Quantidade de agendamentos: #{@quantidade_de_agendamentos}"
    end
end

class Motorista < Funcionario
    attr_accessor :modelo_carro
    attr_accessor :placa_carro
    attr_accessor :ano_carro
    attr_accessor :quilometragem
    def initialize(nome, cpf, rg, data_nascimento, salario, modelo_carro, placa_carro, ano_carro, quilometragem)
        @cargo = "Motorista"
        @nome = nome
        @cpf = cpf
        @rg = rg
        @data_nascimento = data_nascimento
        @salario = salario
        @modelo_carro = modelo_carro
        @placa_carro = placa_carro
        @ano_carro = ano_carro
        @quilometragem = quilometragem
    end
    def dados_funcionario
        super
        puts "Modelo do carro: #{@modelo_carro}"
        puts "Placa do carro: #{@placa_carro}"
        puts "Ano do carro: #{@ano_carro}"
        puts "Quilometragem: #{@quilometragem}"
    end
end

gerente1 = Gerente.new("João", "098.267.435-45", "23.567.849-X", "02/04/2004", "8.750,00", "Principal")
gerente2 = Gerente.new("Luara", "098.678.546-23", "56.324.789-9", "10/12/2003", "8.750,00", "Principal")

atendente1 = Atendente.new("João", "098.267.435-45", "23.567.849-X", "02/04/2004", "5.852,00", "250")
atendente2 = Atendente.new("Luara", "098.678.546-23", "56.324.789-9", "10/12/2003", "5.852,00", "250")

motoristas1 = Motorista.new("João", "098.267.435-45", "23.567.849-X", "02/04/2004", "3.987,00", "Celta", "ABC 1D23", "2015", "125.543")
motoristas2 = Motorista.new("Luara", "098.678.546-23", "56.324.789-9", "10/12/2003", "3.987,00", "Celta", "ABC 1D23", "2015", "125.543")

puts gerente1.dados_funcionario
puts gerente2.dados_funcionario

puts atendente1.dados_funcionario
puts atendente2.dados_funcionario

puts motoristas1.dados_funcionario
puts motoristas2.dados_funcionario

##################
# Lendo o código #
##################

# Realizamos a criação da classe pai de nome funcionário, pois todos independentemente do cargo são
# funcionários, mesmo que possum alguns atribútos a mais.

# Colocamos nesta classe apenas os atribútos que TODOS os outros funcionários tem, que no caso é
# apenas oque eles tem em comum.

class Funcionario # Criando e definindo o nome da classe PAI.
    attr_accessor :nome # Definindo o atribúto nome.
    attr_accessor :cpf # Definindo o atribúto cpf.
    attr_accessor :rg # Definindo o atribúto rg.
    attr_accessor :data_nascimento # Definindo o atribúto daata de nascimento.
    attr_accessor :salario # Definindo o atribúto salário.
    attr_reader :cargo # Definindo o atribúto cargo(ATENTAMENTO AO ATTR_READER).
# Iremos realizar a criação do método dados_funcionario para que seja possível visualizar
# os dados dos funcionários, aqui iremos colocar apenas os atribútos que estão implícitos
# na classe PAI funcionário.
    def dados_funcionario # Criando método dados_funcionario.
        puts "Nome: #{@nome}" # Imprimindo o nome do funcionário.
        puts "Cpf: #{@cpf}" # Imprimindo o cpf do funcionário.
        puts "Rg: #{@rg}" # Imprimindo o rg do funcionário.
        puts "Data de nascimento: #{@data_nascimento}" # Imprimindo a data de nascimento do funcionário.
        puts "Salário: #{@salario}" # Imprimindo o salário do funcionário.
        puts "Cargo: #{@cargo}" # Imprimindo o cargo do funcionário.
    end # Finalizando o método dados_funcionario.
end # Finalizando a classe PAI.

# OBSERVAÇÃO: Como usamos o attr_reader no atribúto cargo, o mesmo não poderá ser modificado pelo usuário
# torando assim a atribuição do valor do atribúto de maneira manual a ser ealizada no código.

# 2ª OBSERVAÇÃO: Como iremos usar o atribúto SUPER para evitar a reescrita desnecessária de código, precisamos
# de uma maneira de explica-lo mais facilmente.

# REPRESENTAÇÃO 2ª OBSERVAÇÃO

# classe PAI
#   def falar
#       puts "Bom-Dia!"
#   end
# end

# classe FILHA
#   def falar
#       super
#       puts "Como vai amigo?"
#   end
# end

# O SUPER faz com que o método ao ser chamado primeiro execute o código presente na sua versão na classe PAI
# e posteriormente a sua versão escrita na classe FILHA, assim evitando reescrita de código.

class Gerente < Funcionario # Criando e definindo o nome da classe FILHA.
    attr_accessor :hierarquia # Definindo o atribúto hierarquia.
    def initialize(nome, cpf,rg, data_nascimento, salario, hierarquia) # Criando o método de inicialização.
        @cargo = "Gerente" # Definindo o valor do atribúto cargo manualmente.
        @nome = nome # Definindo o valor do atribúto nome.
        @cpf = cpf # Definindo o valor do atribúto cpf.
        @rg = rg # Definindo o valor do atribúto rg.
        @data_nascimento = data_nascimento # Definindo o valor do atribúto data_nascimento.
        @salario = salario # Definindo o valor do atribúto salario.
        @hierarquia = hierarquia # Definindo o valor do atribúto hierarquia.
    end # Finalizando o método de inicialização.
    def dados_funcionario # Aqui estamos "reescrevendo" o método dados_funcionario.
        super # Realizando o uso do atribúto SUPER.
        puts "Hierarquia: #{@hierarquia}" # Imprimindo a hierarquia do funcionário.
    end # Finalizando o método dados_funcionario.
end # Finalizando a classe FILHA.

class Atendente < Funcionario # Criando e definidno o nome da classe FILHA.
    attr_accessor :quantidade_de_agendamentos # Definindo o atribúto quantidade_de_agendamentos.
    def initialize(nome, cpf,rg, data_nascimento, salario, quantidade_de_agendamentos) # Criando o método de inicialização.
        @cargo = "Atendente" # Definindo o valor do atribúto cargo manualmente.
        @nome = nome # Definindo o valor do atribúto nome.
        @cpf = cpf # Definindo o valor do atribúto cpf.
        @rg = rg # Definindo o valor do atribúto rg.
        @data_nascimento = data_nascimento # Definindo o valor do atribúto data_nascimento.
        @salario = salario # Definindo o valor do atribúto salario.
        @quantidade_de_agendamentos = quantidade_de_agendamentos # Definindo o valor do atribúto quantidade_de_agendamentos.
    end # Finalizando o método de inicialização.
    def dados_funcionario # Aqui estamos "reescrevendo" o método dados_funcionario.
        super # Realziando o uso do atribúto SUPER.
        puts "Quantidade de agendamentos: #{@quantidade_de_agendamentos}" # Imprimindo a quantidade de agendamentos do funcionário.
    end # Finalizando o método dados_funcionario.
end # Finalizando a classe FILHA.

class Motorista < Funcionario # Criando e definindo o nome da classe FILHA.
    attr_accessor :modelo_carro # Definindo o valor do atribúto modelo_carro.
    attr_accessor :placa_carro # Definindo o valor do atribúto placa_carro.
    attr_accessor :ano_carro # Definindo o valor do atribúto ano_carro.
    attr_accessor :quilometragem # Definindo o valor do atribúto quilometragem.
    def initialize(nome, cpf, rg, data_nascimento, salario, modelo_carro, placa_carro, ano_carro, quilometragem) # Criando o método de inicialização.
        @cargo = "Motorista" # Definindo o valor do atribúto cargo manualmente.
        @nome = nome # Definindo o valor do atribúto nome.
        @cpf = cpf # Definindo o valor do atribúto cpf.
        @rg = rg # Definindo o valor do atribúto rg.
        @data_nascimento = data_nascimento # Definindo o valor do atribúto data_nascimento.
        @salario = salario # Definindo o valor do atribúto salario.
        @modelo_carro = modelo_carro # Definindo o valor do atribúto modelo_carro.
        @placa_carro = placa_carro # Definindo o valor do atribúto placa_carro.
        @ano_carro = ano_carro # Definindo o valor do atribúto ano_carro.
        @quilometragem = quilometragem # Definindo o valor do atribúto quilometragem.
    end # Finalizando ométodo de inicialização.
    def dados_funcionario # Aqui estamos "reescrevendo" o método dados_funcionario.
        super # Realizando o uso do atribúto SUPER.
        puts "Modelo do carro: #{@modelo_carro}" # Imprimindo o valor do atribúto modelo_carro.
        puts "Placa do carro: #{@placa_carro}" # Imprimindo o valor do atribúto placa_carro.
        puts "Ano do carro: #{@ano_carro}" # Imprimindo o valor do atribúto ano_carro.
        puts "Quilometragem: #{@quilometragem}" # Imprimindo o valor do atribúto quilometragem.
    end # Finalizando o método dados_funcionario.
end # Finalizando a classe FILHA.

# Criando a instancia gerente1 que tem como classe PAI Funcionario e como classe filha Gerente.
gerente1 = Gerente.new("João", "098.267.435-45", "23.567.849-X", "02/04/2004", "8.750,00", "Principal")
# Criando a instancia gerente2 que tem como classe PAI Funcionario e como classe filha Gerente.
gerente2 = Gerente.new("Luara", "098.678.546-23", "56.324.789-9", "10/12/2003", "8.750,00", "Principal")
# Criando a instancia atendente1 que tem como classe PAI Funcionario e como classe filha Atendente.
atendente1 = Atendente.new("João", "098.267.435-45", "23.567.849-X", "02/04/2004", "5.852,00", "250")
# Criando a instancia atendente2 que tem como classe PAI Funcionario e como classe filha Atendente.
atendente2 = Atendente.new("Luara", "098.678.546-23", "56.324.789-9", "10/12/2003", "5.852,00", "250")
# Criando a instancia atendente1 que tem como classe PAI Funcionario e como classe filha Motorista.
motoristas1 = Motorista.new("João", "098.267.435-45", "23.567.849-X", "02/04/2004", "3.987,00", "Celta", "ABC 1D23", "2015", "125.543")
# Criando a instancia atendente2 que tem como classe PAI Funcionario e como classe filha Motorista.
motoristas2 = Motorista.new("Luara", "098.678.546-23", "56.324.789-9", "10/12/2003", "3.987,00", "Celta", "ABC 1D23", "2015", "125.543")
# Imprimindo os dados do funcionário gerente1
puts gerente1.dados_funcionario
# Imprimindo os dados do funcionário gerente2
puts gerente2.dados_funcionario
# Imprimindo os dados do funcionário atendente1
puts atendente1.dados_funcionario
# Imprimindo os dados do funcionário atendente2
puts atendente2.dados_funcionario
# Imprimindo os dados do funcionário motorista1
puts motoristas1.dados_funcionario
# Imprimindo os dados do funcionário motorista2
puts motoristas2.dados_funcionario


###################################################
## MODO ALTERNATIVO DE ESCRITA UTILZIANDO SUPER  ##
##       TAMBÉM NO MÉTODO DE INICIALIZAÇÃO       ##
###################################################

# Para usarmos desta mnaeira devemos passar os argumentos necessarios
# para que o método na classe PAI funcione.

class Funcionario
    attr_accessor :nome
    attr_accessor :cpf
    attr_accessor :rg
    attr_accessor :data_nascimento
    attr_accessor :salario
    attr_reader :cargo
    def dados_funcionario
        puts "Nome: #{@nome}"
        puts "Cpf: #{@cpf}"
        puts "Rg: #{@rg}"
        puts "Data de nascimento: #{@data_nascimento}"
        puts "Salário: #{@salario}"
        puts "Cargo: #{@cargo}"
    end
    def initialize(nome, cpf, rg, data_nascimento, salario)
        @nome = nome
        @cpf = cpf
        @rg = rg
        @data_nascimento = data_nascimento
        @salario = salario
    end
end

class Gerente < Funcionario
    attr_accessor :hierarquia
    def initialize(nome, cpf,rg, data_nascimento, salario, hierarquia)
        super(nome, cpf, rg, data_nascimento, salario) # Passando os argumentos necessários para
        # o funcionamento do método que está na classe PAI.
        @cargo = "Gerente"
        @hierarquia = hierarquia
    end
    def dados_funcionario
        super
        puts "Hierarquia: #{@hierarquia}"
    end
end

class Atendente < Funcionario
    attr_accessor :quantidade_de_agendamentos
    def initialize(nome, cpf,rg, data_nascimento, salario, quantidade_de_agendamentos)
        super(nome, cpf, rg, data_nascimento, salario) # Passando os argumentos necessários para
        # o funcionamento do método que está na classe PAI.
        @cargo = "Atendente"
        @quantidade_de_agendamentos = quantidade_de_agendamentos
    end
    def dados_funcionario
        super
        puts "Quantidade de agendamentos: #{@quantidade_de_agendamentos}"
    end
end

class Motorista < Funcionario
    attr_accessor :modelo_carro
    attr_accessor :placa_carro
    attr_accessor :ano_carro
    attr_accessor :quilometragem
    def initialize(nome, cpf, rg, data_nascimento, salario, modelo_carro, placa_carro, ano_carro, quilometragem)
        super(nome, cpf, rg, data_nascimento, salario) # Passando os argumentos necessários para
        # o funcionamento do método que está na classe PAI.
        @cargo = "Motorista"
        @quilometragem = quilometragem
    end
    def dados_funcionario
        super
        puts "Modelo do carro: #{@modelo_carro}"
        puts "Placa do carro: #{@placa_carro}"
        puts "Ano do carro: #{@ano_carro}"
        puts "Quilometragem: #{@quilometragem}"
    end
end

gerente1 = Gerente.new("João", "098.267.435-45", "23.567.849-X", "02/04/2004", "8.750,00", "Principal")
gerente2 = Gerente.new("Luara", "098.678.546-23", "56.324.789-9", "10/12/2003", "8.750,00", "Principal")

atendente1 = Atendente.new("João", "098.267.435-45", "23.567.849-X", "02/04/2004", "5.852,00", "250")
atendente2 = Atendente.new("Luara", "098.678.546-23", "56.324.789-9", "10/12/2003", "5.852,00", "250")

motoristas1 = Motorista.new("João", "098.267.435-45", "23.567.849-X", "02/04/2004", "3.987,00", "Celta", "ABC 1D23", "2015", "125.543")
motoristas2 = Motorista.new("Luara", "098.678.546-23", "56.324.789-9", "10/12/2003", "3.987,00", "Celta", "ABC 1D23", "2015", "125.543")

puts gerente1.dados_funcionario
puts gerente2.dados_funcionario

puts atendente1.dados_funcionario
puts atendente2.dados_funcionario

puts motoristas1.dados_funcionario
puts motoristas2.dados_funcionario