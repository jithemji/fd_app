import 'package:fd_app/model/data.dart';
import 'package:fd_app/screens/details/components/backimage.dart';
import 'package:fd_app/screens/details/components/floatingwidget.dart';
import 'package:fd_app/screens/details/components/slideupcontainer.dart';
import 'package:flutter/material.dart';

class DetailBody extends StatefulWidget {
  final Event event;

  const DetailBody({Key key, this.event}) : super(key: key);
  @override
  _DetailBodyState createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // double heigh = size.height * 0.55;
    return Stack(
      children: <Widget>[
        BackImage(size: size),
        Positioned(
          top: 50.0,
          left: 20.0,
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Back",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: SlideUpContainer(size: size),
        ),
        FloatingWidget(),
      ],
    );
  }
}
