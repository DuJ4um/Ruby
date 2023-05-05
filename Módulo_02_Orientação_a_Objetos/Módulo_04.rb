##################
##  CONSTANTES  ##
##################

# Constantes são usadas para armazenar dados os quais não serão alterados
# ou que iram possuir pouquíssimas alterações durante a execução do sistema.

# Para declararmos uma constante basta escrevermos o nome da mesma apenas em
# maiúsculo e atribuirmos a mesma um valor.

ABC = 123 # Declarando uma constante.

############
##  SELF  ##
############

# O self nós permite acesso a uma classe não necessitarmos instanciala.

class Geral # Definindo a classe Geral.
    def self.hello_world # Definindo o método hello_world com o atribúto self.
        puts "Hello World!! #{self}" # Imprimindo o conteúdo e o self.
    end # Finalizando o método.
end # Finalizando a classe.

Geral.hello_world # Chamando o método hello_world que está presente na classe Geral sem instanciar a classe GERAL.

##########################
##  CLASSES CONSTANTES  ##
##########################

# Está função busca um dado dentro de uma classe específica,
# oque nos possibilíta usar a mesma sem nescessidade de instanciala.

class Geral # Definindo a classe Geral.
    PI = 3.14 # Definindo uma constante.
end # Finalizando a classe.

puts Geral::PI # Chamando o valor da constante PI que está presente na classe Geral.