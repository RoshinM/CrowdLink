
import 'package:crowd_link/pages/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  inputCredentialsField(String fieldName, String textFieldHint){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(fieldName,
          style: TextStyle(color: Color(0xFF747474),
            fontSize: 16,
          ),
        ),
        TextFormField(
          obscureText: fieldName == 'Password',
          decoration: InputDecoration(
            hintText: textFieldHint, // Placeholder text
            hintStyle: TextStyle(
              color: Colors.grey[400],
              fontSize: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8), // Rounded corners
              borderSide: BorderSide(
                color: Colors.grey[300]!, // Border color
                width: 1, // Border width
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.grey[300]!,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.blue, // Focused border color
                width: 1.5,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 16,
            ), // Inner padding for the text field
          ),
        ),
      ],
    );
  }

  btnregister(Size size){
    return SizedBox(
      width: size.width, // Adjust width as needed
      height: 60, // Adjust height as needed
      child: ElevatedButton(
        onPressed: () {
          //Validate and Redirect
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black87, // Button background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
        ),
        child: Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.white, // Text color
            fontSize: 18, // Text size
            fontWeight: FontWeight.bold, // Text weight
          ),
        ),
      ),
    );
  }

  pagefooter(){
    return Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Loginpage(),
                  ),
                );
              },
              child: Text(
                'Log In',
                style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Image.asset("assets/images/crowdLinkLogo.png"),
            Expanded(
              child: Container(
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 34,left: 18, right: 20, bottom:24),
                  child: Column(
                    children: [
                      Text(
                        'Sign Up',
                        style: GoogleFonts.outfit(fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        'Enter a short Subtitle here',
                        style: GoogleFonts.outfit(fontSize: 16,
                            color: Colors.grey),
                      ),
                      SizedBox(height: 24,),
                      inputCredentialsField('Name', 'Enter your name'),
                      SizedBox(height: 24,),
                      inputCredentialsField('Email', 'Enter your email'),
                      SizedBox(height: 24,),
                      inputCredentialsField('Password', 'Enter your password'),
                      SizedBox(height: 32,),
                      btnregister(size),
                      pagefooter()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}