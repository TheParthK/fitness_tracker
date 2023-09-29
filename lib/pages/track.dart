import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:fitness_tracker/models/models.dart';
import 'package:fitness_tracker/widgets/list_item.dart';
import 'package:flutter/material.dart';

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

  void _showBottomDialogBox(context){
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 22, 22, 22),
            borderRadius: BorderRadius.vertical(top: Radius.circular(10))
          ),
          width: double.infinity,
          child: Column(
            children: const [
              Text(
                'Add Food Item',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
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
                      children: const [
                        Text(
                          'THURSDAY, 28 SEP',
                          style: TextStyle(
                            color: Color.fromARGB(141, 255, 255, 255),
                            fontWeight: FontWeight.w600,
                            fontSize: 12
                          ),
                        ),
                        Text(
                          'Tracking',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          image: NetworkImage('https://ichef.bbci.co.uk/images/ic/704xn/p02hdy14.jpg'),
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
                                text: const TextSpan(
                                  style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50
                                ),
                                  children: [
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17
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
                            CircularSegmentEntry(80, Color(0xFF69f0ae)),
                            CircularSegmentEntry(100, Color.fromARGB(134, 39, 103, 123)),
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
                      ' Today',
                      style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      ),
                    ),
                    GestureDetector(
                      onTap: ()=>_showBottomDialogBox(context),
                      child: Container(
                        height: 32,
                        width: 32,
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.white,
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
                    ...foodInfos.map((e) => ListItemCustom(info: e))
                  ],
                ),
              )
            ],
        ),
      ),
    );
  }
}


