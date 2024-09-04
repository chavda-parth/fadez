import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double width;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final double borderRadius;

  const CustomFilledButton({
    super.key,
    this.width = double.infinity, //Full available width
    this.padding = const EdgeInsets.symmetric(vertical: 12),
    this.backgroundColor,
    this.borderRadius = 4,
    required this.child,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: backgroundColor ?? Theme.of(context).primaryColorDark,
        minimumSize: Size(width, 0),
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}

/*class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? backgroundColor;
  final Color? textColor;
  final double borderRadius;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = double.infinity, // Default width takes full available width
    this.elevation = 4.0, // Default elevation
    this.padding = const EdgeInsets.symmetric(vertical: 10),
    this.fontSize = 20.0,
    this.fontWeight = FontWeight.w600,
    this.backgroundColor = const Color(0xffe6e6fa),
    this.textColor,
    this.borderRadius = 10.0, //Default border radius
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: elevation,
        shadowColor: Theme.of(context).primaryColorLight,
        minimumSize: Size(width, 0),
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? Theme.of(context).primaryColorDark,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );
  }
}*/

class SocialsDivider extends StatelessWidget {
  final String text;

  const SocialsDivider({Key? key, this.text = "OR"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 1,
          )
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black
            ),
          ),
        ),
        Expanded(
            child: Divider(
              color: Colors.black,
              thickness: 1,
            )
        ),
      ],
    );
  }
}

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    ScaffoldFeatureController socialInfo() {
      return ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Feature not yet implemented.')),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: IconButton(
              onPressed: () => socialInfo(),
              icon: Icon(Icons.facebook, size: 48, color: Color(0xff0165E1),)
          ),
        ),
        SizedBox(width: 20,),
        Container(
          child: IconButton(
              onPressed: () => socialInfo(),
              icon: Icon(Icons.apple, size: 48, color: Colors.black)
          ),
        ),
        SizedBox(width: 20,),
        Container(
          child: IconButton(
              onPressed: () => socialInfo(),
              icon: Icon(Icons.discord, size: 48, color: Color(0xff5865F2),)
          ),
        ),
      ],
    );
  }
}

class ShadowedContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final Color shadowColor;
  final Offset shadowOffset;
  final double blurRadius;

  const ShadowedContainer({
    Key? key,
    required this.child,
    this.borderRadius = 12.0,
    this.shadowColor = Colors.black,
    this.shadowOffset = const Offset(3, 3),
    this.blurRadius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColorLight,
            offset: shadowOffset,
            blurRadius: blurRadius,
          ),
        ],
      ),
      child: child,
    );
  }
}


