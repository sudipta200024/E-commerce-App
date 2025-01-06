import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class SizePickerWidget extends StatefulWidget {
  const SizePickerWidget({super.key, required this.size, required this.onSizeSelected});

  final List<String> size;
  final Function(String) onSizeSelected;

  @override
  State<SizePickerWidget> createState() => _SizePickerWidgetState();
}

class _SizePickerWidgetState extends State<SizePickerWidget> {

  String? _selectedSize;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: getSizeItems(),
      ),
    );
  }
  List<Widget> getSizeItems(){
    List<Widget> sizeList = [];
    for(String size in widget.size){
      Widget item =
      getSizeItemWidget(name: size, onTap: (){
        _selectedSize = size;
        widget.onSizeSelected(_selectedSize!);
        setState(() {

        });
      },
          isSelected: _selectedSize==size
      );
      sizeList.add(item);
    }
    return sizeList;
  }

  Widget getSizeItemWidget({required String name,required VoidCallback onTap, required bool isSelected}){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(right: 5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(),
            color: isSelected? AppColors.themeColor : Colors.transparent
        ),
        child: Text(name,style: TextStyle(color: isSelected? Colors.white:null),),
      ),
    );
  }
}