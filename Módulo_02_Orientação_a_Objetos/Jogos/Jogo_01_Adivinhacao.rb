#########################
## JOGO DE ADIVINHAÇÃO ##
#########################

class AdivinharNumero
    attr_reader :numero
    attr_reader :venceu
    def initialize
        @numero = Random.rand(1..10)
        @venceu = false
    end
    def adivinhar_numero(numero = 0)
        if numero > @numero then
            return puts "O número é muito alto!"
        elsif numero < @numero then
            return puts "O núemro é muito baixo!"
        else
            @venceu = true
            return puts "Você acertou o número!"
        end
    end
end
jogo = AdivinharNumero.new
puts "Bem-Vindo ao adivinha número!"
until jogo.venceu do
    puts "Chute um número..."
    numero = gets.chomp.to_i
    puts jogo.adivinhar_numero(numero)
end

########################
## Leitura do código. ##
########################

class AdivinharNumero
    attr_reader :numero
    attr_reader :venceu
    def initialize
        @numero = Random.rand(1..10)
        @venceu = false
    end
    def adivinhar_numero(numero = 0)
        if numero > @numero then
            return puts "O número é muito alto!"
        elsif numero < @numero then
            return puts "O núemro é muito baixo!"
        else
            @venceu = true
            return puts "Você acertou o número!"
        end
    end
end
jogo = AdivinharNumero.new
puts "Bem-Vindo ao adivinha número!"
until jogo.venceu do
    puts "Chute um número..."
    numero = gets.chomp.to_i
    puts jogo.adivinhar_numero(numero)
end

#################
## Explicação. ##
#################

# Criação da classe AdivinharNumero, a mesma irá possuir os atributos
# núemro onde o mesmo deverá ser adivinhado e o atributo venceu o qual
# será usado para identificarmos se o jogador venceu ou não o jogo.

# Criação do método de initialização dos objetos da classe AdivinharNumero
# tendo como padrão no atribúto nome um número randomico gerado pela classe
# random com método rand, e o atribúto venceu como false para indicar
# que nosso jogador ainda não ganhou o jogo.

# Criamos o método adivinhar_numero onde o mesmo irá realizar a verificação
# do núemro informado pelo usuário e retornará como resposta ao mesmo a frase
# "Você acertou o número!" caso tenha acertado o número, "O número é muito baixo!"
# caso o número informado seja menor que o informado pelo usuário, e a frase
# "O número é muito alto!" caso o número informado pelo usuário seja maior.

# OBS: Dentro da condição onde o número informado for o mesmo que o gerado
# também será atribuido um novo valor a variavél venceu do objeto, para informar
# que o usuário venceu o jogo.

# Iniciamos o jogo atribuindo o mesmo a variavél jogo.

# Imprimimos uma frase d eboas vindas e anunciamos o nome do jogo.

# Realizamos a utilizaçãodo until onde o mesmo executará o código contido
# em si até que a variavél a qual ele verifica se é false se torne true.

# Pedimos para que o usuário chute um número até o mesmo o acerte.

#########
## FIM ##
#########