import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import 'peringkat_view.dart';
import 'riwayat_poin_view.dart';
import 'tentang_view.dart';

class BeatsPointView extends StatefulWidget {
  const BeatsPointView({Key? key}) : super(key: key);

  @override
  State<BeatsPointView> createState() => _BeatsPointViewState();
}

class _BeatsPointViewState extends State<BeatsPointView>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 328,
              width: context.widthQuery,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/beats_point/headerbeatspoint4x.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: spacingNormal * 4,
                  ),
                  Text(
                    'BeatsPoint',
                    style: semibold16.copyWith(color: white),
                  ),
                  const SizedBox(
                    height: spacingNormal * 4 - 4,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      'assets/images/beats_point/profile.png',
                      height: 110,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    height: spacingNormal,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        height: 50,
                        width: 50,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/beats_point/coin.svg',
                                height: 20,
                              ),
                              const SizedBox(
                                width: spacingNormal,
                              ),
                              Text(
                                '5000 Pts',
                                style: semibold16.copyWith(color: white),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: spacingNormal,
                          ),
                          Container(
                            height: 32,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                  color: black.withOpacity(0.2),
                                  blurRadius: 1,
                                  offset: const Offset(1, 1), // Shadow position
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/beats_point/brown_helm.svg',
                                  height: 20,
                                ),
                                Text(
                                  'Perunggu',
                                  style: semibold12.copyWith(
                                    color: const Color(0xFFB08D57),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Get.defaultDialog(
                            title: "Selamat! \n Anda Mendapatkan",
                            titleStyle: semibold16.copyWith(
                              color: colorSecondaryText4,
                            ),
                            cancelTextColor: primaryColor,
                            content: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/beats_point/dialog_point.svg',
                                  width: context.widthQuery,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(
                                  height: spacingNormal,
                                ),
                                Text(
                                  '+500 Point',
                                  style: semibold16.copyWith(
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            buttonColor: primaryColor,
                            textCancel: "OK",
                          );
                        },
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            color: yellow,
                            boxShadow: [
                              BoxShadow(
                                color: black.withOpacity(0.2),
                                blurRadius: 1,
                                offset: const Offset(1, 1), // Shadow position
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Daily Point',
                              style: semibold12.copyWith(
                                color: colorSecondaryText5,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                paddingNormal,
                0,
                paddingNormal,
                paddingNormal,
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: colorSecondaryText5,
                          boxShadow: [
                            BoxShadow(
                              color: black.withOpacity(0.2),
                              blurRadius: 1,
                              offset: const Offset(1, 1), // Shadow position
                            ),
                          ],
                        ),
                        child: TabBar(
                          labelColor: black,
                          labelStyle: medium14,
                          controller: controller,
                          indicator: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          tabs: const [
                            Tab(
                              text: "Riwayat Poin",
                            ),
                            Tab(
                              text: "Peringkat",
                            ),
                            Tab(
                              text: "Tentang",
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(paddingNormal),
                        height: 390,
                        child: TabBarView(
                          controller: controller,
                          children: [
                            RiwayatPoinView(),
                            PeringkatView(),
                            TentangView()
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class BeatsPointView extends StatelessElement {

//   TabController beats_point_tab_controller;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: 328,
//               width: context.widthQuery,
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(
//                     'assets/images/beats_point/headerbeatspoint4x.png',
//                   ),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   const SizedBox(
//                     height: spacingNormal * 4,
//                   ),
//                   Text(
//                     'BeatsPoint',
//                     style: semibold16.copyWith(color: white),
//                   ),
//                   const SizedBox(
//                     height: spacingNormal * 4 - 4,
//                   ),
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(60),
//                     child: Image.asset(
//                       'assets/images/beats_point/profile.png',
//                       height: 110,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: spacingNormal,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SvgPicture.asset(
//                         'assets/images/beats_point/coin.svg',
//                         height: 20,
//                       ),
//                       const SizedBox(
//                         width: spacingNormal,
//                       ),
//                       Text(
//                         '5000 Pts',
//                         style: semibold16.copyWith(color: white),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: spacingNormal,
//                   ),
//                   Container(
//                     height: 32,
//                     width: 120,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(32),
//                       color: white,
//                       boxShadow: [
//                         BoxShadow(
//                           color: black.withOpacity(0.2),
//                           blurRadius: 1,
//                           offset: const Offset(1, 1), // Shadow position
//                         ),
//                       ],
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SvgPicture.asset(
//                           'assets/images/beats_point/brown_helm.svg',
//                           height: 20,
//                         ),
//                         Text(
//                           'Perunggu',
//                           style: semibold12.copyWith(
//                             color: const Color(0xFFB08D57),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   // Container(
//                   //   height: 55,
//                   //   width: 55,
//                   //   child: const Text('Daily Point'),
//                   //   decoration: BoxDecoration(
//                   //     borderRadius: BorderRadius.circular(55),
//                   //     color: Colors.amber,
//                   //     boxShadow: [
//                   //       BoxShadow(
//                   //         color: black.withOpacity(0.2),
//                   //         blurRadius: 1,
//                   //         offset: const Offset(1, 1), // Shadow position
//                   //       ),
//                   //     ],
//                   //   ),
//                   // )
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(paddingNormal),
//               child: Column(
//                 children: [
//                   Container(
//                     height: 48,
//                     width: context.widthQuery * 0.85,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(32),
//                       color: colorSecondaryText5,
//                       boxShadow: [
//                         BoxShadow(
//                           color: black.withOpacity(0.2),
//                           blurRadius: 1,
//                           offset: const Offset(1, 1), // Shadow position
//                         ),
//                       ],
//                     ),
//                   ),
//                   Column(
//                     children: [
//                       Container(
//                         height: 45,
//                         decoration: BoxDecoration(
//                             color: Colors.grey[300],
//                             borderRadius: BorderRadius.circular(25.0)),
//                         child: TabBar(
//                           indicator: BoxDecoration(
//                               color: Colors.green[300],
//                               borderRadius: BorderRadius.circular(25.0)),
//                           labelColor: Colors.white,
//                           unselectedLabelColor: Colors.black,
//                           tabs: const [
//                             Tab(
//                               text: 'Chats',
//                             ),
//                             Tab(
//                               text: 'Status',
//                             ),
//                             Tab(
//                               text: 'Calls',
//                             ),
//                             Tab(
//                               text: 'Settings',
//                             )
//                           ],
//                         ),
//                       ),
//                       const Expanded(
//                           child: TabBarView(
//                         children: [
//                           Center(
//                             child: Text("Chats Pages"),
//                           ),
//                           Center(
//                             child: Text("Status Pages"),
//                           ),
//                           Center(
//                             child: Text('Calls Page'),
//                           ),
//                           Center(
//                             child: Text('Settings Page'),
//                           )
//                         ],
//                       ))
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
