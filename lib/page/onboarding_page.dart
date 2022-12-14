import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:study_material2/screens/welcome_screen.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
       SafeArea(
  child: IntroductionScreen(


      pages: [
        PageViewModel(
          title: 'A reader lives a thousand lives',
          body: 'The man who never reads lives only one.',
          image: buildImage('assets/images/1st.gif'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Featured Books',
          body: 'Available right at your fingerprints',
          image: buildImage('assets/images/2nd.gif'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Simple UI',
          body: 'For enhanced reading experience',
          image: buildImage('assets/images/3rd.gif'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Today a reader, tomorrow a leader',
          body: 'Start your journey',
          image: buildImage('assets/images/4th.gif'),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Text('Read', style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () => goToHome(context),
      showSkipButton: true,
      skip: const Text('Skip'),
      onSkip: () => goToHome(context),
      next: const Icon(Icons.arrow_forward),
      dotsDecorator: getDotDecoration(),
      onChange: (index) => print('Page $index selected'),
      globalBackgroundColor: Theme.of(context).secondaryHeaderColor,
      skipFlex: 0,
      nextFlex: 0,

    ),
  );

  void goToHome(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => const WelcomeScreen()),

  );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
    color: const Color(0xFFBDBDBD),
    //activeColor: Colors.orange,
    size: const Size(10, 10),
    activeSize: const Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    bodyTextStyle: const TextStyle(fontSize: 20),
    descriptionPadding: const EdgeInsets.all(16).copyWith(bottom: 0),
    imagePadding: const EdgeInsets.all(24),
    pageColor: Colors.indigo[200],
  );
}
