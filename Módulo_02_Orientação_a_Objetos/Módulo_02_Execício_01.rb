#|===============|#
#| Exercício 01. |#
#|===============|#
#
# Criando uma classe Pessoa com os atribútos nome e idade, onde os atribútos tenham
# que ser passados durante a instanciação da classe, e defina um método frase_afalar
# onde a frase a ser dita tenha já uma frase padrão que será "Hello World!", usando
# attr com atribútos de escrita e leitura ao mesmo tempo.
#
#|~~~~~~~~~~|#
#| RESPOSTA |#
#|~~~~~~~~~~|#
#
  class Pessoa
      attr_accessor :nome
      attr_accessor :idade
      def initialize(nome, idade)
          @nome = nome
          @idade = idade
      end
      def frase_a_falar(frase = "Hello World!")
          return frase
      end
  end
  pessoa1 = Pessoa.new("João", 19)
  puts pessoa1.frase_a_falar
  puts pessoa1.frase_a_falar("Olá Mundo!")
#
#|------------------------|#
#| Explicando o código... |#
#|------------------------|#
#
  class Pessoa # Definindo uma classe chamada Pessoa.
      attr_accessor :nome # Definindo o atributo nome com permissões de leitura e escrita.
      attr_accessor :idade # Definindo o atributo idade com permisão de leitura e escrita.
      # Criando o método de inicilização(initialize) para realizar a instanciação da classe.
      def initialize(nome, idade) # Passando os atributos que seram esperados pelo método.
          @nome = nome # O atributo nome recebe como conteúdo o conteúdo da variável nome.
          @idade = idade # O atributo idade recebe como conteúdo o contepudo da variável idade.
      end # Finalizando o método.
      # Criando o método frase a falar com um parâmetro padrão.
      def frase_a_falar(frase = "Hello World!") # Além de esperar o parámetro frase o mesmo édefinido como padrão a frase Hello World.
          return frase # Retornando a frase para o sistema.
      end # Finalizando o método.
  end # Finalizando a criação da classe.
  # Instanciando uma classe através do método de inicialização(initialize).
  pessoa1 = Pessoa.new("João", 19) # Criando a instancia pessoa1 com nome João e idade 19.
  # Lendo o código:
  # Crie a instancia de nome pessoa1 usando a classe pessoa onde os atributos
  # nome e idade são respectivamente João e 19.
  puts pessoa1.frase_a_falar # Solicitando a realização do método frase a falar sem passar parámetro específico e sua impressão.
  # A resposta do mesmo deverá ser a frase passado como padrão par ao método
  # que no caso a mesma é Hello World!.
  puts pessoa1.frase_a_falar("Olá Mundo!") # Solicitando a realização de método frase a falar passando o parámetro Ola mundo e sua impressão.
  # A resposta do mesmo deverá ser a frase passada durante o chamado do método
  # que no caso o mesmo é Olá Mundo!.