

import 'package:whatsapp_clone/utils/exports.dart';

class Customappbar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final Color? backgroundColor;
  final List<Widget> actions;
   final FontWeight? fontWeight;
  final Color titleColor;

  const Customappbar({
    Key? key,
    required this.title,
    required this.titleColor,
    this.fontWeight = kFW700,
   // this.fontWeight = FontWeight.w700,
    // this.titleSpacing = 16.0,
    this.centerTitle = false,
    this.backgroundColor = Kwhite,

    this.actions = const [],
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  State<Customappbar> createState() => _CustomappbarState();
}

class _CustomappbarState extends State<Customappbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      titleSpacing: 17,
      centerTitle: widget.centerTitle,
      backgroundColor: widget.backgroundColor,
      title: Padding(
        padding: const EdgeInsets.only(top: 2.5),
        child: Text(
          widget.title,
          style: GoogleFonts.openSans(
            fontSize: kTwentyFourFont, 
            fontWeight: widget.fontWeight, 
            color:widget.titleColor,
          ),
        ),
      ),
      actions: widget.actions,
    );
  }
}
