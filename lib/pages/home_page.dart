import 'package:biography_app/pages/person_detail_page.dart';
import 'package:biography_app/person_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool _showGoToTopButton = false;
  ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            _showGoToTopButton = true;
          } else {
            _showGoToTopButton = false;
          }
        });
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _goToTop() {
    _scrollController.animateTo(0,
        duration: Duration(milliseconds: 40), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0A0A0A).withOpacity(0.9),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'HISTORICAL FIGURES',
                style: TextStyle(
                  color: Color(0xffF9F7F7),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        body: ListView.builder(
          controller: _scrollController,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final PersonProfileModel personProfileModel =
                personProfileModelList[index];
            return Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        personProfileModel.name,
                        style: GoogleFonts.poppins(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff7C7F81),
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        personProfileModel.yearBorn,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff7C7F81),
                        ),
                      ),
                      Text(
                        personProfileModel.job,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  width > 1000
                      ? Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<PersonDetailPage>(
                                    builder: (_) => PersonDetailPage(
                                      personProfileModel: personProfileModel,
                                    ),
                                  ),
                                );
                              },
                              child: Image.asset(
                                personProfileModel.image,
                                width: 220,
                                height: 400,
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    personProfileModel.quotes,
                                    style: GoogleFonts.poppins(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<PersonDetailPage>(
                                    builder: (_) => PersonDetailPage(
                                      personProfileModel: personProfileModel,
                                    ),
                                  ),
                                );
                              },
                              child: Image.asset(
                                personProfileModel.image,
                                width: 220,
                                height: 400,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              width: width * 0.8,
                              child: Text(
                                personProfileModel.quotes,
                                style: GoogleFonts.poppins(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            );
          },
          itemCount: personProfileModelList.length,
        ),
        floatingActionButton: _showGoToTopButton == false
            ? null
            : FloatingActionButton(
                mini: true,
                focusColor: Colors.black,
                backgroundColor: Colors.white.withOpacity(0.8),
                onPressed: _goToTop,
                child: Icon(Icons.arrow_upward_outlined),
              ),
      ),
    );
  }
}
