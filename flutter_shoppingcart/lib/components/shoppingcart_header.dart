import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter/cupertino.dart';

class ShoppingCartHeader extends StatefulWidget {
  @override
  _ShoppingCartHeaderState createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  int selectedId = 0;

  List<String> selectedPic = [
    "assets/pone.png",
    "assets/ptwo.png",
    "assets/pthree.png",
    "assets/pfour.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderPic(),
        _buildHeaderSelector(),
      ],
    );
  }

  Widget _buildHeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: AspectRatio(
          aspectRatio: 5 / 3,
          child: Image.asset(
            selectedPic[selectedId],
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSelector() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildHeaderSelectorButton(0, Icons.directions_bike),
          _buildHeaderSelectorButton(1, Icons.motorcycle),
          _buildHeaderSelectorButton(2, CupertinoIcons.car_detailed),
          _buildHeaderSelectorButton(3, CupertinoIcons.airplane),
        ],
      ),
    );
  }

  Widget _buildHeaderSelectorButton(int id, IconData mIcon) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: id == selectedId ? kAccentColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        icon: Icon(
          mIcon,
          color: Colors.black,
        ),
        onPressed: () {
          setState(() {
            selectedId = id;
          });
          print("id : $id");
          print("selectedId : $selectedId");
        },
      ),
    );
  }
}
