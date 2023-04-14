import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';
import 'package:utssyahdan/pages/mainmenu.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Container(
            color: Colors.purple,
            height: MediaQuery.of(context).size.height * 0.5,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Your Furniture',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 26),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 175),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.orange,
                    width: 6,
                  ))),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Furniture',
                        hintStyle:
                            TextStyle(fontSize: 28, color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 200,
                top: 299,
                left: 30,
                right: 30,
              ),
              padding: const EdgeInsets.symmetric(vertical: 100),
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.grey,
                    blurRadius: 20,
                    offset: Offset(
                      0,
                      10,
                    ),
                  )
                ],
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.002,
                    ))),
                    child: Row(
                      children: [
                        const Icon(Icons.person),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Username or Email',
                              hintStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.002,
                    ))),
                    child: Row(
                      children: [
                        const Icon(Icons.lock),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Mainmenu()),
              );
            },
            child: Center(
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(
                  bottom: 100,
                  top: 699,
                  left: 100,
                  right: 100,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48),
                  color: Colors.purple,
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: GoogleFonts.poppins(
                      color: const Color(0xffFFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


