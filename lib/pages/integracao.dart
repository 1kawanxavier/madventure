import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class TutorialIntegracao extends StatefulWidget {
  const TutorialIntegracao({Key? key}) : super(key: key);

  @override
  _TutorialIntegracaoState createState() => _TutorialIntegracaoState();
}

class _TutorialIntegracaoState extends State<TutorialIntegracao> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00E1C2),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
            children: [
              Slide(
                image: AssetImage('assets/images/LogoPreto.png'),
                descricao:
                    'Apresentando o melhor companheiro de condicionamento físico e saúde, nosso novo aplicativo móvel que desafia você a ultrapassar seus limites e atingir suas metas de condicionamento físico! Com uma ampla variedade de tarefas de exercícios e desafios diários, nosso aplicativo ajuda você a permanecer no caminho certo e motivado para liderar uma vida saudável e estilo de vida ativo.',
              ),
              Slide(
                image: AssetImage('assets/images/MulherMetal.png'),
                descricao:
                    'Cansado de se sentir desmotivado para se exercitar? Nosso aplicativo móvel oferece uma maneira divertida e envolvente de se manter ativo e atingir suas metas de condicionamento físico, com uma variedade de desafios, recompensas e recursos sociais que tornam o treino divertido e emocionante',
              ),
              Slide(
                image: AssetImage('assets/images/MulherMetal.png'),
                descricao:
                    'Transforme seu corpo e sua mente com nosso novo aplicativo inovador. Com uma ampla variedade de exercícios, desde cardio e treinamento de força até ioga e meditação, nosso aplicativo oferece desafios diários e programas personalizados que ajudarão você a atingir suas metas de condicionamento físico',
              ),
            ],
          ),
          Positioned(
            right: 150,
            bottom: 16,
            child: ElevatedButton(
              onPressed: () {
                _pageController.animateToPage(
                  _currentPageIndex.toInt()+1,
                   duration: Duration(milliseconds: 100),
                    curve: Curves.ease);
                
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, 
                foregroundColor: Colors.black, 
              ),
              child: Text('Pular'),
            ),
          ),

          Positioned(
            right:30,
            bottom: 16,
            child: ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, 
                  foregroundColor: Colors.white
                ),
              child: Text('Próximo')
            ),
          ),

          Positioned(
            left: 16.0,
            bottom: 16.0,
            child: DotsIndicator(
              dotsCount: 3, 
              position: _currentPageIndex.toInt(),
              decorator: DotsDecorator(
                size: Size.square(15.0),
                activeSize: Size.square(15.0),
                color: Color(0xFFD6E1E0),
                activeColor: Color(0XFF2C2C2D),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class Slide extends StatelessWidget {
  final ImageProvider<Object> image;
  final String descricao;

  const Slide({
    required this.image,
    required this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: image),
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(descricao, style: TextStyle(fontSize: 16)),
        ),
      ],
    );
  }
}
