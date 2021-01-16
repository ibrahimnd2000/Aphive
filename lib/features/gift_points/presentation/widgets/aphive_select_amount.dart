import 'package:Aphive/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/size_extension.dart';

class AphiveSelectAmount extends StatelessWidget {
  const AphiveSelectAmount({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(right: 8.0, top: 8.0, bottom: 8.0, left: 18.0),
      height: 45,
      width: MediaQuery.of(context).size.width * 0.75,
      color: Colors.black12,
      child: DropdownButton<String>(
        isExpanded: true,
        underline: Container(),
        hint: Text(
          dropdown_hint,
          style: GoogleFonts.montserrat(
            fontSize: 14.0,
            fontStyle: FontStyle.italic,
            color: Colors.black26,
          ),
        ),
        items: <String>['10', '50', '100', '150'].map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: Row(
              children: [
                Text(
                  value,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Text(
                  "£ ${(int.parse(value)).toStringAsFixed(2)}",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
        onChanged: (_) {},
      ),
    );
  }
}
