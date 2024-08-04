import 'package:flutter/material.dart';
import 'package:uhv_project/constants/colors.dart';
import 'package:go_router/go_router.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class LoginWeb extends StatefulWidget {
  const LoginWeb({super.key});

  @override
  State<LoginWeb> createState() => _LoginWebState();
}

class _LoginWebState extends State<LoginWeb> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _login(BuildContext context) async {
    /*
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      print('Login successful: ${userCredential.user?.email}');
      Navigator.pushReplacementNamed(context, '/'); // Navigate to home page
    } on FirebaseAuthException catch (e) {
      print('Sign-in error: ${e.message}');
      _showErrorDialog(e.message);
    } catch (e) {
      print('Unknown error: $e');
      _showErrorDialog(e.toString());
    }*/
    context.go('/');
  }

  void _goToSignup(BuildContext context) {
    // Navigate to the SignUpWeb page
    context.go('/signup');
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
                  color: const Color(
                      0xFF001120), // Replace this with CustomColor.scaffoldBg if defined
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/EcoResolve-logo.png",
                              height: 80),
                          const SizedBox(width: 10),
                          const Text('UHV',
                              style: TextStyle(
                                  fontSize: 60,
                                  color: CustomColor.greenPrimary,
                                  fontWeight: FontWeight.bold))
                        ],
                      )),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                "Discover local volunteering opportunities and resolve disputes with ease using our intelligent chatbots. Our Conflict Resolution Chatbot provides personalized guidance and strategies to address conflicts constructively, empowering you with effective communication tools to foster understanding. Meanwhile, the Community Service Chatbot helps you get involved and make a difference in your community effortlessly, offering tailored suggestions for service projects that match your interests and skills.",
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
                  )),
              // Right Container
              Container(
                width: screenSizeWidth * 0.5,
                padding: const EdgeInsets.all(70),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 23, 42, 0.7),
                      border:
                          Border.all(color: const Color(0xffA6FAFF), width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Login Here!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color(0xffA6FAFF),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            hintText: 'Enter your Email here',
                            hintStyle: TextStyle(color: CustomColor.lightGrey),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: CustomColor.greenSecondary),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: CustomColor.greenSecondary),
                            ),
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(color: CustomColor.lightGrey),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: CustomColor.greenSecondary),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: CustomColor.greenSecondary),
                            ),
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 35),
                        ElevatedButton(
                          onPressed: () {
                            _login(context);
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
                            'Login',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffA6FAFF)),
                          ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            _goToSignup(context);
                          },
                          child: const Text(
                            "Create an account?",
                            style: TextStyle(
                              color: CustomColor.lightGrey,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
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
