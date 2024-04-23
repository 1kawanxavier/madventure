import 'package:flutter/material.dart';

class TutorialIntegracao extends StatelessWidget {
  const TutorialIntegracao({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00E1C2),
      body: PageView(
        children: [
          Slide(
            image: AssetImage('assets/images/LogoPreto.png'),
            
            descricao: 'Apresentando o melhor companheiro de condicionamento físico e saúde, nosso novo aplicativo móvel que desafia você a ultrapassar seus limites e atingir suas metas de condicionamento físico! Com uma ampla variedade de tarefas de exercícios e desafios diários, nosso aplicativo ajuda você a permanecer no caminho certo e motivado para liderar uma vida saudável e estilo de vida ativo.',
          ),
          
          Slide(
            image: AssetImage('assets/images/MulherMetal.png'),
            descricao: 'Cansado de se sentir desmotivado para se exercitar? Nosso aplicativo móvel oferece uma maneira divertida e envolvente de se manter ativo e atingir suas metas de condicionamento físico, com uma variedade de desafios, recompensas e recursos sociais que tornam o treino divertido e emocionante',
          ),

          Slide(
            image: AssetImage('assets/images/MulherMetal.png'),
            descricao: 'Transforme seu corpo e sua mente com nosso novo aplicativo inovador. Com uma ampla variedade de exercícios, desde cardio e treinamento de força até ioga e meditação, nosso aplicativo oferece desafios diários e programas personalizados que ajudarão você a atingir suas metas de condicionamento físico',
          ),
        ],
      ),
    );
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

void main() {
  runApp(MaterialApp(
    home: TutorialIntegracao(),
  ));
}
