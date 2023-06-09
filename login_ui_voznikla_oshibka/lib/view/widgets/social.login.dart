import 'package:flutter/material.dart';
import 'package:login_ui/helpers/global.colors.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
        
        alignment: Alignment.center,
        child: Text(
          'Or sign in with',
          style: TextStyle(
            color: GlobalColors.textColor ,
            fontWeight: FontWeight.w600
          ),),
      ),
      const SizedBox(
        height: 15,
        
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Row(
          children: [
            // Google
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                    )
                  ]
                ),
                child: Image.asset('assets/images/google.png', height: 30,)
              ),
            ),
            const SizedBox(
              width: 10,
            ),
      
            // Facebook
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                    )
                  ]
                ),
                child: Image.asset('assets/images/facebook.jpg', height: 30,)
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            // Twitter
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                    )
                  ]
                ),
                child: Image.asset('assets/images/twitter.png', height: 20,)
              ),
            ),
           
            
          ],
        ),
      )
      
      ],
    );
  }
}