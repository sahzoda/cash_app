import 'package:cash_app/main_pages/log_in.dart';
import 'package:flutter/material.dart';

import '../welcome_widgets/welcome_widget.dart';


class welcomePage extends StatefulWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  _welcomePageState createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             
              
              child: Image.asset("assets/images/photo.png" ,)),
          ),
          Column(
         mainAxisAlignment: MainAxisAlignment.end,
          children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                 
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LogSignWidget(
                      title: 'Admin',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => SignUpPage(),));
                      },
                    ),
                 
                    SizedBox(
                      height: 10,
                     
                    ),
                  ],
                ),
              ),
              
            // Container(
            //   width: 60,
            //   decoration: BoxDecoration(
               
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(30),
            //       bottomLeft: Radius.circular(30),
            //     ),
            //   ),
              
            // ),
            // SizedBox(
            //   height: 6,
            // ),
            // Container(
            
            //   decoration: BoxDecoration(
              
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(30),
            //       bottomLeft: Radius.circular(30),
            //     ),
            //   ),
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(vertical: 0.01),
            
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceAround,
            //         children: [
            //           // SizedBox(
            //           //   height: 45,
                        
            //           // ),
            //           LogSignWidget(
            //             title: 'Log In', 
            //             onTap: () {}
            //             ),
                   
            //         ],
            //       )
            //       ),
            // ),
           
             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                   topRight: Radius.circular(30),
                   bottomRight: Radius.circular(30),
                   topLeft: Radius.circular(30),
                   bottomLeft: Radius.circular(30),
                 ),
                
               ),
               child: Padding(
                   padding: const EdgeInsets.all(50.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       LogSignWidget(
                         title: 'Teacher',
                         onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context) => SignUpPage(),));
                         },
                       ),
                    
                       SizedBox(
                         height: 45,
                        
                       ),
                     ],
                   )),
             ),
          ],
        ),
        ],
      
      ),
        );
  }
}
