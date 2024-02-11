import 'package:across_geo_interview/SecondPageHome.dart';
import 'package:across_geo_interview/dimensions.dart';
import 'package:flutter/material.dart';

class EmailAndPasswordBox extends StatefulWidget {
  @override
  _EmailAndPasswordBoxState createState() => _EmailAndPasswordBoxState();
}

class _EmailAndPasswordBoxState extends State<EmailAndPasswordBox> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isChecked = false;
  bool isPasswordVisible = false;
  bool isSubmitButtonEnabled() {
    final bool isEmailValid = _validateEmail(emailController.text);
    final bool isPasswordValid = _validatePassword(passwordController.text);

    return isEmailValid && isPasswordValid;
  }

  bool _validateEmail(String email) {
    final emailRegex = RegExp(
        r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$',
        caseSensitive: false);
    return emailRegex.hasMatch(email);
  }

  bool _validatePassword(String password) {
    final passwordRegex = RegExp(
        r'^(?=.*[A-Z])(?=.*[!@#$%^&*(),.?":{}|<>0-9]).{7,20}$',
        caseSensitive: false);
    return passwordRegex.hasMatch(password);
  }

  void _showErrorMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Invalid email or password. Please try again.'),
        duration: Duration(seconds: 5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: Dimensions.width20(context)),
          child: Text(
            'Please Sign in to continue',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 8),
        TextField(
          controller: emailController,
          onChanged: (value) {
            setState(() {});
          },
          decoration: InputDecoration(
            hintText: 'Enter Email or Mob No.',
            hintStyle: TextStyle(fontSize: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: Dimensions.width15(context),
              horizontal: Dimensions.width15(context),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.only(left: Dimensions.width30(context) * 6.0),
          child: Text(
            'Sign In With OTP',
            style: TextStyle(
                color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.only(
            left: Dimensions.width20(context),
          ),
          child: Text(
            'Password:',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 8),
        TextField(
          controller: passwordController,
          onChanged: (value) {
            setState(() {});
          },
          obscureText: !isPasswordVisible,
          decoration: InputDecoration(
            hintText: 'Enter Password',
            hintStyle: TextStyle(fontSize: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                15,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: Dimensions.width15(context),
              horizontal: Dimensions.width15(context),
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
              child: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: isPasswordVisible ? Colors.blue : Colors.black,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            const Text(
              'Remember me',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(
              width: Dimensions.width30(context) * 1.5,
            ),
            const Text(
              'Forgot Password',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 16),
        Container(
          width: Dimensions.width30(context) * 60,
          height: Dimensions.height45(context),
          decoration: BoxDecoration(),
          child: ElevatedButton(
            onPressed: isSubmitButtonEnabled()
                ? () {
                    // Simulating a request or validation delay
                    Future.delayed(Duration(seconds: 5), () {
                      // Handle the submit button press after 5 seconds
                      if (_validateEmail(emailController.text) &&
                          _validatePassword(passwordController.text)) {
                        // Successfully validated, you can proceed with the login
                        print('Login successful');
                      } else {
                        // Show error message
                        _showErrorMessage();
                      }
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  }
                : null,
            style: ElevatedButton.styleFrom(
              primary: isSubmitButtonEnabled() ? Colors.green : Colors.grey,
            ),
            child: Text(
              'Submit',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}

class LineWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Dimensions.height20(context),
        left: Dimensions.height30(context),
        right: Dimensions.height30(context),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              color: Color.fromARGB(255, 210, 209, 209),
              height: Dimensions.height20(context),
              thickness: 2,
            ),
          ),
          SizedBox(width: 10),
          Text(
            'or',
            style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Divider(
              color: Color.fromARGB(255, 210, 209, 209),
              height: Dimensions.height20(context),
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageRowState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildImage('image_assets/google.png', 35, 35),
          SizedBox(width: 15),
          buildImage('image_assets/linkedin.png', 35, 35),
          SizedBox(width: 15),
          buildImage('image_assets/facebook.png', 35, 35),
          SizedBox(width: 15),
          buildImage('image_assets/instagram.png', 35, 35),
          SizedBox(width: 15),
          buildImage('image_assets/whatsapp.png', 30, 30),
        ],
      ),
    );
  }

  Widget buildImage(String imagePath, double width, double height) {
    return InkWell(
      onTap: () {
        // Add your onTap logic for each image here
        print('Tapped on $imagePath');
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          //  color: Colors.blue.withOpacity(0.5), // Highlight color
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(
          imagePath,
          width: width,
          height: height,
        ),
      ),
    );
  }
}

class Login_Signup extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  Login_Signup({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Dimensions.width30(context),
        right: Dimensions.width20(context),
        top: Dimensions.width30(context),
      ),
      child: Container(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ],
            ),
            SizedBox(width: Dimensions.width30(context) * 1),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text3,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: Dimensions.width30(context) * 3.5),
                  child: Text(
                    text4,
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
