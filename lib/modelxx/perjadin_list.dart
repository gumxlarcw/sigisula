import 'package:flutter/material.dart';
import 'package:sipadu8203/constant/color_constant.dart';

class PerjadinList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16.0,left: 16),
            height: 165,
              decoration: BoxDecoration(
                  color: mFillColor,
                  borderRadius: BorderRadius.circular(12),
                  border:
                  Border.all(color: mBorderColor,width: 1)),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Wisnu Candra Gumelar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: 2.0,
                    runSpacing: -8.0,
                    children: <Widget>[
                      PegawaiChip(
                          Icons.calendar_today, '9 Juni 2021'),
                      PegawaiChip(
                          Icons.flight_takeoff, 'Bobong'),
                      PegawaiChip(
                          Icons.star, 'Pencacahan SKKRT Triwulan 2 Tahun 2020'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class PegawaiChip extends StatelessWidget {
  final IconData iconData;
  final String label;

  PegawaiChip(this.iconData, this.label);

  @override
  Widget build(BuildContext context) {
    return RawChip(
      label: Text(label),
      labelStyle: TextStyle(color: Colors.black, fontSize: 13.5),
      backgroundColor: Colors.white,
      avatar: Icon(
        iconData,
        size: 14.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    );
  }
}
