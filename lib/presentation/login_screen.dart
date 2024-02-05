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
  bool isLogin=false;
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    return Scaffold(
      bottomSheet: ClipPath(
        clipper: CustomBottomClip(),
        child: GestureDetector(
          onTap: (){
           setState(() {
             isLogin=true;
           });
          },
          child: AnimatedContainer(
            duration:const  Duration(milliseconds: 400),
            curve: Curves.decelerate,
            color: Theme.of(context).primaryColor,
            height:isLogin?height*0.8: height*0.1,
            width: double.infinity,
            padding:const  EdgeInsets.symmetric(horizontal: 20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 AnimatedContainer(
                   duration: const Duration(milliseconds: 400),
                 height:isLogin?100: 50,
                 alignment: Alignment.bottomCenter,
                 child: TextUtil(text: "Login",size: 30,),
               ),
                Expanded(
                  child:isLogin? ShowUpAnimation(
                    delay: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
