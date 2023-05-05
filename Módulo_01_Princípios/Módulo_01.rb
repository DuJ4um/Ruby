# Cerquilia é usada para comnetários comapenas uma linha.

=begin

=begin é usado para iniciar um comentário
e o =end delimita o final deste comentário
possibilitando assim comentários de várias linhas

=end

puts "Hello World!" # Usando para saída de dados.

gets # Usado para entrada de dados.

gets.chomp # Incremento chomp ao final é usado apra remover um \n interno.

gets.to_s # Incremento to_s transforma qualquer dado da entrada em String.
gets.to_i # Incremento to_i transforma qualquer dado da entrada em Inteiro.
gets.to_f # Incremento to_f transforma qualquer dado de entrada em Float.
gets.to_sym # Incremento to_sym tranforma qualquer dado de entrada em Símbolo.

gets.comp.to_s # Podemos também utilizar o comando chomp e to em conjunto.

v1 = 1 # Definindo uma váriavel manualmento no código.
:v1 = 1 # Definindo uma variável manualmente no código com a mesma tando seu local de memória sempre o mesmo após ser instanciado.

v1 = gets.comp.to_i # Agregando uma entrada de dados a uma variável.

puts "Hello World!" + v1 # Concatenando (Este método acaba por criar um objeto novo)

puts "Hello World! #{v1}" # Concatenando (Pode ser usado para códigos funcionais também)
# Funciona apenas com aspas duplas ("").

v1 = 1 + 1 # Realizando uma soma.
v1 = 1 - 1 # Realizando uma subtração.
v1 = 1 * 1 # Realizando uma multiplicação.
v1 = 1 ** 1 # Realizando uma exponenciação.
v1 = 1 / 1 # Realizando uma divisão.
v1 = 1 % 1 # Realizando Módulo.
# Consiste em realizar a divisão "exata" de um número porém
# sem mostrar suas casas decimais.

v1 == v2 # Realizando uma ompaaração.
v1 < v2 # Realizando um menor que.
v1 > v2 # Realizando um maior que.
v1 <= v2 # Realizando um menor ou igual que.
v1 >= v2 # Realizando um maior ou igual que.
v1 != v2 # Reaizando um diferente que.
v1 <=> v2 # Realizando um SPACESHIP
# Se ambos igual retorna 0, se elemento da direita maior retorna -1,
# se elemento da esquerda maior retorna 1.

v1 = 1 # Atribuindo um valor.
v1 -= 1 # Atribuindo seu mesmo valor com uma soma.
v1 += 1 # Atribuindo seu mesmo valor com uma subtração.
v1 *= 1 # Atribuindo seu mesmo valor com uma multiplicação.
v1 /= 1 # Atribuindo seu mesmo valor com uma divisão.
v1 %= 2 # Atribuindo seu mesmo valor com um módulo.
v1 **= 2 # Atribuindo seu mesmo valor com uma exponenciação.

# Estruturação da condicional SE, SENÃO SE e SENÃO.
if v1 <= v1 then
    puts "SE"
elsif v1 <v1 then
    puts "SENÃO SE"
else
    puts "SENÃO"
end
# O uso do then é opcional porém recomendado;
# if -> SE;
# elsif -> SENÃO SE;
# else -> SENÃO;
# end -> Finaliza o fim da execução.

# Estruturação da condicional A MENOS QUE.
unless v1 == v2 then
    puts "A MENOS QUE"
else then
    puts "SENÃO"
end
# O uso do then é opcional porém recomendado;
# unless -> A MENOS QUE;
# ELSE -> SENÃO;
# end -> Sinaliza o fim da execução.

# Estruturação da condicional CASE e WHEN (CASO... e FOR...).
case v1
    when 1 then
        puts "CASO v1 FOR 1"
    when 2 then
        puts "CASO v1 FOR 2"
    else
        puts "CASO SENÃO(Caso nenhum when for compatível)"
end
# O uso do then é opcional porém recomendado;
# case -> CASO;
# when -> FOR;
# else -> SENÃO;
# end -> Sinaliza o fim da execução.

# Estruturação if com operador lógido E(AND ... &&).
if (v1 <= 1) and (1 <= v1) then
    puts "CONDIÇÕES ATENDIDAS"
end
# Variação usando && ao invés da escrita AND.
if (v1 <= 1) && (1 <= v1) then
    puts "CONDIÇÕES ATENDIDAS"
end
# O uso do then é opcional porém recomendado;
# and -> E;
# || -> E.

#Estruturação if com operador lógico  OU(OR ... ||).
if (v1 <= 1) or (1 <= v1) then
    puts "UMA DAS CONDIÇÕES ATENDIDAS"
else then
    puts "APENAS UM OU NENHUMA CONDIÇÃO ATENDIDA"
end
# Variação usando || ao invés da escrita OR.
if (v1 <= 1 ) || (1 <= v1) then
    puts "UMA DAS CONDIÇÕES ATENDIDAS"
else then
    puts "APENAS UMA OU NENHUMA CONDIÇÃO ATENDIDA"
end
# O uso do then é opicional porém recomendado;
# or -> OU;
# || -> OU;

# Estruturação if com operador lógico de negação.
if !(v1 < 1) then
    puts "NEGAÇÃO ATENDIDA"
else then
    puts "NEGAÇÃO NÃO ATENDIDA"
end
# O uso do then é opcional porém recomendado;
# !("CONDIÇÃO") ~> NEGAÇÃO.

# Estrutura de repetição ENQUANTO(verdadeiro).
i = 0
while i < 10 then
    puts "SOU VERDADEIRO - #{i}"
    i += 1
end
# O uso do then é opcional porém recomendado;
# while -> ENQUANTO(verdadeiro).

# Estrutura de repetição ENQUANTO(falso).
i = 0
until i < 10 then
    puts "SOU FALSO - #{i}"
    i += 1
end
# O uso do then é opcional porém recomendado;
# until -> ENQUANTO(falso).

# Vetores e Arrays.
v1 = [] # Criando um ARRAY ou VETOR.
v1.push(1) # Inserindo um valor específico ao final da lista.
v1[0] = 1 # Inserindo um valor específico a um índice específico.
v1.delete(1) # Deletando um valor específico.
v1.delete(v1[0]) # Deletando um valor específico de um índice específico.

# Criando um HASHE.
i = { "a" => "123", "b" => "456"} # Este hashe sempre muda seu local de memória quando instanciado.
i = { :a => "123", :b => "456"} # Este hashe mantem seu local de memória após ser isntanciado.
i = { a: "123", b: "456"} # Este hashe geralmente é usado para JASON e também mantem seu local de memória após ser instanciado.

# Criando uma estrutura each in line(usado para percorrer um array ou vetor por completo).
i.each { |x| puts x}
# Leitura literal do código:
# Passe por todos os itens do array(ou vetor) i e chame cada elemento de x e imprima x.

# Criando uma estrutura each "multi line"(usado também para percorrer um array ou vetor por completo).
i.each do |x|
    puts x * 0
    puts x * 1
    puts x * 2
    puts x * 3
end

# Criando uma estrutura de repetição com intervalos.
(1...5).each { |i| puts i } # ...(3 Pontos) Esclui o ultimo número.
(1..5).each { |i| puts i } # ..(2 Pontos) Inclui o ultimo número.

# Criando uma estrutura de repetição fixa.
5.times { puts "REPITINDO" }
# Estrutura alternativa.
5.times { |i| puts "#{i}" }
# Leitura do código:
# Repita 5 vezes, chame cada vez de i e imprima i.