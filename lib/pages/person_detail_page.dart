import 'package:biography_app/person_profile_model.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonDetailPage extends StatelessWidget {
  final PersonProfileModel personProfileModel;

  const PersonDetailPage({
    Key? key,
    required this.personProfileModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0A0A0A).withOpacity(0.9),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            iconSize: 16,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'BIO SUMMARY',
                style: TextStyle(
                  color: Color(0xffF9F7F7),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.only(left: 24),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          personProfileModel.name,
                          style: GoogleFonts.poppins(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7C7F81),
                          ),
                        ),
                        ClapBuilder(),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: width * 0.8,
                  child: Text(
                    personProfileModel.description,
                    style: GoogleFonts.poppins(
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Image.asset(
                  personProfileModel.image,
                  width: 220,
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SummaryPersonBuilder extends StatefulWidget {
  const SummaryPersonBuilder({
    Key? key,
    required this.width,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  final double width;
  final String title;
  final String description;
  final String image;

  @override
  _SummaryPersonBuilderState createState() => _SummaryPersonBuilderState();
}

class _SummaryPersonBuilderState extends State<SummaryPersonBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: GoogleFonts.poppins(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7C7F81),
                ),
              ),
              SizedBox(height: 7),
            ],
          ),
          Container(
            width: widget.width * 0.8,
            child: Text(
              widget.description,
              style: GoogleFonts.poppins(
                fontStyle: FontStyle.italic,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          Image.asset(
            widget.image,
            width: 220,
            height: 220,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}

class ClapBuilder extends StatefulWidget {
  const ClapBuilder({Key? key}) : super(key: key);

  @override
  _ClapBuilderState createState() => _ClapBuilderState();
}

class _ClapBuilderState extends State<ClapBuilder> {
  int _clapCount = 0;
  bool _isClapped = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: Stack(
        children: [
          InkWell(
            onTap: _toggleClap,
            child: RotatedBox(
              quarterTurns: 3,
              child: Image.asset(
                'assets/clap_white.png',
                width: 25,
                height: 25,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 16,
              height: 12,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '$_clapCount',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _toggleClap() {
    setState(() {
      if (_isClapped) {
        _clapCount -= 1;
        _isClapped = true;
      } else {
        _clapCount += 1;
        _isClapped = false;
      }
    });
  }
}
