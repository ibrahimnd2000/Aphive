import 'package:Aphive/constants.dart';
import 'package:Aphive/features/buy_points/presentation/widgets/aphive_confirmation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class AphiveBottomSheetMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    final size = MediaQuery.of(context).size;
    return SlidingUpPanel(
      isDraggable: false,
      minHeight: size.height * 0.55,
      maxHeight: size.height * 0.55,
      panel: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                  right: 8.0, top: 8.0, bottom: 8.0, left: 18.0),
              height: 45,
              width: size.width * 0.75,
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
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              hint_bottom,
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            Spacer(),
            Container(
              width: size.width * 0.75,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Subtotal",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "£XXX",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Transaction fees [BuyPointsTransactionFees]",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 1,
                    color: Colors.black12,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "£XXX",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () => showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) => AphiveConfirmationDialog(),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Theme.of(context).primaryColor,
                ),
                child: Text(
                  "Buy",
                  style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 75,
            ),
          ],
        ),
      ),
    );
  }
}
