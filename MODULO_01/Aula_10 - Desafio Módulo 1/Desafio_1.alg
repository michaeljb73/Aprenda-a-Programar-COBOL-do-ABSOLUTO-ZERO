algoritmo "semnome"
// Função : Exibir as quatro operações dos números informados.
// Autor : Micael J. Bezerra
// Data : 08/01/2023
// Seção de Declarações 
var
   N1, N2 : inteiro
inicio
// Seção de Comandos
   escreval("******************************************")
   escreval("*       DESAFIO QUATRO OPERACOES         *")
   escreval("******************************************")
   escreval("[ INSTROCOES:]")
   escreval("[ Informe dois numeros inteiros, sendo o ]")
   escreval("[ primeiro maior que o segundo e ambos   ]")
   escreval("[ diferentes de zero, para exibir as qua-]")
   escreval("[ tro operacoes entre eles!              ]")
   escreval("")
   
   escreva("Digite o primeiro numero: ")
   leia(N1)
   escreva("Digite o segundo numero: ")
   leia(N2)
   escreval("")
   
   se (N1 > N2) e (N1 > 0) e (N2 > 0) entao
            escreval("Resultado operacao de soma ( N1 + N2 ) ", N1 + N2 )
            escreval("Resultado operacao de subtracao ( N1 - N2 ) ", N1 - N2 )
            escreval("Resultado operacao de multiplicacao ( N1 x N2 ) ", N1 * N2 )
            escreval("Resultado operacao de divisao ( N1 / N2 ) ", N1 / N2 )
   senao
         escreval("[[[ Os numeros informados nao estao de acordo com as instrucoes! ]]]")
   fimse
   
fimalgoritmo
