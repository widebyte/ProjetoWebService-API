# Projeto - Testes Automatizados de API com HTTParty + RSpec

Neste projeto de teste automatizado com base no projeto do processo seletivo da AME voltado para teste de API utilizando o HTTParty e Rspec.

### O que é TAG

A opção --TAG(ou -T) serve para filtrar os exemplos por Tags.

### Exemplo:

````
    Describe "Trabalhando", Teste_Tag: true do
        it 'com tag' do
            puts 'usei apenas a tag teste_tag''
        end
    end
````

### O que é API?
A sigla a API corresponde às palavras em inglês "APLICATION PROGRAMMING INTERFACE". No português "Interface de Programação de Aplicações". Elas são uma forma de **INTEGRAR SISTEMAS**, possibilitando benefícios como a segurança dos dados, facilidade no intercâmbio entre informações com diferentes linguagens de programação e a monetização de acessos.

<p>JSON (JavaScript Object Notation</p>
* É um modelo para armazenamento e transmissão de informações no formato texto. Apesar de muito simples, tem sido bastante utilizado por aplicações web devido a sua capacidade de estruturar informações de uma forma bem mais **compacta** do que a conseguida pelo modelo XML, tornando mais rápido o parsing dessas informações.

<p>Sintaxe do JSON</p>
"Nome": "Bruno" - Representa uma String
"Idade": 28 - Representa um interno
"Temperatura": -2 - Representa um número negativo
"Casado": true - Representa um Booleano
"Cheio": Null - Representa valor nulo.

#### Sintaxe do JSON
Os **arrays** são delimitados por colchetes, com seus elementos separados entre vírgulas.

*[
    *"Nome":"Bruno"
    *"Sobrenome": "Batista",
    *"Idade":28
*]

Os objetos são especificados entre chaves e podem ser compostos por múltiplos pares nome/valor, por arrays e também por outros objetos. Desta forma, um objetov JSON pode representar, virtualmente, qualquer tipo de informação!

{
    "titulo": "JSON x XML",
    "resumo": "o duelo de dois modelos de representação de informações",
    "ano": 2012,
    "genero":["aventura", "ação",  "ficção"]
}

### O que é Requisição
Para uma requisição seja válida, ela deve ter um formato expecífico. O protocolo usado nas requisições é o HTTP (HyperText Transfer Protocol). Quando você acessa um site que tem "http://" no começo, você está dizendo ao seu navegador para usar esse protocolo ao carregar o site.

A requisição deve ser composta por 4 partes:

URL (uniform resource locator); Método; Header; Body

#### O que é Resposta - RESPONSE
É quando nossa requisição, por exemplo de algum pedido como num restaurante, peço um prato ao garçom (ou à API) e nosso pedido foi transferido para o servidor (cozinheiro) e o servidor deve interpretar essa informação e retornar algo.
Na realidade, a resposta tem uma anatomia bem definida, parecida com a requisição. Ela é composta por três partes:

código: HTTP, HEADER, BODY.

### O que é HEADER
O HEADER contém uma lista de detalhes sobre como o cliente quer que a mensagem seja interpretada. Os diferentes servidores ou APIs podem aceitar diferentes HEADERS.

Por exemplo, se você está em um celular e clica em algum link para outro site, como você recebe exatamente o site em versão mobile, que se encaixa perfeitamente às dimensões do seu dispositivo?

### O que é código de status
A API usa os seguintes códigos HTTP para indicar retornos de sucesso comuns:

1XX: Informações gerais;
2XX: Sucesso na requisição e na resposta;
3XX: Redirecionamento para outra URL;
4XX: ERRO (Por parte do Cliente);
5XX: ERRO (Por parte do servidor);
Portanto, o erro 404 se trata de uma requisição inválida, já que o cliente está pedindo ao servidor algo que não existe. Outro código famoso é o 200 OK, que é retornado sempre que a requisição foi entendida e retornada com sucesso.

### O que é verbos HTTP
O protocolo HTTP define métodos (às vezes referidos como verbos) para indicar a ação desejada a ser realizada no recurso identificado. O que este recurso representa, se são dados pré-existentes ou dados gerados dinamicamente, depende da implementação do servidor. Muitas vezes, o recurso corresponde a um arquivo ou a saída de um executável residente no servidor.

### O que é o verbo GET
O método GET solicita uma representação do recurso especificado. Solicitações usando GET só devem **recuperar dados** e não devem ter outro efeito.
**O GET só serve para trazer dados ou recuperar dados, listar dados (trazer informações)**

### O que é o verbo POST
O **mótodo post** solicita que o servidor aceite a entidade incluída na solicitação como um novo subordinado do **recurso** da **web** identificado pela URL. Os dados posted podem ser, por exemplo, uma anotação para recursos existentes; uma mensagem para um quadro de avisos, newsgroup, lista de discussão ou discussão de comentários; um bloco de dados que é o resultado do envio de um **formulário da web** para um processo de manipulação de dados; ou um item para adicionar a um banco de dados.
**O POST serve para enviar dados para o servidor**

### O que é o verbo PUT
O método PUT solicita que a entidade includída seja armazenada sob a **URL** fornedica. Se a **URL** se referir a um recurso já existente, ele será modificado; se a URL não apontar para um recurso existente, o servidor poderá criar o recurso com esse URL.
**PUT é utilizado para alterar os dados. Ele altera todo o campo** 

### O que é o verbo PATCH
O método PATCH aplica modificações parciais a um recurso.
**PATCH é utilizado para alterar os dados de forma parcial. Por exemplo, alterar só um nome de um cliente.**

### O que é o verbo DELETE
O método DELETE exclui o recurso especificado.

#### Outros Verbos
* Head - O método HEAD solicita uma resposta de forma idêntica ao método GET, porém sem conter o recurso **"BODY" (Corpo)**.

* Connect - O método CONNECT estabelece um túnel para conexão com o servidor a partir do recurso alvo;

* Options - O método OPTIONS é usado para descrever as opções de comunicação com recurso alvo.

* Trace - O método TRACE executa uma chamada de loopback de teste durante o caminho de conexão com o recurso alvo;

#### Entendendo o HTTParty
<p>Configurando a URL e Opções</p>

Serve para mapearmos a url base:

````
base_uri'http://google.com'
````

#### Utilizando o GET no HTTParty

````
httparty.get('https://www.google.com')
ou se estiver usando as opções do httparty
Listar.get('/')
````

#### Utilizando o POST no HTTParty

````
httparty.post('https://www.google.com')
Ou se estiver usando as opções do httparty
Listar.post('/')

* Exemplo:

````
@body:{
    email:'email@gmail.com',
    senha:'123456'
}.to_json

@header:{
    'Content-Type':'application/json'
}
````
Httparty.post('http://www.google.com' body:@body,headers : @header)
Ou se tiver usando as opções do httparty
Listar.post('https://www.google.com'body: @body,headers : @header)

````

### Comandos para realizar os testes:
* Comando para rodar um método em específico. Por exemplo, método GET:
````
rspec -fd spec/get_spec.rb
````

* Para rodar no método POST:
````
rspec -fd spec/post_spec.rb
````

* Para rodar no método DELETE:
````
rspec -fd spec/delete_spec.rb
````

* Para todos os testes:
````
rspec -fd
````

OBS: os métodos GET e DElETE, não foi possível realizar nesta API, mas o código se encontra por completo, cheguei até refazer a lógica e mesmo assim não consegui obter resposta com estes dois métodos. Fico a disposição da equipe sobre dúvidas ou suegstões que venham a ter sobre o código.




 

