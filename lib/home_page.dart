import 'package:flutter/material.dart';
import 'package:voice_assist/feature_box.dart';
import 'package:voice_assist/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Siri'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //virtual assistant picture
          Stack(
            children: [
          Center(
            child: Container(
              height: 120,
              width: 120,
              margin: const EdgeInsets.only(top: 4),
              decoration: const BoxDecoration(
                color: Pallete.assistantCircleColor,
                shape: BoxShape.circle,
              )
            ),
          ),
          Container(
            height: 123,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(
                'asset/images/virtualAssistant.png',
                ),
                )
            )
          )
            ]
          ),
          //chat bubble
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40,).copyWith(
              top: 30,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Pallete.borderColor,
              ),
              borderRadius:  BorderRadius.circular(20).copyWith(
                topLeft: Radius.zero,
              ),
          ),
          child:  const Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.0),
            child:  Text(
              'Good Morning, what task can i do for you?', 
            style: TextStyle(
              fontFamily: 'Cera Pro',
              color: Pallete.mainFontColor,
              fontSize: 25,
            )),
          ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(
              top: 10,
              left: 22
            ),
            child: const Text('Here are a few features',style: TextStyle(
              fontFamily: 'Cera Pro',
              color: Pallete.mainFontColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          //features list
          const Column (
            children:  [
              FeatureBox(color: Pallete.firstSuggestionBoxColor,
              headerText: 'ChatGPT',
              descriptionText: 'A smarter way to stay organized and informed with ChatGPT',
              ),
              FeatureBox(color: Pallete.firstSuggestionBoxColor,
              headerText: 'Dall-E',
              descriptionText: 'Get inspired and stay creative with your personal assistant powered by Dall-E',
              ),
              FeatureBox(color: Pallete.firstSuggestionBoxColor,
              headerText: 'Smart Voice Assistant',
              descriptionText: 'Get the bes of both worlds with a voice assistant powered by Dall-E and ChatGPT',
              ),
          ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: () {},
        child: const Icon(Icons.mic),
        ),
      );
  }
}