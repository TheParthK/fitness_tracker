import 'package:flutter/material.dart';
import '../models/models.dart';

class ListItemCustom extends StatelessWidget {
  final CustomListModel info;
  const ListItemCustom({super.key, required this.info});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 40,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    info.item,
                    style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.5,
                    ),
                  ),
                )
              ),
              // Container(
              //   height: 35,
              //   width: .8,
              //   color: Colors.grey,
              //   ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(
                      style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      ),
                    children: [
                      TextSpan(text: info.cal.toString()),
                      const TextSpan(
                        text: ' Cal',
                        style: TextStyle(
                          // color: Colors.grey,
                          color: Color.fromARGB(255, 149, 255, 0),
                          fontSize: 12
                          ),
                        )
                      ]
                    )
                  ),
                )
              ),
            ],
          ),
        ),
        Container(width: double.infinity, height: .8, color: Colors.grey,),
      ],
    );
  }
} 