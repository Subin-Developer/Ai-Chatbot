import 'package:chatbot/Controller.dart/ChatController.dart';
import 'package:chatbot/Resource/colors.dart';
import 'package:chatbot/Screen/Homepage.dart';
import 'package:chatbot/Utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});
  static const routeName = '/intro';
  ChatController chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    saveObject("introscreen", "seen");

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Column(
                children: [
                  const Text("Your AI Assistant",
                      style: TextStyle(
                          color: colorPrimary,
                          fontFamily: 'Poppins-Regular',
                          fontWeight: FontWeight.bold,
                          fontSize: 23)),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-Regular',
                        fontSize: 15),
                    "Welcome to AI Chatbot app.\n Ask questions and receive articles on various topics.\n Features include speech to text and text to speech for\n natural and convenient interaction.",
                    // "Using this software, you can ask your\nquestions and receive articles using\nartificial intelligence assistant"
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Center(child: Image.asset("assets/image/chat_image.png")),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width < 600
                      ? double.infinity
                      : 300,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(colorPrimary),
                    ),
                    onPressed: () async {
                      Navigator.pushNamed(context, '/chat');
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
