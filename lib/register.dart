import 'package:fadez/custom_components.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final GlobalKey<FormState> _registrationKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: BackButton(
          color: Theme.of(context).primaryColorDark,
          onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
        ),
        title: Text(
          'Welcome',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final screenHeight = constraints.maxHeight;
        final horizontalPadding =
            EdgeInsets.symmetric(horizontal: screenWidth * 0.1);
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
                        color: Theme.of(context).primaryColorDark,
                        onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
                      ),
                      Center(
                        child: Text(
                          'Welcome to Fadez',
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
                  'Create A New Account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                RegistrationForm(
                  registrationKey: _registrationKey,
                ),
                CustomFilledButton(
                  width: buttonWidth,
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  onPressed: () {
                    if (_registrationKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/navigation');
                    }
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

class RegistrationForm extends StatefulWidget {
  final GlobalKey<FormState> registrationKey;

  const RegistrationForm({Key? key, required this.registrationKey})
      : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool _passwordVisible = true;
  bool _confirmPasswordVisible = true;

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.registrationKey,
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
                return 'Invalid email';
              }
              return null;
            },
            onTapOutside: (_) {
              FocusScope.of(context).unfocus();
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            cursorColor: Theme.of(context).primaryColorDark,
            controller: _passwordController,
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
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus(_confirmPasswordFocusNode);
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password cannot be empty.';
              }
              return null;
            },
            onTapOutside: (_) {
              FocusScope.of(context).unfocus();
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            cursorColor: Theme.of(context).primaryColorDark,
            controller: _confirmPasswordController,
            focusNode: _confirmPasswordFocusNode,
            style: TextStyle(
                fontSize: 16,
                fontWeight:
                    _confirmPasswordVisible ? FontWeight.w900 : FontWeight.w500,
                color: Color(0xff606060)),
            obscureText: _confirmPasswordVisible,
            decoration: InputDecoration(
              labelText: 'Confirm Password',
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
                tooltip: _confirmPasswordVisible ? 'Show Password' : 'Hide Password',
                icon: Icon(
                    _confirmPasswordVisible ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _confirmPasswordVisible = !_confirmPasswordVisible;
                  });
                },
              ),
              suffixIconColor: Color(0xff606060),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password cannot be empty.';
              } else if (value != _passwordController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
            onTapOutside: (_) {
              FocusScope.of(context).unfocus();
            },
          ),
          SizedBox(
            height: 40,
          ),
          SocialsDivider(text: 'Or Register With'),
          SocialIcons(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
