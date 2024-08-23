import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perfumes_store/components/masked_image.dart';
import 'package:perfumes_store/components/search_filed.dart';
import 'package:perfumes_store/constants.dart';
import 'package:perfumes_store/models/perfumes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double defultHight = MediaQuery.of(context).size.height;
    double defultWidth = MediaQuery.of(context).size.width;
    int index = 0;

    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            height: defultHight,
            width: defultWidth,
            color: Colors.black,
            child: Stack(
              children: [
                Positioned(
                    top: defultHight * 0.1,
                    left: defultWidth * 0.5,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(121, 0, 250, 1),
                          shape: BoxShape.circle),
                      height: defultHight * 0.5,
                      width: defultWidth * 0.7,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 110, sigmaY: 110),
                        child: SizedBox(
                          height: defultHight * 0.3,
                          width: defultWidth * 0.6,
                        ),
                      ),
                    )),
                Positioned(
                    top: defultHight * 0.1,
                    right: defultWidth * 0.6,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(116, 208, 216, 1),
                          shape: BoxShape.circle),
                      height: defultHight * 0.5,
                      width: defultWidth * 0.7,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 110, sigmaY: 110),
                        child: SizedBox(
                          height: defultHight * 0.3,
                          width: defultWidth * 0.6,
                        ),
                      ),
                    )),
                Positioned(
                    top: defultHight * 0.4,
                    left: defultWidth * 0.1,
                    child: Container(
                      height: defultHight * 0.5,
                      width: defultWidth * 0.9,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 0, 0, 0)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 110, sigmaY: 110),
                        child: Container(),
                      ),
                    )),
                SafeArea(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text('More Aromatic Notes  ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: defultHight <= 660 ? 20 : 30,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SearchFiled(),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 160),
                      child: Text('Summer fragrances  ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: defultHight <= 660 ? 15 : 20,
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      flex: 5,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: summerPerfumes.length,
                          itemBuilder: (context, index) {
                            String mask;
                            if (index == 0) {
                              mask = Constants.kMaskFirstIndex;
                            } else if (index == summerPerfumes.length - 1) {
                              mask = Constants.kMaskCenter;
                            } else
                              mask = Constants.kMaskLastIndex;
                            return Container(
                              width: 130,
                              height: 200,
                              margin: const EdgeInsets.only(
                                left: 40,
                              ),
                              child: GestureDetector(
                                onTap: (){
                                  Perfume     perfumes =summerPerfumes[index];
                                     showModalBottomSheet(
                                    backgroundColor: Colors.black,
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (context) {
                                      return SingleChildScrollView(
                                        child: Container(
                                           decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(topLeft:Radius.circular(50),topRight:Radius.circular(50) ),  
                                                       color:
                                              Colors.black38.withOpacity(0.9),
                                           ),
                                          height: defultHight,
                                          width: defultWidth,
                                          child: Stack(
                                            children: [
                                             Positioned(
                    top: defultHight * 0.1,
                    right: defultWidth * 0.6,
                    child: Container(
                      decoration:  BoxDecoration(
                          color:perfumes.perfumeColor ,
                          shape: BoxShape.circle),
                      height: defultHight * 0.5,
                      width: defultWidth * 0.7,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 110, sigmaY: 110),
                        child: SizedBox(
                          height: defultHight * 0.3,
                          width: defultWidth * 0.6,
                        ),
                      ),
                    )),
                                             
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, top: 30),
                                                child: Text(
                                                  perfumes
                                                      .perfumeName,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20, top: 70),
                                                child: Text(
                                                  'Release Year ${perfumes.perfumeReleaseYear}',
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13),
                                                ),
                                              ),
                                              Positioned(
                                                  top: 180,
                                                  right: 10,
                                                  child: Image(
                                                    image: AssetImage(
                                                        perfumes
                                                            .perfumeImage),
                                                    height: defultHight * 0.3,
                                                    width: defultWidth * 0.3,
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 100,
                                                    right: 30),
                                                child: Text(
                                                  'Description${perfumes.perfumeSinopsis}',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontFamily:
                                                          GoogleFonts.aBeeZee()
                                                              .fontFamily),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20, top: 110),
                                                  child: Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.cloudy_snowing,
                                                        color: Colors.white,
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        'For ${perfumes.perfumeCategory}',
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      const SizedBox(
                                                        height: 120,
                                                      ),
                                                    ],
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 190, left: 20),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Rating by other people',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily:
                                                              GoogleFonts.abel()
                                                                  .fontFamily,
                                                          fontSize: 13),
                                                    ),
                                                    const SizedBox(
                                                      width: 20,
                                                    ),
                                                    RatingBar.builder(
                                                        unratedColor:
                                                            Colors.white,
                                                        itemSize: 14,
                                                        initialRating:
                                                            perfumes
                                                                .perfumeRating
                                                                .truncateToDouble(),
                                                        maxRating: 2,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return const Icon(
                                                            Icons.star,
                                                            color: Colors
                                                                .yellowAccent,
                                                          );
                                                        },
                                                        onRatingUpdate:
                                                            // ignore: avoid_types_as_parameter_names
                                                            (int) {}),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                  child: ListView.builder(
                                                padding: const EdgeInsets.only(
                                                    left: 20, top: 230),

                                                shrinkWrap: true,
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                itemCount: perfumes
                                                    .perfumeNotes
                                                    .length, //
                                                itemBuilder:
                                                    (context, noteIndex) {
                                                  return Row(children: [
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: CircleAvatar(
                                                        radius: 24,
                                                         backgroundColor: Colors.white.withOpacity(0.2),
                                                        child: CircleAvatar(
                                                           onBackgroundImageError: (e, s) {
                                                            debugPrint('image issue, $e,$s');
                                                          },
                                                          radius: 20,
                                                          backgroundImage:
                                                              
                                                              NetworkImage(
                                                                scale:0.9 ,
                                                           perfumes
                                                                    .perfumeNoteImages[
                                                                noteIndex],
                                                          ),
                                                        backgroundColor: Colors.white),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 12,
                                                    ),
                                                    Text(
                                                      perfumes
                                                              .perfumeNotes[
                                                          noteIndex],
                                                      style: const TextStyle(
                                                          fontSize: 13,
                                                          color: Colors.white),
                                                    )
                                                  ]);
                                                },
                                              ))
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                                },
                                child: MaskedImage(
                                    asset: summerPerfumes[index].perfumeImage,
                                    mask: mask),
                              ),
                            );
                          }),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 160),
                      child: Text('Winter fragrances  ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: defultHight <= 660 ? 15 : 20,
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      flex: 5,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: winterPerfumes.length,
                          itemBuilder: (context, index) {
                            String mask;
                            if (index == 0) {
                              mask = Constants.kMaskFirstIndex;
                            } else if (index == winterPerfumes.length - 1) {
                              mask = Constants.kMaskCenter;
                            } else
                              mask = Constants.kMaskLastIndex;
                            return GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    backgroundColor: Colors.black,
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (context) {
                                      return SingleChildScrollView(
                                        child: Container(
                                           decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(topLeft:Radius.circular(50),topRight:Radius.circular(50) ),  
                                                       color:
                                              Colors.black38.withOpacity(0.9),
                                           ),
                                          height: defultHight,
                                          width: defultWidth,
                                          child: Stack(
                                            children: [
                                             Positioned(
                    top: defultHight * 0.1,
                    right: defultWidth * 0.6,
                    child: Container(
                      decoration:  BoxDecoration(
                          color:winterPerfumes[index].perfumeColor ,
                          shape: BoxShape.circle),
                      height: defultHight * 0.5,
                      width: defultWidth * 0.7,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 110, sigmaY: 110),
                        child: SizedBox(
                          height: defultHight * 0.3,
                          width: defultWidth * 0.6,
                        ),
                      ),
                    )),
                                             
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, top: 30),
                                                child: Text(
                                                  winterPerfumes[index]
                                                      .perfumeName,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20, top: 70),
                                                child: Text(
                                                  'Release Year ${winterPerfumes[index].perfumeReleaseYear}',
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13),
                                                ),
                                              ),
                                              Positioned(
                                                  top: 180,
                                                  right: 10,
                                                  child: Image(
                                                    image: AssetImage(
                                                        winterPerfumes[index]
                                                            .perfumeImage),
                                                    height: defultHight * 0.3,
                                                    width: defultWidth * 0.3,
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 100,
                                                    right: 30),
                                                child: Text(
                                                  'Description${winterPerfumes[index].perfumeSinopsis}',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontFamily:
                                                          GoogleFonts.aBeeZee()
                                                              .fontFamily),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20, top: 110),
                                                  child: Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.cloudy_snowing,
                                                        color: Colors.white,
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        'For ${winterPerfumes[index].perfumeCategory}',
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      const SizedBox(
                                                        height: 120,
                                                      ),
                                                    ],
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 190, left: 20),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Rating by other people',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily:
                                                              GoogleFonts.abel()
                                                                  .fontFamily,
                                                          fontSize: 13),
                                                    ),
                                                    const SizedBox(
                                                      width: 20,
                                                    ),
                                                    RatingBar.builder(
                                                        unratedColor:
                                                            Colors.white,
                                                        itemSize: 14,
                                                        initialRating:
                                                            winterPerfumes[
                                                                    index]
                                                                .perfumeRating
                                                                .truncateToDouble(),
                                                        maxRating: 2,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return const Icon(
                                                            Icons.star,
                                                            color: Colors
                                                                .yellowAccent,
                                                          );
                                                        },
                                                        onRatingUpdate:
                                                            // ignore: avoid_types_as_parameter_names
                                                            (int) {}),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                  child: ListView.builder(
                                                padding: const EdgeInsets.only(
                                                    left: 20, top: 230),

                                                shrinkWrap: true,
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                itemCount: winterPerfumes[index]
                                                    .perfumeNotes
                                                    .length, //
                                                itemBuilder:
                                                    (context, noteIndex) {
                                                  return Row(children: [
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: CircleAvatar(
                                                        radius: 24,
                                                         backgroundColor: Colors.white.withOpacity(0.2),
                                                        child: CircleAvatar(
                                                           onBackgroundImageError: (e, s) {
                                                            debugPrint('image issue, $e,$s');
                                                          },
                                                          radius: 20,
                                                          backgroundImage:
                                                              
                                                              NetworkImage(
                                                                scale:0.9 ,
                                                            winterPerfumes[index]
                                                                    .perfumeNoteImages[
                                                                noteIndex],
                                                          ),
                                                        backgroundColor: Colors.white),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 12,
                                                    ),
                                                    Text(
                                                      winterPerfumes[index]
                                                              .perfumeNotes[
                                                          noteIndex],
                                                      style: const TextStyle(
                                                          fontSize: 13,
                                                          color: Colors.white),
                                                    )
                                                  ]);
                                                },
                                              ))
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: Container(
                                width: 130,
                                height: 200,
                                margin: const EdgeInsets.only(left: 40),
                                child: MaskedImage(
                                    asset: winterPerfumes[index].perfumeImage,
                                    mask: mask),
                              ),
                            );
                          }),
                    ),
                    const Spacer()
                  ],
                )),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                index = index;
                index == 0
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()))
                    : Navigator.pop(context);
              });
            },
            currentIndex: index,
            selectedFontSize: 13,
            unselectedFontSize: 10,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            backgroundColor: Colors.black.withOpacity(0.2),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), label: ''),
            ]));
  }
}
