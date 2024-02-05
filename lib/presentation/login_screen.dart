import 'package:flutter/material.dart';
import 'package:slide_up_login/widgets/show_up_animation.dart';
import 'package:slide_up_login/widgets/text_widget.dart';
import '../widgets/clippers.dart';
import '../widgets/feild_widget.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  /// boolean to check whether the state is login or not
  bool isLogin=false;
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    return Scaffold(
      bottomSheet: ClipPath(
        ///Custom Clipper
        clipper: CustomBottomClip(),
        /// Using gesture detector to change the  isLogin value
        child: GestureDetector(
          onTap: (){
           setState(() {
             isLogin=true;
           });
          },
          /// AnimatedContainer to handle animation
          child: AnimatedContainer(
            /// Duration
            duration:const  Duration(milliseconds: 400),
            /// Curve
            curve: Curves.decelerate,
            color: Theme.of(context).primaryColor,
            /// changing the height of bottom sheet with animation using animatedContainer
            height:isLogin?height*0.8: height*0.1,
            width: double.infinity,
            padding:const  EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///AnimatedContainer to handle animation of size of the container basically height only
                 AnimatedContainer(
                   duration: const Duration(milliseconds: 400),
                 height:isLogin?100: 50,
                 alignment: Alignment.bottomCenter,
                 child: TextUtil(text: "Login",size: 30,),
               ),
                Expanded(
                 /// Using Custom Animated ShowUpAnimated  to handle slide animation of textfield
                  child:isLogin? ShowUpAnimation(
                    delay: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          /// Custom FieldWidget
                          const   FieldWidget(title: "Email",icon: Icons.mail,),
                          const  FieldWidget(title: "Password",icon: Icons.key,),
                          const   SizedBox(height: 20,),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child:  ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Theme.of(context).primaryColorLight
                                ),
                                onPressed: (){}, child: TextUtil(text: 'Login',)),
                          )
                        ],
                      ),
                    ),
                  ):const SizedBox(),
                )
              ],
            ),


          ),
        ),
      ),
      body: Column(
        children: [
          ClipPath(
            ///Custom Clipper
            clipper:CustomUpClip(),
            child: Container(
              padding: const EdgeInsets.all(20),
              height: height*0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight
              ),
              alignment: Alignment.center,
              child: InkWell(
                /// Using Ink well to change the  isLogin value
                onTap: (){
                  setState(() {
                    isLogin=false;
                  });
                },
                  child: TextUtil(text: "Sign-up",size: 30,)),
            ),
          ),
        const   SizedBox(height: 20,),
           Padding(
            padding: const  EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Custom FieldWidget
               const   FieldWidget(title: "Email",icon: Icons.mail,),
                const  FieldWidget(title: "Password",icon: Icons.key,),
                const  FieldWidget(title: "Confirm Password",icon: Icons.key,),
             const   SizedBox(height: 20,),
               SizedBox(
                 width: double.infinity,
                 height: 50,
                 child:  ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Theme.of(context).primaryColorLight
                   ),
                     onPressed: (){}, child: TextUtil(text: 'Sign-up',)),
               )
              ],
            ),
          )


        ],
      ),

    );
  }
}
