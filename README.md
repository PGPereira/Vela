# Instalação interativa vela

## Autores
* Julio Guatimosim
* ![Pedro Gabriel](https://github.com/PGPereira)
* Tiago Cornélio
* Rafael Bicalho

## Descrição
Uma sala de paredes escuras com exceção de uma delas, que é um tecido branco iluminado por trás. Seu aspecto é o de uma vela de navio agitada pelo vento, serve de tela, na qual são projetadas sombras de figuras humanas. Sons formam uma ambiência contínua e sutil que remete ao mar e ao fogo, além de incidências de vozes abafadas e indistintas que acompanham as sombras.  
A composição é modulada pelas ações dos visitantes, sendo que a quantidade de sombras e suas posições são influenciadas pelo movimento captado pelo sensor, e consequentemente o áudio das vozes. O que descrevemos como sombras são na verdade silhuetas renderizadas e retroprojetadas na tela. Todos os equipamentos atrás do tecido são ocultados por este, também são discretas as posições das caixas de som, as que ficam do lado acessível do tecido, e do sensor que fica posicionado na parede oposta à do tecido, de forma que na maior parte do tempo o visitante fique de costas para ele.  
Como o conteúdo visual é renovado constantemente pelas ações dos visitantes, a instalação tem uma natureza contínua, não se esgota. Os registros das sombras e a sua reprodução são utilizados de forma a não ficarem repetitivos, as variáveis possíveis incluem, mas não se limitam, à posição, velocidade de reprodução, tamanho, definição, opacidade, sentido de reprodução e intervalo de tempo captado.  
Os elementos de imagem e áudio convergem com o intuito de produzir uma instalação imersiva. O projeto da instalação colabora com esse ideal de imersão, uma vez que a projeção tem o intuito de ser o mais parecida o possível com uma sombra de verdade, para gerar o contraste com a experiência de uma sombra aparentemente real, mas que se comporta de forma totalmente diferente do usual.  

## Conceito
As sombras são representações complexas, mesmo que seja possível defini-las como uma decomposição em duas dimensões de uma forma tridimensional. Por ocultar aspectos do corpo que a projeta, como a cor e as formas além da silhueta, a sombra instiga a imaginação para supor o todo a partir do pouco que ela mostra. Ainda é influenciada pela superfície e a fonte luminosa pela qual é gerada.  
A instalação trata dos aspectos desconhecidos da sombra, do desconforto e curiosidade de não perceber a relação dela com o próprio corpo, pois a tela ao mesmo tempo em que suporta a “sombra” oculta a sua fonte. Além da própria sombra deslocada no espaço e no tempo o visitante vai ser apresentado às de outros que passaram anteriormente pela instalação.
Com a provocação de criar uma instalação baseada na permanência da sombra, encontramos paralelo na definição de sombra por Carl Jung como um arquétipo do inconsciente, para o autor os arquétipos habitam o inconsciente pessoal e coletivo e são símbolos através dos quais armazenamos experiências e emoções. A sombra é de percepção difusa, está relacionada com aspectos pessoais que involuntariamente ocultamos, uma porção velada da nossa identidade.  
O nome da instalação, Vela, remete à natureza oculta da sombra e da composição da instalação que obstrui o processo de formação da imagem, para revelar apenas ela. Vela é também a característica visual da tela usada, uma vela de embarcação, movimentada pelo vento, que ondula as sombras. Além da dinâmica conferida pela ondulação, a fonte de luz trêmula se compara à da chama de uma vela, conferindo a polissemia título do projeto, o nome breve ainda tem outros desdobramentos, como no verbo velar, que vem do ato de prestar vigília a um falecido. Optamos pelo nome por essa diversidade de sentidos.  

## Planta
![Planta alta e planta baixa do projeto][planta]  
Na imagem é possível ver a disposição dos equipamentos conforme planejamos. Divididas pela tela temos a porção anterior, oculta e inacessível e a porção posterior, onde o visitante pode experimentar a instalação.  
Na porção anterior fica o projetor digital responsável pelas imagens, três das cinco caixas do sistema de som 5.1, que tem por objetivo gerar um preenchimento do espaço pelo som, além do ventilador que vai tensionar a tela com o vento dando a impressão de uma vela. Tudo é organizado de forma a não gerar sombras no tecido e de forma ideal ficar oculto.
Na área posterior ficam as demais caixas de som, de forma que o conjunto fica voltado para a área onde fica o visitante. Além do sensor Kinect fica deste lado também o computador responsável pelo processamento das imagens e áudio, uma porta serve de entrada e saída para a instalação. Excluímos do protótipo uma câmera que ficaria posicionada sobre a tela (ainda visível na imagem), com o objetivo de captar imagens do rosto do visitante que o surpreenderia em certo momento, sendo sobrepostas à sombra, porém conceitualmente ainda consideramos a ideia relevante, poderia ser aproveitada em uma exploração do projeto que contasse com mais tempo para a execução.  
Utilizamos o software Processing, para a captação, armazenamento e reprodução das sombras. Assim como execução do áudio. A escolha do Kinect é pela função facilitada de captação da silhueta, além de dados de distância e posicionamento de forma geral, com suporte a várias pessoas presentes simultaneamente.  



[planta]: /planta.jpg
