import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/size_extension.dart';

class AphiveAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final Widget leading;

  AphiveAppBar({Key key, this.leading})
      : preferredSize = Size.fromHeight(65.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 65,
      leading: Padding(
        padding: EdgeInsets.only(top: 25, left: 23),
        child: leading,
      ),
      actions: [
        Container(
          padding: EdgeInsets.only(top: 37, right: 34.5),
          child: Text(
            "Map view",
            style: GoogleFonts.montserrat(
              fontSize: 45.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
