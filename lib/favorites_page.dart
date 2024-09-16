import 'package:fadez/custom_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          clipBehavior: Clip.none,
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).primaryColor,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).primaryColor,
          ),
          scrolledUnderElevation: 0.0,
          title: Column(
            children: [
              ShadowedContainer(
                child: TextFormField(
                  focusNode: _searchFocusNode,
                  readOnly: false,
                  cursorColor: Theme.of(context).primaryColorDark,
                  decoration: InputDecoration(
                    prefixIcon: BackButton(),
                    prefixIconColor: Theme.of(context).primaryColorDark,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.mic),
                      onPressed: () {},
                    ),
                    suffixIconColor: Theme.of(context).primaryColorDark,
                    label: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Location or Stylist Name',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff606060),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                    errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
                    focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Theme.of(context).primaryColor,
                  ),
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  onTapOutside: (_) {
                    _searchFocusNode.unfocus();
                  },
                ),
              ),
              SizedBox(height: 16.0,),
            ],
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = constraints.maxWidth;
            final screenHeight = constraints.maxHeight;
            final horizontalPadding = EdgeInsets.symmetric(horizontal: screenWidth * 0.05);
            final buttonWidth = screenWidth > 600 ? screenWidth * 0.2 : screenWidth;
            List<Widget> sections = [
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Past Searches',
                          style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Clear',
                            style: TextStyle(
                                color: Color(0xff606060),
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ShadowedContainer(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    'assets/images/stylist1.png',
                                    height: MediaQuery.of(context).size.height * 0.08,
                                  ),
                                ),
                              ),
                              SizedBox(width: 16,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Alex',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Stylist',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff404040),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 16,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ShadowedContainer(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    'assets/images/stylist1.png',
                                    height: MediaQuery.of(context).size.height * 0.08,
                                  ),
                                ),
                              ),
                              SizedBox(width: 16,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Alex',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Stylist',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff404040),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 16,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ShadowedContainer(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    'assets/images/stylist1.png',
                                    height: MediaQuery.of(context).size.height * 0.08,
                                  ),
                                ),
                              ),
                              SizedBox(width: 16,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Alex',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Stylist',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff404040),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 16,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ShadowedContainer(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    'assets/images/stylist1.png',
                                    height: MediaQuery.of(context).size.height * 0.08,
                                  ),
                                ),
                              ),
                              SizedBox(width: 16,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Alex',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Stylist',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff404040),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 16,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ];

            return Padding(
              padding: horizontalPadding,
              child: SingleChildScrollView(
                child: Column(
                  children: sections,
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
