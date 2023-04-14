import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Mainmenu extends StatelessWidget {
  const Mainmenu({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            const EdgeInsets.only(bottom: 200, top: 30, left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              'Discover',
              style: GoogleFonts.poppins(
                color: const Color(0xffFFFFFF),
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 47,
              width: 750,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'What do you want',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget Category() {
      Widget CategoryCard() {
        return Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/chair_light_gray_bg.png',
                          height: 32,
                          width: 32,
                        ),
                        SizedBox(height: 15),
                        Text(
                          'chair', 
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black, 
                            fontWeight: FontWeight.w200, 
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 120,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/lamp_light_gray_bg.png',
                          height: 32,
                          width: 32,
                        ),
                        SizedBox(height: 15),
                        Text(
                          'lamp', 
                          style: TextStyle(
                            fontSize: 16, 
                            color: Colors.black, 
                            fontWeight: FontWeight.w200, 
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 120,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/plant_white_bg.png',
                          height: 32,
                          width: 32,
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Plant', 
                          style: TextStyle(
                            fontSize: 16, 
                            color: Colors.black, 
                            fontWeight: FontWeight.w200, 
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 24,
              top: 200,
            ),
            child: Text(
              'Category',
              style: GoogleFonts.poppins(
                color: const Color(0xff090404),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    CategoryCard(),

                    
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }
Widget Tophits(){
  Widget Tophitscard(String img, ){
    return Container(
          width: 242,
        margin: const EdgeInsets.only(
             right: 14
            ),
          child: SingleChildScrollView(
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 220,
                  width: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      
                      image: AssetImage(img),
                    fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(15)
                    
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                
                
                
              ],
            ),
          ),
        );
      }

      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
               margin: const EdgeInsets.only(
                left: 24,
                top: 400,
              ),
              child: Text(
                    'Tophits',
                    style: GoogleFonts.poppins(
                      color: const Color(0xff090404),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Tophitscard('assets/favorite_img_2.jpg', 
                    ),
                      Tophitscard('assets/favorite_img_1.jpg', 
                      ),
                     
                     
                    ],
                  ),
                ),
              ),
            ),
              Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Tophitscard('assets/favorite_img_5.jpg', 
                    ),
                      Tophitscard('assets/favorite_img_6.jpg', 
                      ),
                     
                     
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Tophitscard('assets/favorite_img_3.jpeg', 
                    ),
                      Tophitscard('assets/favorite_img_4.jpg', 
                      ),
                     
                     
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );




    
  }
 
    return Scaffold(
      
      body: Stack(children: [
        Container(
          color: Colors.white,
        ),
        Container(
          color: Colors.purple,
          height: MediaQuery.of(context).size.height * 0.2,
          alignment: Alignment.bottomCenter,
        ),
        header(),
        SizedBox(
          height: 20,
        ),
        Category(),
        SizedBox(
          height: 20,
        ),
         Tophits(),
      ]),
    );
  }
}


