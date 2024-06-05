##### 04/06/2024

Curso de Flutter: praticando arquitetura e padrão MVC

@01-Arquitetura ou padrão? 

@@01
Apresentação

Boas-vindas ao curso de Flutter: praticando arquitetura e padrão MVC. Eu sou o Matheus Alberto e serei seu instrutor!
Audiodescrição: Matheus é um homem de pele clara, tem olhos castanhos, cabelos curtos, lisos e também castanhos. Usa camiseta na cor preta. Ao fundo, uma iluminação degradê do azul para o roxo. À esquerda, uma prateleira com uma planta e um quadro.
O que aprenderemos
Nesse curso desenvolveremos o aplicativo Meu Pequeno Grimório. Nele, poderemos cadastrar livros que lemos ou queremos ler.

Para isso, buscaremos um livro pela API do Google Books, depois adicionaremos no Grimório. Feito isso, poderemos adicionar comentários, data de início e final da leitura, além de editar e excluir essas informações.

No desenvolvimento desse projeto, teremos a participação de outras equipes. Sendo assim, precisaremos manter sempre uma comunicação ativa para discutirmos e escolhermos a melhor opção para ser desenvolvida no aplicativo.

Também teremos um papo com uma pessoa especialista. A partir dessa troca, descobriremos informações referentes a escalabilidade do projeto, trabalho em equipe e uso dos componentes que vão contribuir na tomada de decisão quando recebemos o projeto no Figma.

Aprenderemos como é a perspectiva de uma pessoa desenvolvedora que trabalha no meio do processo. Não criaremos tudo do zero, mas agregaremos tudo o que foi feito pelas equipes em um só projeto.

Trabalharemos com MVC, entenderemos o significado dessa sigla e o motivo pelo qual essa é a melhor opção para o projeto. Além disso, descobriremos como cada pessoa desenvolvedora conseguirá unir todo o desenvolvimento no aplicativo.

Pré-requisitos
Para fazer esse curso é importante que você tenha:

Conhecimentos intermediários em Flutter;
Formação inicial de Flutter;
Formação de gerenciamento de estados.
Te esperamos no primeiro vídeo do curso.

Até lá!

@@02
Preparando o ambiente

Antes de iniciar o desenvolvimento do projeto, é importante que você saiba que será dividido em duas partes. Sendo assim, será necessário baixar dois arquivos, um no começo e outro no meio do curso.
Não se preocupe, pois avisaremos o momento certo para isso!
Baixando Arquivos e Configurando Bibliotecas
Os arquivos que serão baixados contém todos os itens necessários para a continuação do curso. Porém, é importante que as bibliotecas já estejam preparadas para receber esses arquivos.

O primeiro requisito é ter o Flutter na versão 3.10 ou superior. Outro ponto importante são as bibliotecas. Mesmo que o próprio PubSpec já contenha todas as bibliotecas nas respectivas versões, você precisa confirmar se elas estão nas versões apresentadas neste curso.

Os pacotes são os seguintes:
sqflight, na versão 2.2.8;
flutter_svg, na versão 2.0.7;
Pacote do http, na versão 1.1.0.
Após realizar o download e extrair o arquivo, confirme se todos foram baixados e se no pubspec.ymlas bibliotecas estão com as versões corretas.

Lembrando que essa mesma verificação deverá ser feita quando a segunda parte do projeto for baixada.
Após concluir essa etapa, podemos iniciar o curso.

Te esperamos no vídeo seguinte!

@@03
Preparando o ambiente: meu pequeno grimorio

Olá, Dev!
Matheus por aqui!

Você está iniciando seu mergulho no curso sobre Flutter com Arquitetura: MVC!

Vamos preparar o ambiente baixando o projeto?

1) Baixando o projeto
Para acompanhar o desenvolvimento deste curso, é importante que você tenha todos os arquivos necessários do projeto inicial.

2) Do que preciso para rodar o projeto?
Ter uma IDE, que pode ser o Android Studio, instalada na sua máquina;
Ter a SDK do Flutter na versão 3.10.5;
Ter as seguintes bibliotecas instaladas:
sqflite: ^2.2.8+4
flutter_svg: ^2.0.7
http: ^1.1.0
3) O que vou aprender neste curso?
Vamos aprender sobre arquitetura no Flutter, com o padrão MVC (Model-View-Controller)! Entenderemos como aplicar o MVC em um projeto, e quais as vantagens e desvantagens de utilizar essa arquitetura.

4) Como fazer este curso?
Durante sua jornada, você encontrará atividades práticas e teóricas para testar seus conhecimentos, material extra para se aprofundar nos seus estudos, e desafios para praticar suas habilidades.

Vamos conhecer algumas dicas para fazer bem este curso?

Levante a mão e participe! Tudo bem se não conseguir realizar alguma atividade, isso faz parte do processo. Procure o fórum ou nossa comunidade no Discord e aproveite para tirar dúvidas, para interagir com outras pessoas e ajudar um colega (ensinar é uma ótima forma de aprender);
Pratique! Faça, teste, replique as atividades do curso, pois assim ganhará confiança e fixará melhor o conteúdo;
Foque, mas descanse! Caso sinta-se cansado(a) ou não esteja entendendo algo, dê uma pausa, tome uma água, e depois assista novamente as videoaulas.
O importante é persistir até o fim! Preparado(a)? Podemos começar.

Bons estudos!

Um abraço,

Matheus Alberto.

https://github.com/alura-cursos/3116-Flutter-MVC/archive/refs/heads/Aula1.zip

https://developer.android.com/studio

https://docs.flutter.dev/get-started/install

@@04
Iniciando o projeto

Antes de iniciar o projeto, vamos entender nosso contexto de trabalho.
Contexto de trabalho
Estamos trabalhando em um grupo de pessoas desenvolvedoras e nossa tarefa é reproduzir o aplicativo chamado Meu Pequeno Grimório.

A partir desse aplicativo, poderemos coletar livros do Google Books, por meio de uma integração à API. Também poderemos encontrar livros que queremos ler ou que já lemos, além de salvá-los como favoritos.

Dessa forma, teremos uma coleção de livros favoritos que já lemos e que poderão ser exibidos no nosso aplicativo.

A equipe de design desenvolveu esse projeto, o Figma e nos enviou. Vamos analisá-lo!

Analisando o projeto no Figma
Ao abrir o Figma encontramos a Página Inicial Do Meu Pequeno Grimório. Nela, poderemos fazer o login e iniciar a navegação.

Depois disso, temos a Página Inicial pós-login, que pode estar vazia ou com algum conteúdo. Inicialmente ficará vazia.

É importante prestarmos atenção nesse fluxo de telas para descobrirmos o que precisa ser desenvolvido no aplicativo.
A tela seguinte se chama Adicionar, nela poderemos procurar pelos livros. Após escolher um, somos direcionados para a página Detalhes, em que podemos adicionar o livro no nosso grimório.

Depois, teremos um Formulário para adicionar informações como data de início e final da leitura, resenhas e comentários.

Na sequência do arquivo do Figma temos uma tela da Home ilustrando a Home do aplicativo quando já tiver livros cadastrados.

Também temos duas telas diferentes nas quais poderemos editar as informações referente ao início e conclusão da leitura e comentários. Por fim, há um formulário de edição das informações que conseguimos modificar.

Agora que já conhecemos todo o projeto, podemos começar a desenvolvê-lo.

Desenvolvendo a tela inicial
A tela inicial tem uma imagem de fundo em degradê que vai do roxo escuro para o roxo mais claro com estrelas espalhadas. No centro temos o logo, que possui o texto "Meu Pequeno Grimório" e o desenho de um livro de capa roxa com uma estrela e um marcador de página. Abaixo, encontramos o botão Começar.

Página inicial do aplicativo Meu Pequeno Grimório, conforme descrito acima

Sabendo disso, abrimos o Visual Studio Code para começarmos a desenvolver a interface.

Na pasta "lib", criaremos um novo arquivo. Para isso, clicamos como botão direito e depois em "New File". Nomeamos de inicio.dart.

Esse arquivo será um Flutter stateless widget. Então, escrevemos fstless e apertamos "Enter". Feito isso, temos a seguinte estrutura de código:

class Inicio extends StatelessWidget {
const Inicio({ Key? key }): super(key: key);

    @override
    Widget build (BuildContext context) {
        return Container();
    }
}
COPIAR CÓDIGO
Na primeira linha fazemos o import de ''package:flutter/material.dart.

Depois, na linha 6, apagamos o Container() e escrevemos Colum(). Nos parênteses, passamos children: <Widget>[].

Dentro das chaves, passaremos a imagem utilizando SvgPicture.asset(). Nos parênteses adicionamos aspas duplas e passamos o caminho da logo /assests/images/logo.svg.

Na linha abaixo, para adicionar o botão, escrevemos ElevatedButton(). Nos parênteses passamos onPressed: (){}, child: Text("Entrar").

import 'package:flutter/material.dart';
import 'package: flutter_svg/svg.dart';

class Inicio extends StatelessWidget { 
const Inicio({ Key? key }): super(key: key);

    @override
    Widget build (BuildContext context) {
        return Column(children: <Widget>[
            SvgPicture.asset("/assets/images/logo.svg"),
            ElevatedButton (onPressed: (){}, child: Text("Entrar"))
],); // <Widget>[] // Column
    }
}
COPIAR CÓDIGO
Feito isso, salvamos o arquivo inicio.dart. Nada acontece nosso aplicativo, pois não especificamos qual seria a tela inicial.

main.dart
Então, no arquivo main.dart, na linha 15, apagamos o widget Container() e passamos Inicio(). Dessa forma:

import 'package:flutter/material.dart';

void main() {
  runApp(const Grimorio());
}

class Grimorio extends StatelessWidget {
  const Grimorio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grimório",
      theme: ThemeData.dark(useMaterial3: true),
      home: Container(),
    );
  }
}
COPIAR CÓDIGO
Salvamos. Depois, para recarregar o aplicativo, clicamos no botão "Hot Restart" no topo direito da tela, identificado por uma seta circular.

Teremos que fazer uma pausa neste processo de desenvolvimento, pois precisamos responder algumas perguntas muito importantes para identificarmos problemas do nosso projeto.

Até o momento desenvolvemos de forma livre. Esse é um método comum em aplicações pequenas e que não possui integração de outras equipes.

Porém, nós temos uma equipe. Por isso, pensamos em algumas perguntas-chave que serão úteis para identificar se o projeto está fluindo de maneira coesa.

O projeto está escalável? Ou seja, da forma que estamos escrevendo o código poderá ser expandido de forma fácil e orgânica?
O código está sendo desenvolvido de forma com que toda a equipe possa dar continuidade e realizar a manutenção?
Qual facilidade temos em identificar onde está o erro para que possa ser reparado?
Vamos reutilizar os componentes visuais ou criaremos um para cada página?
Qual será a lista de requisitos? O que precisa ser entregue nesse projeto?
Ao analisarmos o Figma, identificamos a interação da pessoa usuária com o projeto Meu Pequeno Grimório. A partir disso, também podemos anotar quais funcionalidades precisaremos desenvolver, criando uma lista de requisitos.

Sabendo disso, agora podemos chamar uma pessoa especialista para nos ajudar a iniciar o projeto de forma adequada.

Te esperamos no próximo vídeo!

@@05
Arquitetura e planejamento

Matheus: Nesse vídeo, conversaremos com o especialista Ricarth Lima que nos orientará em relação a escalabilidade do projeto, reutilização de componente visuais e outros temas.
Seja Bem-Vindo, Ricarth!

Ricarth: Olá! Sou o Ricarth Lima, instrutor de Flutter aqui na Alura.

Audiodescrição: Ricarth é um homem de cabelo crespo volumoso. Tem o rosto oval com olhos castanho escuro e nariz e boca largos. Tem uma barba curta, mas volumosa. Usa óculos de armação retangular preta. Está com uma camisa de preta e fone de ouvido.
Matheus, me conte mais sobre o projeto que você e sua equipe vão desenvolver.

Matheus: O projeto que vamos desenvolver é o aplicativo Meu Pequeno Grimório.

Ricarth: Muito bacana! Analisei o projeto no Figma e achei muito interessante, pois não é grande nem muito pequeno.

Explorando Padrões de Projeto e Arquitetura
Ricarth: É bom começarmos a pensar sobre a arquitetura, que é justamente o motivo pelo qual você me chamou, certo?

Matheus: Exatamente, Ricarth!

Ricarth: Ótimo! Vamos refletir sobre a arquitetura de software e como isso vai impactar o desenvolvimento deste projeto.

Crescemos ouvindo a palavra arquitetura, certo? Para iniciarmos, é muito importante entendermos o que ela significa no mundo comum, sem ser no software.

Para isso, trouxe a definição de um dicionário:

"Arquitetura é a arte e a técnica de estruturar e organizar os espaços para criar ambientes para abrigar os mais diversos tipos de atividades humanas"
Suponhamos que construiremos uma casa ou um prédio. Nesse caso, não vamos simplesmente chamar toda a equipe, definir a pessoa que construirá o banheiro, a outra que construirá a sala e no final juntar tudo. Não é assim que funciona, certo?

Precisamos de um planejamento, criar uma planta do projeto para sabermos as medidas, entender quais serão os materiais necessários, entender onde cada pessoa irá trabalhar. É dessa forma que é possível construir algo que se sustente.

O mesmo acontece com a arquitetura de software. Esse é um campo do conhecimento dentro da engenharia de software que estuda como tornar o desenvolvimento de aplicações de software mais eficiente usando estudo e ciência.

Assim como a arquitetura comum, também trabalhamos com o proposito de estruturar e organizar o software.
Matheus, eu percebi que você estava muito preocupado com a escalabilidade do projeto, como vamos reutilizar componentes e fazer manutenções. Mas, não se preocupe! Todas essas perguntas podem ser respondidas com arquitetura e com padrões de projeto.

Matheus: Maravilha, Ricarth! Você falou um pouco sobre padrões de projetos, isso me fez pensar que no mobile, talvez a arquitetura não seja algo tão amplo que possamos implementar.

Ricarth: Sim, Matheus. É importante saber que há vários tipos de arquitetura. Existe a arquitetura cliente-servidor, que foca na comunicação cliente-servidor, a de micro-serviços, barramentos, pipelines, entre outras.

Porém, quando falamos de desenvolvimento mobile, ou seja, de desenvolvimento de aplicações para dispositivos móveis, geralmente usamos a arquitetura de camadas.

Existe até mesmo uma documentação do Google que recomenda a utilização da arquitetura de camadas.
Quando desenvolvemos em Flutter ou em Android nativo, já temos camadas bem definidas em ambos os ambientes. Temos uma parte onde é distribuída a lógica e outra onde construímos o visual.

A ideia de arquitetura de camada é um pouco ampla, pois não há como saber exatamente quando agiremos em cada situação.

A escolha de uma arquitetura ou padrão de projeto envolve analisarmos a situação, o que precisa ser resolvido, quais problemas teremos que enfrentar, para então escolhermos uma estratégia que seja coerente com as necessidades da equipe e o projeto.

No desenvolvimento para mobile, podemos perceber que há uma zona turva, principalmente na nossa comunidade de língua portuguesa. Frequentemente, encontramos conceitos como padrões de projeto de arquitetura serem chamados de arquiteturas.

Por exemplo, o MVVC (Model View View Model), MVP (Model View Presenter), Clean Architecture e MVC (Model View Controller) são, na verdade, padrões de projeto, não arquiteturas. Todos pertencem à arquitetura de camadas e vão definir as especificidades necessárias para cada projeto dentro das ideias que trazem essa arquitetura.

Matheus: Devido à estrutura de camadas já implementada no desenvolvimento para mobile, não faz sentido usarmos outro tipo de arquitetura.

Podemos, sim, desenvolver uma aplicação que utilize outra arquitetura, mas na maior parte dos projetos, utilizaremos a arquitetura de camadas.

Como Ricarth mencionou, temos partes que englobam parte visual e lógica, que se configuram como camadas. Então, cada padrão de projeto trabalhará em cima dessas camadas.

Por isso é comum nos depararmos com essas duas denominações, arquitetura e padrão de projeto, sendo usadas de maneira equivocada por se assumir que a arquitetura será de camadas.

Além disso, há o problema da tradução da língua inglesa para o português. Às vezes, traduz-se arquitetura de software por causa da tradução literal, mas essa não é uma tradução que permite um entendimento claro em português.

Ricarth: Quando encontramos essa confusão na comunidade, o ideal é voltar para as origens e recorrer aos livros que nos ajudaram a constituir o conceito de engenharia de software e arquitetura de software.

Se formos a fundo, perceberemos que quando nos referimos a MVC, por exemplo, estamos falando sobre um padrão de projeto, e quando falamos de camadas, estamos discutindo arquitetura.

Mathues, agora que já falamos tanto sobre MVC, conte para nós o que essa sigla significa.

Matheus: O MVC se refere a Model View Controller.

Ricarth: Isso mesmo! Como mencionamos anteriormente, escolhemos sempre o padrão de projeto que faz sentido para resolver nosso problema. No nosso caso, o MVC é ótimo, pois já é um padrão de projeto muito aplicado por quem vem do desenvolvimento back-end.

Então, caso você desenvolva em back-end, é provável que já tenha experiência, ou ao menos já ouviu falar, do MVC. Isso torna a prática do MVC no ambiente mobile muito mais fluida.

Essa é um caminho natural, se aplica especialmente as pessoas que se tornam full-stack, ou seja, vêm do back-end e passam a desenvolver também para mobile. Portanto, adotar esse padrão com o qual já estão acostumadas é excelente.

Outro ponto importante é que o MVC funciona muito bem para projetos de tamanho médio, como o Meu Pequeno Grimório.

Porém, esse padrão não é ideal para projetos muito pequenos, nem projetos muito grandes, que requerem outros padrões mais apropriados.
Além disso, tenho certeza de que você notará que, quando falamos de Flutter, a divisão de responsabilidades e estruturação dos arquivos está intimamente ligada ao gerenciamento de estados no Flutter.

Como o projeto Meu Pequeno Grimório não precisa tanto dessas bibliotecas de gerenciamento de estados, por não ter uma reatividade tão necessária, o MVC terá uma ótima funcionalidade.

Essa também é uma ótima maneira de começarmos a moldar nossa mente para pensar em projetos desde o início, usando um padrão de projeto considerando todas vantagens que já mencionamos.

Matheus: Ricarth, muito obrigado pela presença e pelo papo!

Ricarth: Muito obrigado também, Matheus, pelo convite e também a todos que me ouviram. Foi um prazer imenso!

Matheus: Te esperamos no próximo vídeo.

Até lá!

@@06
Para saber mais: a importância da arquitetura de software em projetos maiores

Imagine que você está criando uma startup de software. No início, você terá um aplicativo Flutter com uma pequena base de usuários, mas como seu negócio é um sucesso, a quantidade de usuários começa a subir exponencialmente.
Se você não planejou seu software para ser escalável desde o início, agora pode enfrentar problemas como lentidão ou até mesmo a incapacidade de aceitar novos usuários. No entanto, se você se preocupou com a arquitetura do software desde o início, você pode lidar tranquilamente com esse crescimento.

Então, a arquitetura de software é essencial não apenas para o bom funcionamento do software, mas também para a saúde e o sucesso do seu negócio. Um software que funciona bem e pode lidar com o crescimento irá manter seus usuários felizes, o que é o objetivo de todas as empresas.

Faz sentido?

O que é arquitetura de software?
Para entender mais profundamente a aplicação da arquitetura de software, precisamos primeiro entender o que é essa tal arquitetura!

Quando falamos de arquitetura em geral, podemos pensar na estrutura de uma casa ou prédio. Da mesma maneira, a arquitetura de software é a estrutura, ou o plano, que define como um sistema de software será construído e como ele irá operar.

Mas ao invés de paredes, portas e janelas, a arquitetura de software envolve entidades como módulos, componentes, interfaces e dados. E pensa na melhor forma possível de estruturar e organizar todos esses dados!
Agora, vamos entender porque a arquitetura de software é tão importante em projetos maiores.

Imagine que você está construindo uma casa gigante. Você não começaria a construção sem um plano, certo? Da mesma maneira, a arquitetura de software funciona como um plano para grandes projetos de software. Ela define como os vários componentes do software devem se comunicar e interagir uns com os outros.

Garantindo a eficiência e a escalabilidade
A eficiência de um software é crucial para sua operacionalidade. Eficiência significa que o software é capaz de maximizar a produtividade com o mínimo de desperdício.

O que sempre precisamos evitar é um software com código desorganizado, estruturado de qualquer jeito, em que ninguém consegue mexer e entender. Lidar com um software assim é como tentar encontrar qualquer coisa em um quarto bagunçado: você vai desperdiçar muito tempo com uma simples tarefa.

Uma arquitetura de software bem definida pode fazer uma grande diferença na eficiência de um sistema, identificando e eliminando pontos de ineficiência e otimizando os processos. Nesse caso, a organização da arquitetura permite agilizar o desenvolvimento e concluir tarefas e implementações de features.

Já a escalabilidade é a capacidade de um sistema de software lidar com a demanda crescente. Isso significa que quando mais usuários começarem a usar o software, o sistema deve ser capaz de aumentar sua capacidade sem prejudicar o desempenho. Aqui novamente, uma boa arquitetura de software pode garantir que o sistema possa ser escalado facilmente.

Durante a realização desse curso, recomendamos que você se pergunte se o projeto está eficiente, escalável e organizado.

@@07
Por que o MVC é uma boa escolha para o projeto?

Chegou um grande “sim”: você está a frente da equipe que vai desenvolver o projeto “Meu pequeno grimório”.
Como líder desse projeto (olha a “responsa”), seu papel é planejar a construção desse novo aplicativo que terá funções de pesquisar livros e marcar as leituras iniciadas ou concluídas.

Durante uma reunião de planejamento com a equipe, Ricarth, um colega de equipe, sugere a implementação do padrão de projeto MVC (Model-View-Controller) no desenvolvimento do software.

Por que Ricarth sugere a utilização do padrão MVC?

Selecione as alternativas que melhor respondem essa pergunta:

Selecione 3 alternativas

Ricarth sugere o MVC pois não gosta de trabalhar com outros padrões de projeto.
 
Alternativa correta
Ricarth sugere o MVC para facilitar a transição de pessoas desenvolvedoras do back-end que já estão familiarizados com essa prática.
 
Essa é uma das razões para a sugestão do MVC, pois muitos desenvolvedores de back-end estão acostumados com a implementação desse padrão.
Alternativa correta
Ricarth sugere o MVC pois não lembra todos os requisitos do projeto.
 
Alternativa correta
Ricarth sugere o MVC para aplicar um padrão de projeto no desenvolvimento do software.
 
A utilização de padrões de projeto, como o MVC, ajuda a estruturar e organizar o código, facilitando a manutenção e o desenvolvimento do software.
Alternativa correta
Ricarth sugere o MVC porque o projeto não precisa de bibliotecas de gerenciamento de estados.
 
Utilizando o padrão MVC, podemos ter um projeto organizado e escalável que não precisa de bibliotecas de gerenciamento de estado para funcionar.

@@08
Para saber mais: arquitetura ou padrão de projeto?

Existe um longo debate em relação a esses dois termos, dado que há diferentes traduções do inglês.
Para se aprofundar nesse debate - em que não há definições fechadas ou um consenso amplo -, confira os conteúdos a seguir:

Introdução a padrões de projeto;
Design de código ou arquitetura.
Bons estudos!

https://www.alura.com.br/artigos/design-patterns-introducao-padroes-projeto?_gl=1*15s9gfe*_ga*OTYxOTQ4ODM4LjE3MTYyMDQ0OTM.*_ga_1EPWSW3PCS*MTcxNzUzNDE1OC4xNi4xLjE3MTc1MzU3MzIuMC4wLjA.

https://cursos.alura.com.br/extra/alura-mais/design-de-codigo-vs-arquitetura-de-software-c640

@@09
Faça como eu fiz: entendendo arquitetura em projetos Flutter

Nesta aula, aprendemos e discutimos os seguinte conceitos de arquitetura de software, importância de um bom planejamento, arquitetura em camadas e padrões de projetos, além de entendermos o que é exatamente o MVC e porque vamos utilizar ele em nosso projeto.
Assim, durante o curso, é importante que você retorne à lista de requisitos e se pergunte:

O projeto está escalável da forma como está sendo construído?
Nosso projeto está organizado - pensando nas pastas e arquivos?
Estamos pensando na manutenção?
Vamos reutilizar componentes visuais de forma a diminuir o trabalho?
Quem mais pegará esse projeto além de nós? Como podemos ajudar essas pessoas?
Estamos considerando quais são todos os itens da lista de requisitos?
Esse é um curso mais avançado, em que você precisa começar a desenvolver esse pensamento crítico.

Se quiser, compartilhe suas impressões com a gente lá no discord da Escola Mobile!
Bons estudos!

@@10
O que aprendemos?

Nessa aula, você aprendeu a:
Entender como está estruturado o projeto “Meu Pequeno Grimório”;
Compreender o que é arquitetura e padrão de projeto;
Criar a tela inicial do projeto;
Saber o que é o MVC (Model-View-Controller);
Entender os motivos de utilizar o MVC em nosso projeto;
Compreender as vantagens do MVC e desvantagens do MVC.
Parabéns por ter concluído a primeira aula!

Nos vemos na próxima aula do curso!

#### 05/05/2024

@02-Camadas e MVC

@@01
Preparando o ambiente
PRÓXIMA ATIVIDADE

Nesta aula, precisamos da segunda parte do projeto. Esta segunda parte é após a participação de outras pessoas da equipe no processo de desenvolvimento da aplicação.
Bons estudos!

@@02
Camadas do MVC

Após nossa conversa com Ricarth, nos reunimos com nossa equipe e implementamos o MVC (Model-View-Controller ou Modelo-Visualizador-Controlador). Distribuímos as responsabilidades entre as pessoas integrantes da equipe e chegamos aos estado atual do projeto.
Vamos verificar, no nosso emulador, como o projeto ficou depois que as equipes o desenvolveram. Percebemos que a parte visual já está bem estruturada e funcionando. Inclusive, conseguimos clicar nos botões e perceber a transição de telas.

No entanto, ainda não temos as funcionalidades. Quando tentamos adicionar um livro ou fazer uma busca, nada acontece. Portanto, temos apenas a parte visual pronta e algumas programações internas em código, como o banco de dados e a API.

Vamos analisar o que ocorreu dentro do nosso projeto. Na pasta "lib", além do arquivo main.dart, temos vários arquivos. Agora focaremos em dois muito específicos: o book_database.dart e google_book_service.dart. Seguindo o MVC, basicamente temos a view pronta, porém, esses dois arquivos não se encaixam exatamente na nomenclatura MVC.

O book_database.dart é onde roda toda nossa comunicação com o banco de dados. Ele está em uma camada separada, mas ainda faz parte das camadas MVC. Algo que conversamos com o Ricarth é que a arquitetura deve se moldar ao nosso projeto, e não o contrário.

No MVC, temos as três camadas principais, mas precisamos adicionar mais uma camada para os serviços e mais uma camada para o nosso banco de dados nesse caso. Então começaremos a organizar esse projeto, separando as pastas representando cada camada de nossa arquitetura.

Para o arquivo book_database.dart, criaremos uma pasta nova dentro da pasta lib chamada "dao". O DAO (Data Access Object ou Objeto de Acesso a Dados) é comumente usado para fazer a transferência de dados entre o banco de dados e a nossa aplicação.

Após criarmos a pasta "dao", arrastaremos o arquivo book_database.dart para essa pasta. Provavelmente sua IDE, como a minha, abrirá um aviso no centro da tela perguntando se deseja refatorar o projeto para corrigir as referências desse arquivo que movemos. Clicaremos no botão de confirmação, porque queremos referenciar a nova localização desse arquivo.

Feito isso, moveremos o arquivo de google_book_service.dart. Dentro da "lib", criaremos uma pasta chamada "services" (serviços). Após criarmos a pasta, moveremos o google_book_service.dart para dentro de "services" e, novamente, confirmar a refatoração das referências.

Lembrete: A nomenclatura de pastas pode variar de acordo com a equipe em que estamos trabalhando. Esse é um padrão que costuma ser seguido, mas algumas equipes podem adotar outro tipo de nomenclatura.
Até o momento, apenas separamos alguns arquivos em novas pastas. Por mais que essa mudança pareça pequena, é muito importante para organizar o projeto. Anteriormente questionamos se o projeto estava organizado e era de fácil manutenção, e são esses problemas que que estamos resolvendo.

Mesmo que as equipes tenham desenvolvido as páginas, os componentes, os serviços e os DAOs, elas não separaram os conteúdos pensando que seriam camadas diferentes. Portanto, já existe ali uma organização prévia, mas nós estamos reorganizando e os colocando nas pastas correspondentes.

Agora salvaremos todos os nossos arquivos de DAO e de Services e o próximo passo será organizar corretamente nossas views. Faremos isso a seguir.

@@03
Reestruturando o projeto com a pasta View

Dando continuidade à organização do projeto, faltaram as nossas views, que são a parte visual que fazem uma ponte de comunicação entre a pessoa usuária e a nossa aplicação, ou seja, as nossas telas. Portanto, todos os arquivos restantes dentro da pasta "lib" são parte da nossa view.
Sendo assim, atualmente falta as models e os controllers das nossas camadas do MVC. Portanto, basicamente, precisamos organizar os arquivos restantes dentro de uma pasta chamada "views" ou "screens" (telas).

Como disse no vídeo anterior, a nomenclatura pode mudar dependendo de como sua equipe trabalha. Em geral, no desenvolvimento mobile e em algumas partes de Front-end, o pessoal chama a pasta com as telas de "screens, ou seja, em mobile é comum nomear a pasta de views como "screens".

Então criaremos uma nova pasta dentro da "lib", chamada de "screens". Depois moveremos todos os arquivos de tela para dentro da pasta que acabamos de criar. Moveremos um arquivo de cada vez, caso contrário ele não fará a refatoração automática de cada arquivo.

Movemos os arquivos um a um, confirmando o pedido de refatoração que aparece no centro da tela. O último arquivo da lista, que é o theme.dart, contém apenas tamanhos e cores, e não vamos movê-lo.

o theme.dart não faz parte de "screens", "dao", "models" ou "controllers", então não tem problema deixá-lo na pasta "lib". Ele ficará separado apenas para o tema, especificamente do Flutter. Se estivéssemos desenvolvendo para Android, também poderia ficar em outro lugar. Tudo depende de onde estamos trabalhando.

Separamos nossas telas, mas podemos notar que há muitos elementos que não parecem fazer sentido em ficar especificamente na tela. Por exemplo, date_input.dart é um arquivo que representa apenas o input do usuário com o nosso aplicativo. Ele não é uma tela, e sim um widget (componente).

Há vários desses componentes espalhados dentro da pasta "screens" e, neste momento, estamos organizando o projeto. Portanto, nada melhor do que separarmos esses componentes que serão reutilizados por todo o projeto em uma pasta específica para eles.

Esse é outro caso para o qual não existe regra do MVC especificando que esses componentes precisam ficar dentro da pasta "views" ou em outro lugar dentro de outra pasta na pasta views. Logo, podemos adaptar o nosso padrão de projeto ao que precisamos dentro da nossa aplicação.

Então os componentes que serão reutilizados ficarão na pasta chamada "components", que criaremos dentro da pasta "screens". Assim que criamos a pasta, moveremos todos os componentes para "screens > components", enquanto as página completas permanecerão em "screens".

O critério que usaremos para diferenciar uma tela de um componente é clicar dentro desse arquivo e ver qual é o primeiro widget codado. Os códigos SafeArea() e Scaffold() são indícios de que eles o arquivo forma uma página.

Por exemplo, date_input.dart não começa com Scaffold(), ou SafeArea(), então é um componente e devemos movê-lo para a pasta "components". Lembrando que precisamos confirmar a refatoração na janela que abre no centro da tela.

Lista de arquivos que serão movidos para pasta "components":
date_input.dart
display_text.dart

entry.dart

floatting_button.dart

primary_button.dart

second_button.dart

Conforme eu fui clicando e passando pelos dos arquivos, talvez você tenha notado que há muitos comentários dentro dos códigos. Esses comentários foram criados pelas equipes pensando no fluxo da aplicação, algo que já comentamos ao analisarmos a navegação a partir do Figma. Todos esses componentes já foram construídos, mas como dependem da lógica por trás dessas funções, o fluxo foi deixado nos comentários.

A seguir construiremos o controller e o model, onde introduziremos a lógica e as regras de negócio da aplicação.

@@04
Para saber mais: organizando pastas em projetos em camadas

Conhecer a estrutura de um projeto em camadas é essencial para entender como os diferentes componentes do projeto se conectam e interagem. A organização de pastas é um grande passo para isso. Se feita da maneira certa, essa organização pode melhorar exponencialmente a eficiência e a produtividade de um projeto.
Neste guia, vou explicar como organizar suas pastas em projetos em camadas, melhores práticas, e dar algumas dicas úteis.

Como posso organizar meu projeto?
Um projeto organizado em camadas é basicamente um projeto que é dividido em diferentes segmentos (pastas e arquivos) que operam independentemente, mas todas trabalham juntas como um todo. Essas camadas geralmente são estruturadas de acordo com suas funcionalidades, tornando mais fácil encontrar e modificar partes específicas do projeto.

A organização das pastas, nesses casos, se resume a agrupar arquivos semelhantes e relevantes em diretórios ou pastas específicas. Esse agrupamento pode ser baseado em várias coisas, como o tipo de arquivo, a funcionalidade do arquivo, entre outros.

Se a gente sair escrevendo o código sem pensar na organização, vamos ter arquivos desorganizados. Imagine você tentar consertar um bug em um projeto que tem um único arquivo com mais de 20 mil linhas de código? Seria trabalho absurdo, não é mesmo? Daí vem a ideia de separar o arquivo em camadas.
Vamos ver algumas boas práticas e organização do projeto?

Melhores práticas e dicas
Entenda a estrutura de camadas: Antes de começar a organizar suas pastas, é preciso entender a estrutura de camadas do seu projeto. Saber o que cada camada faz e como elas interagem entre si ajudará a decidir quais arquivos devem ir para quais pastas.
Padronize e aplique uma nomeação consistente: Certifique-se de nomear suas pastas de forma consistente. Isso significa que se você está nomeando suas pastas baseado na funcionalidade, continue fazendo isso por todo o projeto. Isso ajuda a criar uma estrutura lógica e fácil de entender.
Evite criar muitas pastas: Às vezes, pode ser tentador criar uma nova pasta para cada pequeno aspecto do seu projeto. No entanto, isso pode resultar em uma estrutura de diretório complexa e desorganizada. Em vez disso, tente agrupar arquivos semelhantes juntos em uma única pasta.
Documente sua estrutura: Por último, mas não menos importante, documente sua estrutura de pastas. Isso não só ajudará outras pessoas a entenderem seu projeto, mas também será útil para você no futuro.
A organização de pastas em projetos em camadas é uma habilidade essencial para qualquer um que trabalhe com projetos complexos. Ao seguir as melhores práticas e dicas mencionadas acima, você pode criar uma estrutura de projeto clara, lógica e eficiente.

Lembre-se, a chave para uma boa organização de pastas é a consistência e a simplicidade. Então, vá em frente e comece a organizar suas pastas (mas sem exageros)!

@@05
Aprofundando no MVC

O próximo passo é desenvolvermos as models, os controllers e as builds, que já estão prontas. Antes de começarmos a realmente a montar models e controllers, precisamos entender melhor o que é a sigla MVC.
Quando conversamos com Richard sobre o que era MVC e sobre arquitetura, aprendemos superficialmente o conceito de MVC. Agora, nos aprofundaremos mais para entendermos o que são cada uma das camadas dentro desse padrão de projeto.

Começando a explicação do que significa a sigla MVC, "M" se refere à model (modelo), "V" à view e "C" ao controller (controlador).

Pensando no conceito de orientação a objetos, a model é a representação ou abstração de alguma informação que temos em nosso aplicativo. No nosso caso do Grimório, a model pode ser o livro, que é composto por uma capa, um título e um autor.

Além das informações, esse modelo também pode ter ações ou funções de validação. No entanto, é necessário termos cautela com essa função, porque ela não se trata necessariamente da lógica de regra de negócios. Estas funções são para, por exemplo, validar os campos presentes dentro dessa model.

O modelo também podem representar a resposta de uma API. Ao fazermos uma busca na API, por exemplo, o Google Books, recebemos uma série de informações. Mas, se quisermos lidar apenas com algumas delas, podemos criar uma representação das informações que queremos receber da API, e ela se tornará um modelo.

As models também podem representar coisas que vêm de nossa view. Por exemplo, temos um formulário de cadastro de usuário na nossa aplicação. Esse formulário tem campos para e-mail, usuário e senha, e precisaremos enviar essas informações para algum lugar. Esse conjunto de informações também pode se tornar um modelo.

Modelos também podem representar uma tabela em um banco de dados, e faremos isso, porque trabalhamos com bancos de dados e temos as tabelas com as colunas. Cada representação geral de uma coluna pode ser um modelo.

A view é onde fica toda a parte visual da tela de nossa aplicação. No nosso caso, as telas (screens) são onde as informações são exibidas. Nessas telas, ou views, ficam os widgets (componentes) e tudo que forma a identidade visual de nossa aplicação.

Agora, o controller pode causar confusão. Quando apresentamos o controlador, dizemos que ele é a ponte entre a model e a view. No entanto, o controller é onde guardamos as regras de negócio. Ele realmente faz a ponte, mas é entre a view e as outras partes da nossa aplicação, e não somente o modelo. Onde houver lógica, haverá o controller.

Por exemplo, receberemos a entrada de uma pessoa usuária através do formulário da view. Assim, teremos aquele conjunto de informações, que são enviadas da view para o controller. O controller fará a lógica de validação, passando por um banco de dados para validar a existência da conta ou necessidade de cadastro da conta.

O controlador recebe essas informações do banco de dados e passa a view, informando: "você não tem cadastro. Quer se cadastrar?". Se a pessoa usuária concordar, ela preenche outro formulário, que também é enviado para o controlador.

O controlador determina que precisa gerar um novo usuário e envia essa demanda para o banco de dados, que faz o salvamento das informações. Em seguida, o controller devolve essa informação para a view instrui a pessoa usuária a fazer o login. A pessoa usuária preencherá o e-mail e a senha, que será validada pelo controlador no banco de dados e, em seguida, irá liberar o acesso.

De forma simplificada, essa é a função do controlador. Portanto, ele desempenha o papel intermediário na comunicação entre a visualização e a aplicação. Eu acredito que essa é uma forma mais correta de descrever a função do controlador do que dizer que ele promove a comunicação entre a view e o modelo, porque o modelo é apenas uma abstração da informação.

Por exemplo, no formulário que mencionei antes, podemos coletar essas informações, armazená-las dentro de um objeto de uma model e enviar esse objeto para o banco de dados. Então não necessariamente uma ligação entre o modelo e a view, o controlador abriga as regras de negócio da aplicação.

A seguir temos um exemplo de como o controller funciona:

Modelo de funcionamento do controlador dentro do MVC. No centro do modelo tem um retângulo laranja onde está o fluxo: Input → Formulário → Banco de dados. Após esse fluxo, no lado esquerdo do retângulo laranja, tem mais uma seta para esquerda, que aponta para "Ação/Função". Na parte superior do retângulo laranja tem uma linha curva que conecta "Input" e "Formulário", e sobre ela está escrito "Controller". Outra linha curva conecta "Formulário" a "Banco de dados" e sobre ela também está escrito "Controller". Na parte inferior do retângulo, abaixo de "Formulário" está escrito addBook(). Abaixo de addBook() tem uma seta que aponta para a palavra baixo, onde está escrito "Controller". Abaixo de "Banco de dados" também tem uma seta que aponta para baixo, onde está escrito "Regra de negócios".

Basicamente, recebemos o input da pessoa usuária, e o controller captura o formulário e envia para o banco de dados. Tudo isso é gerado através de uma função do controlador, que é onde realmente ficam as regras de negócios.

A ideia agora é começarmos a construção de nossas primeiras models. Então vamos fazer isso.

https://cdn1.gnarususercontent.com.br/1/935581/afe88d30-e2df-4eac-8cf5-9f271f19e70c.png

@@06
Distribuição de funcionalidades no MVC
PRÓXIMA ATIVIDADE

O desenvolvimento do “Meu Pequeno Grimório” entrou em uma nova fase!
Agora, durante a criação da tela de pesquisa de livros, você se depara com um dilema sobre qual a camada correta para colocar determinada funcionalidade seguindo o modelo MVC (Model-View-Controller).

Onde você deve colocar a funcionalidade que permite ao usuário pesquisar um livro pelo título?

No Controller, porque o Controller guarda as regras de negócio e faz parte da comunicação entre a View e a aplicação.
 
O Controller é responsável por receber a entrada do usuário e fazer o controle entre a View e a aplicação.
Alternativa correta
Na Model, já que a Model representa os dados dos objetos.
 
Alternativa correta
Em uma Screen, porque as Screens são onde as informações são mostradas.
 
Alternativa correta
Em um Widget, porque os Widgets são componentes visuais.
 
Alternativa correta
Na View, porque a View é a representação da parte visual do projeto.
 
A View é responsável pela parte visual da aplicação e não pelo processamento das interações dos usuários.

@@07
Faça como eu fiz: reestruturando o projeto
PRÓXIMA ATIVIDADE

Hora da prática!
Para refatorar o projeto e começar a utilizar o MVC, separe as seguintes pastas:

dao: pasta para a conexão com o banco de dados;
services: pasta para a conexão com a API;
screens e components: pasta para as telas e componentes visuais da aplicação.
O resultado esperado é que, após a reorganização das pastas seguindo o modelo MVC, o projeto continue funcionando normalmente.
Vamos lá?

Nessa aula refatoramos o projeto parta organizar melhor e começar a utilizar a arquitetura em camadas. Você pode conferir o gitHub ou ver o passo a passo:
1 - Crie uma nova pasta chamada dao dentro de lib e coloque nela o arquivo book_database.dart;

2 - Crie uma nova pasta chamada services dentro de lib e dentro dela coloque o arquivo google_book_service.dart;

3 - Crie uma nova pasta chamada screens dentro de lib, e coloque dentro dela os arquivos de páginas:

a) book_detals.dart;
b) edit_details.dart;
c) search_books.dart;
d) login.dart;
e) new_entry.dart;
f) dashboard.dart;
g) sign_up.dart;
h) home.dart.
4 - Crie uma nova pasta chamada components dentro de lib, e coloque dentro dela os arquivos de componentes:

a) date_input.dart;
b) display_dart;
c) entry.dart;
d) floating_button;
e) primary_button;
f) secondary_button.dart.
Pronto! Temos nosso projeto reorganizado conforme o MVC!

https://github.com/alura-cursos/3116-Flutter-MVC/tree/Aula2

@@08
O que aprendemos?
PRÓXIMA ATIVIDADE

Nessa aula, você aprendeu a:
Reestruturar as pastas e arquivos projeto para começar a utilizar o MVC;
Compreender o que são as models (representações de dados);
Entender o que são as views (que cuida das telas e componentes visuais);
Compreender que são os controllers (que faz a ligação entre diferentes partes do projeto);
Saber como model, view e controller se integram dentro de um projeto com MVC.
Parabéns por ter concluído mais uma aula, bons estudos!