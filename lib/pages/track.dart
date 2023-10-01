import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:fitness_tracker/models/models.dart';
import 'package:fitness_tracker/widgets/list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackPage extends StatelessWidget {
  const TrackPage({super.key});
  static Map<String, double> datamap = {
    'Burnt' : 9,
    'Left' : 1,
  };
  static List<CustomListModel> foodInfos = [
    CustomListModel(item: 'Butter Chicken', cal: 650),
    CustomListModel(item: 'Omlette', cal: 59),
    CustomListModel(item: 'Boiled Eggs', cal: 24),
    CustomListModel(item: 'Noodles', cal: 84),
    CustomListModel(item: 'Chicken Tikka Masala', cal: 540),
    CustomListModel(item: 'Carbonated Drink', cal: 115),
    CustomListModel(item: 'Butter Chicken', cal: 650),
    CustomListModel(item: 'Omlette', cal: 59),
    CustomListModel(item: 'Boiled Eggs', cal: 24),
    CustomListModel(item: 'Noodles', cal: 84),
    CustomListModel(item: 'Chicken Tikka Masala', cal: 540),
    CustomListModel(item: 'Carbonated Drink', cal: 115),
  ];

  void _showTimePicker(context){
    // showTimePicker(
    //   context: context,
    //   initialTime: TimeOfDay.now()
    // );
    showCupertinoModalPopup(
    context: context,
    builder: (BuildContext builder) {
      return Container(
        height: MediaQuery.of(context).copyWith().size.height * 0.25,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 22, 22, 22),
          borderRadius: BorderRadius.vertical(top: Radius.circular(10))
        ),
        child: CupertinoDatePicker(
          mode: CupertinoDatePickerMode.dateAndTime,
          onDateTimeChanged: (value) {

          },
          initialDateTime: DateTime.now(),
        ),
      );
    });
  }
  void _showBottomDialogBox(context){
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 22, 22, 22),
            borderRadius: BorderRadius.vertical(top: Radius.circular(10))
          ),
          width: double.infinity,
          child: Column(
            children: [
              const Text(
                'Add a meal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Time',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: InkWell(
                      onTap: ()=> _showTimePicker(context),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          // color: Color.fromARGB(255, 35, 35, 35),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: const Text(
                          'Pick Time',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(0),
            children: [
              SizedBox(height: devicePadding.top + 20,),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const[
                        Text(
                          'THURSDAY, 28 SEP',
                          style: TextStyle(
                            color: Color.fromARGB(255, 149, 255, 0),
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Tracking',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Futura'
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          // image: NetworkImage('https://ichef.bbci.co.uk/images/ic/704xn/p02hdy14.jpg'),
                          image: AssetImage('assets/logo_w.png'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: size.width/1.4,
                height: size.width/1.4,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: size.width/1.4 - 100,
                        height: size.width/1.4 - 100,
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(size.width/2.8))
                        ),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              RichText(
                                text:  const TextSpan(
                                  style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Futura'
                                ),
                                  children:  [
                                    TextSpan(text: '1125'),
                                    // TextSpan(
                                    //   text: '/1250',
                                    //   style: TextStyle(
                                    //     color: Colors.grey,
                                    //     fontSize: 12
                                    //   )
                                    // )
                                  ]
                                )
                              ),
                              const Text(
                                'cal',
                                style: TextStyle( 
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                                ),
                              ),
                            ],
                          ),
                        )
                      ),
                    ),
                    AnimatedCircularChart(
                      size: Size(size.width/1.4 + 160, size.width/1.4 + 160),
                      duration: const Duration(milliseconds: 700),
                      initialChartData: const [
                        CircularStackEntry(
                          [
                            // CircularSegmentEntry(65, Color(0xFF69f0ae)),
                            // CircularSegmentEntry(100, Color.fromARGB(134, 39, 103, 123)),
                            CircularSegmentEntry(65, Color.fromARGB(255, 149, 255, 0)),
                            CircularSegmentEntry(100,Color.fromARGB(156, 62, 124, 0)),
                          ]
                        ),
                      ],
                      chartType: CircularChartType.Radial,
                      percentageValues: true,
                      edgeStyle: SegmentEdgeStyle.round,
                      holeRadius: size.width/1.4/2 - 80,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 70,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 22, 22, 22),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),  
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            ),
                          children: [
                            TextSpan(text: '325'),
                            TextSpan(
                              text: '\nProtien',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12
                                ),
                              )
                            ]
                          )
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: .8,
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            ),
                          children: [
                            TextSpan(text: '245'),
                            TextSpan(
                              text: '\nCarbs',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12
                                ),
                              )
                            ]
                          )
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: .8,
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            ),
                          children: [
                            TextSpan(text: '503'),
                            TextSpan(
                              text: '\nFibre',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12
                              ),
                            )
                          ]
                        )
                      ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      ' Meals',
                      style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      ),
                    ),
                    InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      onTap: () => _showBottomDialogBox(context),
                      // splashColor: Color.fromARGB(255, 149, 255, 0),
                      child: Container(
                        height: 32,
                        width: 32,
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.add_circle,
                          size: 32,
                          color: Color.fromARGB(255, 149, 255, 0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 22, 22, 22)
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...foodInfos.map((e) => ListItemCustom(info: e)),
                  ],
                ),
              ),
              SizedBox(height: devicePadding.bottom + 80,)
            ],
        ),
      ),
    );
  }
}


