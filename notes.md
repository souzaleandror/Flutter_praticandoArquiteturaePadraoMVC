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