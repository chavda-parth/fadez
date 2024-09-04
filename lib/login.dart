import 'package:fadez/custom_components.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Theme.of(context).primaryColorDark,
          onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
        ),
        title: Text(
          'Welcome Back',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final screenHeight = constraints.maxHeight;
        final horizontalPadding = EdgeInsets.symmetric(horizontal: screenWidth * 0.1);
        final buttonWidth = screenWidth > 600 ? screenWidth * 0.2 : screenWidth;

        return Padding(
          padding: horizontalPadding,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                /*IntrinsicHeight(
                  child: Stack(
                    children: [
                      BackButton(
                        style: ButtonStyle(
                          padding: EdgeInsets.zero,
                        ),
                        color: Theme.of(context).primaryColorDark,
                        onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
                      ),
                      Center(
                        child: Text(
                          'Welcome Back',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),*/
                Text(
                  'Log In To Your Account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                LoginForm(
                  loginKey: _loginKey,
                ),
                CustomFilledButton(
                  width: buttonWidth,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  onPressed: () {
                    //if (_loginKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/navigation');
                    //}
                  },
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> loginKey;

  const LoginForm({Key? key, required this.loginKey}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  bool _passwordVisible = true;

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.loginKey,
      child: Column(
        children: [
          TextFormField(
            cursorColor: Theme.of(context).primaryColorDark,
            focusNode: _emailFocusNode,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff606060)),
            decoration: InputDecoration(
              helperText: 'Email: usermail@test.com',
              labelText: 'Email',
              labelStyle: TextStyle(
                  fontSize: 16,
                  color: Color(0xff606060),
                  fontWeight: FontWeight.w500),
              floatingLabelStyle:
                  TextStyle(color: Theme.of(context).primaryColorDark),
              hintText: 'e.g., john.doe@example.com',
              hintStyle: TextStyle(
                fontSize: 16,
              ),
              prefixIcon: Icon(Icons.email_outlined),
              prefixIconColor: Color(0xff606060),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).primaryColorDark)),
            ),
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus(_passwordFocusNode);
            },
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  value != 'usermail@test.com') {
                return 'Please enter a valid email.';
              }
              return null;
            },
            onTapOutside: (_) {
              FocusScope.of(context).unfocus();
            },
          ),
          SizedBox(
            height: 12,
          ),
          TextFormField(
            cursorColor: Theme.of(context).primaryColorDark,
            focusNode: _passwordFocusNode,
            style: TextStyle(
                fontSize: 16,
                fontWeight:
                    _passwordVisible ? FontWeight.w900 : FontWeight.w500,
                color: Color(0xff606060)),
            obscureText: _passwordVisible,
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(
                  fontSize: 16,
                  color: Color(0xff606060),
                  fontWeight: FontWeight.w500),
              floatingLabelStyle:
                  TextStyle(color: Theme.of(context).primaryColorDark),
              prefixIcon: Icon(Icons.password_outlined),
              prefixIconColor: Color(0xff606060),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).primaryColorDark)),
              suffixIcon: IconButton(
                tooltip: _passwordVisible ? 'Show Password' : 'Hide Password',
                icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
              suffixIconColor: Color(0xff606060),
            ),
            validator: (value) {
              if (value == null || value.isEmpty || value != 'password') {
                return 'Incorrect or invalid password.';
              }
              return null;
            },
            onTapOutside: (_) {
              FocusScope.of(context).unfocus();
            },
          ),
          SizedBox(
            height: 12,
          ),
          TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Password is..... password.')),
                );
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
          ),
          SizedBox(height: 20,),
          SocialsDivider(text: 'Or Login With'),
          SocialIcons(),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not an existing user?', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text('Register', style: TextStyle(color: Theme.of(context).primaryColorDark, fontSize: 16, fontWeight: FontWeight.w500),))
            ],
          )
        ],
      ),
    );
  }
}
