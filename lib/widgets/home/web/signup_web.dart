import 'package:flutter/material.dart';
import 'package:uhv_project/constants/colors.dart';
import 'package:go_router/go_router.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class SignupWeb extends StatefulWidget {
  const SignupWeb({super.key});

  @override
  State<SignupWeb> createState() => _SignupWebState();
}

class _SignupWebState extends State<SignupWeb> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signup(BuildContext context) async {
    /*try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      print('Signup successful: ${userCredential.user?.email}');
      Navigator.pushReplacementNamed(context, '/'); // Navigate to home page
    } on FirebaseAuthException catch (e) {
      print('Sign-up error: ${e.message}');
      _showErrorDialog(e.message);
    } catch (e) {
      print('Unknown error: $e');
      _showErrorDialog(e.toString());
    }*/
    context.go("/");
  }

  void _goToLogin(BuildContext context) {
    // Navigate to the Login page
    context.go("/login");
  }

  void _showErrorDialog(String? message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message ?? 'An unknown error occurred.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenSizeHeight = screenSize.height;
    final screenSizeWidth = screenSize.width;

    return Scaffold(
      body: Center(
        child: Container(
          width: screenSizeWidth,
          height: screenSizeHeight,
          decoration: const BoxDecoration(
            color: Color(0xFF001120),
          ),
          child: Row(
            children: [
              // Left Container
              Container(
                width: screenSizeWidth * 0.5,
                color: const Color(0xFF001120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/EcoResolve-logo.png",
                            height: 80),
                        const SizedBox(width: 10),
                        const Text(
                          'Sanskaar AI Tutor',
                          style: TextStyle(
                            fontSize: 60,
                            color: CustomColor.greenPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              "Sanskaar AI Tutor envisions nurturing the next generation of empathetic, responsible, and open-minded citizens within India’s diverse and vibrant context. Tailored for all educational levels, this initiative is dedicated to fostering universal human values through the innovative use of Meta's Llama 3 models. Leveraging natural language generation and multi-linguality, Sanskaar AI fine-tunes six distinct models to address key areas such as ethics and moral education, human rights education, community service, conflict resolution, mindfulness, and empathy.",
                              style: TextStyle(
                                fontSize: 15,
                                color: CustomColor.lightGrey,
                              ),
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Right Container
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(70),
                  child: Center(
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 600),
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 23, 42, 0.7),
                        border: Border.all(
                            color: const Color(0xffA6FAFF), width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              "Signup Here!",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Color(0xffA6FAFF),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 15),
                            TextField(
                              controller: _emailController,
                              decoration: const InputDecoration(
                                hintText: 'Enter your Email',
                                hintStyle:
                                    TextStyle(color: CustomColor.lightGrey),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColor.greenSecondary),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColor.greenSecondary),
                                ),
                              ),
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 15),
                            TextField(
                              controller: _usernameController,
                              decoration: const InputDecoration(
                                hintText: 'Enter your username',
                                hintStyle:
                                    TextStyle(color: CustomColor.lightGrey),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColor.greenSecondary),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColor.greenSecondary),
                                ),
                              ),
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 15),
                            TextField(
                              controller: _passwordController,
                              decoration: const InputDecoration(
                                hintText: 'Create a password',
                                hintStyle:
                                    TextStyle(color: CustomColor.lightGrey),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColor.greenSecondary),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColor.greenSecondary),
                                ),
                              ),
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 30),
                            ElevatedButton(
                              onPressed: () {
                                _signup(context);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  backgroundColor:
                                      const Color.fromRGBO(46, 196, 216, 0.1),
                                  side: const BorderSide(
                                      color: Color(0xffA6FAFF), width: 1),
                                  minimumSize: const Size(200, 50),
                                  maximumSize: const Size(200, 50)),
                              child: const Text(
                                'Signup',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xffA6FAFF)),
                              ),
                            ),
                            const SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                _goToLogin(context);
                              },
                              child: const Text(
                                "Already have an account?",
                                style: TextStyle(
                                  color: CustomColor.lightGrey,
                                  decoration: TextDecoration.underline,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
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
