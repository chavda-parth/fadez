import 'package:fadez/custom_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> stylists = <Widget>[
      ShadowedContainer(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/stylist1.png',
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              SizedBox(height: 8,),
              Text(
                'Alex',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: 16,),
      ShadowedContainer(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/stylist2.png',
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              SizedBox(height: 8,),
              Text(
                'Rehmaan',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: 16,),
      ShadowedContainer(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/stylist3.png',
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              SizedBox(height: 8,),
              Text(
                'Hardeep',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: 16,),
      ShadowedContainer(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/stylist4.png',
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              SizedBox(height: 8,),
              Text(
                'Andrew',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    List<Widget> services = <Widget>[
      ShadowedContainer(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/cut1.png',
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              SizedBox(height: 8,),
              Text(
                'Classic',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: 16,),
      ShadowedContainer(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/cut2.png',
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              SizedBox(height: 8,),
              Text(
                'Beard Trim',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: 16,),
      ShadowedContainer(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/cut3.png',
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              SizedBox(height: 8,),
              Text(
                'Militant',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: 16,),
      ShadowedContainer(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/cut4.png',
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              SizedBox(height: 8,),
              Text(
                'Executive',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    List<Widget> sections = <Widget>[
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Our Shops Near You',
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(
                      color: Color(0xff606060),
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),
                ),
              )
            ],
          ),
          ShadowedContainer(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/shop1.png', height: MediaQuery.of(context).size.height * 0.12),
                SizedBox(width: 12,),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ellisville',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Theme.of(context).primaryColorDark,
                              size: 16,
                            ),
                            SizedBox(width: 4,),
                            Expanded(
                              child: Text(
                                '1368 Clarkson Clayton Center, Ellisville, MO 63011',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404040)
                                ),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16,),
          ShadowedContainer(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/shop2.png', height: MediaQuery.of(context).size.height * 0.12),
                SizedBox(width: 12,),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Burlington',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Theme.of(context).primaryColorDark,
                              size: 16,
                            ),
                            SizedBox(width: 4,),
                            Expanded(
                              child: Text(
                                '201 Middlesex Turnpike, Burlington, MA 01803',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404040)
                                ),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Offers',
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          ShadowedContainer(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Up to 60% OFF, Flat Discounts, and other great offers.',
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Image.asset('assets/images/offers.png', height: MediaQuery.of(context).size.height * 0.08),
                ],
              ),
            )
          ),
        ],
      ),
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Stylists',
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(
                      color: Color(0xff606060),
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                  ),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: stylists,
            ),
          ),
        ],
      ),
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Services',
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(
                      color: Color(0xff606060),
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                  ),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: services,
            ),
          ),
        ],
      ),
    ];

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
            statusBarColor: Theme.of(context).primaryColor
          ),
          scrolledUnderElevation: 0.0,
          title: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ShadowedContainer(
                      child: TextFormField(
                          focusNode: _searchFocusNode,
                          readOnly: false,
                          cursorColor: Theme.of(context).primaryColorDark,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(Icons.search),
                              onPressed: () {},
                            ),
                            suffixIconColor: Theme.of(context).primaryColorDark,
                            labelText: 'Search',
                            labelStyle: TextStyle(
                                fontSize: 16,
                                color: Color(0xff606060),
                                fontWeight: FontWeight.w500
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                            errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
                            focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Theme.of(context).primaryColor,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          onTapOutside: (_) {
                            _searchFocusNode.unfocus();
                          }
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  IconButton(
                    icon: Icon(Icons.settings,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = constraints.maxWidth;
            final screenHeight = constraints.maxHeight;
            final horizontalPadding = EdgeInsets.symmetric(horizontal: screenWidth * 0.05);
            final buttonWidth = screenWidth > 600 ? screenWidth * 0.2 : screenWidth;

            return Padding(
              padding: horizontalPadding,
              child: ListView.separated(
                // shrinkWrap: true,
                // physics: ClampingScrollPhysics(),
                clipBehavior: Clip.none,
                itemCount: sections.length,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(vertical: 0),
                itemBuilder: (BuildContext context, int index) {
                  return sections[index];
                },
                separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 16,),
              ),
            );
          },
        ),
      ),
    );
  }
}
