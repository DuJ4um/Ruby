# Orientação a objetos utilizando ruby.

# Convenções...
# Nome de classes devemos sempre usar como primeira letra maiúsculae o restante minúscula;
# No caso de nomes compostos utilizaremos o padrão CamelCase;
# Exemplo. PessoaJuridica.
#
# Nome de métodos devemos escrever sempre em letras minúsculas;
# No caso de nomes compostos utilizaremos underscore no lugar dos espaços;
# Exemplo. falar_frase_de_efeito.

# Criação de uma CLASSE em ruby.
class Pessoa # Criando a classe e definindo o nome da mesma como Pessoa.
end # Finalizando a criação da classe.

# Definindo os métodos da classe pessoa.
class Pessoa
    def falar # Criando um método falar sem parâmetros sendo esperados.
        return "Hello World!" # Return não é obrigatório porém recomendado.
        # Retornando um valor fixo.
    end
    def gritar(texto) # Criando o método gritar esperando o parâmetro texto.
        return texto # Return não é obrigatório porém recomendado.
        # Retornando o valor do parâmetro.
    end
end

# Definindo os atributos de uma classe.
class Pessoa
    @nome = nil # @ é usado em frente ao nome da variável para que ela se torne uma variável de instáncia.
    # Isso nos permite ter a mesma variável para várias instâncias.
    @idade = nil # nil significa que nosso parámetro começa como vazio.
end

# Convenção JAVA GET and SET...
# Definindo os acessos aos atributos da classe.
# Setters -> Usados para um acesso ao atribúto onde será realizado uma atribuição de valor ao mesmo.
# Getters -> Usados para um acesso ao atribúto onde será realizado um retorno de valor do mesmo.

class Pessoa
    @nome  = nil
    @idade = nil
    def set_nome(nome) # Criação do método set_nome onde o mesmo receberá o parâmetro nome o qual o mesmo será atribuido ao atribúto nome.
        @nome = nome # Atribuindo o parâmetro informado ao atribúto.
    end # Finalizando o método.
    def set_idade(idade) # Criação do método set_idade onde o mesmo receberá o parâmetro idade qual o mesmo será atribuido ao atribúto idade.
        @idade = idade # Atribuíndo o parâmetro informado ao atribúto.
    end # Finalizando o método.
    def get_nome # Criação do método get_nome onde o mesmo realizará a função de retornar o valor de um atribúto em específico.
        return @nome # Retornando o valor do atribúto nome(RETURN É OPICIONAL PORÉM RECOMENDADO).
    end # Finalizando o método.
    def get_idade # Criação do método get_idade onde o mesmo realizará a função de retornar o valor de um atribúto em específico.
        return @idade # Retornando o valor do atribúto idade(RETURN É OPICIONAL PORÉM RECOMENDADO).
    end # Finalizando o método.
end

# Utilizando-se de attr para evitar a criação de métodos como GET and SET...
# attr_reader -> Posibilita apenas a leitura do valor do atribúto.
# attr_wirter -> Posibilita apenas a escrita do valor do atribúto.
# attr_accessor -> Posibilita a leitura e escrita do valor do atribúto.

# Para usarmos o attr_accessor precisamos realizar a definição de apenas um método para realizarmos aescrita do valor doatribúto.
# No caso é o initialize que nos permite durante a instanciação da classe definirmos o valor de cada atribúto.

class Pessoa
    attr_accessor :nome # Maneira a qual deve ser escrita para podermos realizar o attr_accessor.
    attr_accessor :idade # Maneira a qual deve ser escrita para podermos realizar o attr_accessor.
    def initialize(nome, idade) # Criando o método initialize onde o mesmo recebe os parámetros nome e idade.
        @nome = nome # Atribuindo o valor do parâmetro nome ao atribúto nome.
        @idade = idade # Atribuindo o valor do parâmetro idade ao atribúto idade.
    end # Finalizando o método.
end

# Definindo um parámetro padrão a um parâmetro para caso o mesmo não seja informado.

class Pessoa
    attr_accessor :nome
    attr_accessor :idade
    def initialize(nome = "Fulano",idade = 0) # Definindo valor padrão aos parâmetro caso os mesmo não sejam informados.
        @nome = nome
        @idade = idade
    end
    def falar(frase = "Hello World!") # Definindo valor padrão ao parâmetro caso o mesmo não seja informado.
        return frase
    end
    def gritar(frase = "HELLO WORLD!!!") # Definindo valor padrão ao parâmetro caso o mesmo não seja informado.
        return gritar
    end
end

# Criando, instanciando e utilizando os métodos de uma classe.

# Criando a classe Pessoa com os atribútos de nome e idade;
# Criando método de inicialização(initialize), esperando os parâmetros nome e idade;
# Criando um método frase_de_efeito com uma frase padrão atribuidá ao parâmetro frase e retornado seu respectivo valor ao sistema.

class Pessoa
    attr_accessor :nome
    attr_accessor :idade
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end
    def frase_de_efeito(frase = "Eu tenho a força!!!")
        return frase
    end
end

nome = "João"
idade = 19
frase = "Pelos poderes de grayskull!!!"

pessoa1 = Pessoa.new(nome, idade) # Instanciando um objeto da classe Pessoa usando-se do método initialize.

puts pessoa1.frase_de_efeito # Chamando o método frase_de_efeito usando apenas o puts sem passagem de parâmetro.
# O resultado da execução será: Eu tenho a força!!!

puts pessoa1.frase_de_efeito(frase) # Chamando o método frase_de_efeito usando apenas o puts passando um parâmetro para a frase que deve ser dita.
# O resultado da execução será: Peelos poderes de grayskull!!!

# Método alternativo.
dizerFrase = pessoa1.frase_de_efeito # Atribuindo o valor do método frase_de_efeito sem passagem de parrámetro a uma variavél.
puts dizerFrase # Imprimendo a variável que possue o valor do método associado a mesma.
dizerFrase = pessoa1.frase_de_efeito(frase) # Atribuindo o valor do método frase_de_efeito com passagem do parâmetro frase.
puts dizerFrase # Imprimindo a variável que possue o valor do método associado a mesma.