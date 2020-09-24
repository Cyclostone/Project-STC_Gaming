import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
// import './XDComponent11.dart';
// import './XDComponent31.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDLoginAccount extends StatelessWidget {
  XDLoginAccount({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4f008c),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(20.0, 101.0, 131.0, 40.0),
            size: Size(412.0, 870.0),
            pinLeft: true,
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Welcome',
              style: TextStyle(
                fontFamily: 'STC Forward',
                fontSize: 30,
                color: const Color(0xfff3f3f1),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(20.0, 148.0, 124.0, 19.0),
            size: Size(412.0, 870.0),
            pinLeft: true,
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Login to STC Gaming',
              style: TextStyle(
                fontFamily: 'STC Forward',
                fontSize: 14,
                color: const Color(0xfff3f3f1),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(134.0, 745.0, 144.0, 19.0),
            size: Size(412.0, 870.0),
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Don\'t have an account?',
              style: TextStyle(
                fontFamily: 'STC Forward',
                fontSize: 14,
                color: const Color(0xfff3f3f1),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(287.0, 435.0, 104.0, 19.0),
            size: Size(412.0, 870.0),
            pinRight: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Forgot password?',
              style: TextStyle(
                fontFamily: 'STC Forward',
                fontSize: 14,
                color: const Color(0xfff3f3f1),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(198.0, 549.0, 15.0, 19.0),
            size: Size(412.0, 870.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Or',
              style: TextStyle(
                fontFamily: 'STC Forward',
                fontSize: 14,
                color: const Color(0xb2f3f3f1),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(20.0, 303.5, 372.0, 32.5),
            size: Size(412.0, 870.0),
            pinLeft: true,
            pinRight: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(15.0, 0.0, 85.0, 19.0),
                  size: Size(372.0, 32.5),
                  pinLeft: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Email address',
                    style: TextStyle(
                      fontFamily: 'STC Forward',
                      fontSize: 14,
                      color: const Color(0xffff375e),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 32.5, 372.0, 0.0),
                  size: Size(372.0, 32.5),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  // child: XDComponent11(),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(20.0, 375.0, 372.0, 32.5),
            size: Size(412.0, 870.0),
            pinLeft: true,
            pinRight: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(15.0, 0.0, 58.0, 19.0),
                  size: Size(372.0, 32.5),
                  pinLeft: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontFamily: 'STC Forward',
                      fontSize: 14,
                      color: const Color(0xffff375e),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 32.5, 372.0, 0.0),
                  size: Size(372.0, 32.5),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  // child: XDComponent11(),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(20.0, 467.5, 372.0, 55.0),
            size: Size(412.0, 870.0),
            pinLeft: true,
            pinRight: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 372.0, 55.0),
                  size: Size(372.0, 55.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffff375e),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(159.0, 12.0, 54.0, 30.0),
                  size: Size(372.0, 55.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'STC Forward',
                      fontSize: 22,
                      color: const Color(0xfff3f3f1),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(20.0, 777.5, 372.0, 38.0),
            size: Size(412.0, 870.0),
            pinLeft: true,
            pinRight: true,
            pinBottom: true,
            fixedHeight: true,
            // child: XDComponent31(),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(21.0, 595.0, 370.0, 55.0),
            size: Size(412.0, 870.0),
            pinLeft: true,
            pinRight: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(130.0, 0.0, 110.0, 55.0),
                  size: Size(370.0, 55.0),
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff2a475e),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(260.0, 0.0, 110.0, 55.0),
                  size: Size(370.0, 55.0),
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(169.1, 19.0, 33.8, 20.0),
                  size: Size(370.0, 55.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'steam' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 33.8, 20.0),
                        size: Size(33.8, 20.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: SvgPicture.string(
                          _svg_owqa0r,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(302.3, 15.3, 24.7, 24.7),
                  size: Size(370.0, 55.0),
                  pinRight: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'google-hangouts' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 6.7, 5.5, 11.5),
                        size: Size(24.7, 24.7),
                        pinLeft: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_1byvpr,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(12.6, 10.0, 12.1, 11.9),
                        size: Size(24.7, 24.7),
                        pinRight: true,
                        pinBottom: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_87hurc,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(1.5, 14.9, 18.6, 9.8),
                        size: Size(24.7, 24.7),
                        pinLeft: true,
                        pinBottom: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_sguxfb,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(1.4, 0.0, 18.8, 10.0),
                        size: Size(24.7, 24.7),
                        pinLeft: true,
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_oawtsq,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 110.0, 55.0),
                  size: Size(370.0, 55.0),
                  pinLeft: true,
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 110.0, 55.0),
                        size: Size(110.0, 55.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff1778f2),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(49.0, 16.0, 12.0, 24.0),
                        size: Size(110.0, 55.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'facebook' (shape)
                            SvgPicture.string(
                          _svg_8ie61n,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_owqa0r =
    '<svg viewBox="0.0 6.4 33.8 20.0" ><path transform="translate(0.0, 0.0)" d="M 27.82302665710449 6.392999649047852 C 24.51078605651855 6.392999649047852 21.81621360778809 9.086492538452148 21.81621360778809 12.39873123168945 C 21.81621360778809 12.95257377624512 21.91572952270508 13.47937393188477 22.05743789672852 13.98886680603027 L 19.65060043334961 17.78680038452148 C 19.33149147033691 17.71324157714844 19.00264930725098 17.66456413269043 18.66298675537109 17.66456413269043 C 17.59965133666992 17.66456413269043 16.63583564758301 18.06155776977539 15.87754726409912 18.69652938842773 L 8.701390266418457 15.54763126373291 C 8.70679759979248 15.46217346191406 8.726268768310547 15.38320827484131 8.726268768310547 15.29775238037109 C 8.726268768310547 12.89199733734131 6.767266750335693 10.93515872955322 4.362594127655029 10.93515872955322 C 1.957921028137207 10.93515872955322 0 12.8909158706665 0 15.29775238037109 C 0 17.70458984375 1.957920551300049 19.66142845153809 4.362593173980713 19.66142845153809 C 5.258261203765869 19.66142845153809 6.091188430786133 19.3909969329834 6.783491611480713 18.92477416992188 L 14.31878185272217 22.23268699645996 C 14.42911720275879 24.54216957092285 16.32537841796875 26.39299774169922 18.66298484802246 26.39299774169922 C 21.0687370300293 26.39299774169922 23.02557754516602 24.43507766723633 23.02557754516602 22.02932357788086 C 23.02557754516602 21.84867477416992 22.99529075622559 21.67560005187988 22.97149467468262 21.5003604888916 L 27.01281356811523 18.32441711425781 C 27.2789192199707 18.36227607727051 27.54502296447754 18.4066276550293 27.82194328308105 18.4066276550293 C 31.13418388366699 18.4066276550293 33.82875442504883 15.71205234527588 33.82875442504883 12.39981460571289 C 33.82875823974609 9.085411071777344 31.13418388366699 6.392999649047852 27.82302665710449 6.392999649047852 Z M 2.317053079605103 15.29775238037109 C 2.317053079605103 14.1705961227417 3.235436677932739 13.25221252441406 4.362593173980713 13.25221252441406 C 5.49083137512207 13.25221252441406 6.409215450286865 14.16951465606689 6.409215450286865 15.29775238037109 C 6.409215450286865 16.42598915100098 5.49083137512207 17.34329414367676 4.362593173980713 17.34329414367676 C 3.235436677932739 17.34329414367676 2.317053079605103 16.42598915100098 2.317053079605103 15.29775238037109 Z M 18.66298675537109 24.14409065246582 C 17.49472618103027 24.14409065246582 16.54496955871582 23.1954174041748 16.54496955871582 22.02715682983398 C 16.54496955871582 20.85997581481934 17.49472618103027 19.90806007385254 18.66298675537109 19.90806007385254 C 19.83016777038574 19.90806007385254 20.77992248535156 20.85889434814453 20.77992248535156 22.02715682983398 C 20.77992248535156 23.1954174041748 19.83016777038574 24.14409065246582 18.66298675537109 24.14409065246582 Z M 27.82302665710449 15.82996082305908 C 25.93000984191895 15.82996082305908 24.39179801940918 14.2906665802002 24.39179801940918 12.39873123168945 C 24.39179801940918 10.50679683685303 25.93000984191895 8.967502593994141 27.82302665710449 8.967502593994141 C 29.71604347229004 8.967502593994141 31.25425720214844 10.50679683685303 31.25425720214844 12.39873123168945 C 31.25425720214844 14.2906665802002 29.71604347229004 15.82996082305908 27.82302665710449 15.82996082305908 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1byvpr =
    '<svg viewBox="0.0 6.7 5.5 11.5" ><path transform="translate(0.0, -131.61)" d="M 5.466923236846924 146.513427734375 L 4.608268737792969 149.7189025878906 L 1.469907283782959 149.7852935791016 C 0.5319975614547729 148.0456848144531 0 146.0553436279297 0 143.9402618408203 C 0 141.8949890136719 0.4974047541618347 139.9662780761719 1.379088878631592 138.2680053710938 L 1.37976336479187 138.2680053710938 L 4.173787117004395 138.7802429199219 L 5.397737979888916 141.5574951171875 C 5.141567707061768 142.3043365478516 5.001943111419678 143.1060333251953 5.001943111419678 143.9402618408203 C 5.002039432525635 144.8456573486328 5.166042804718018 145.7131195068359 5.466923236846924 146.513427734375 Z" fill="#fbbb00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_87hurc =
    '<svg viewBox="12.6 10.0 12.1 11.9" ><path transform="translate(-249.02, -198.15)" d="M 273.4752502441406 208.1759948730469 C 273.6169128417969 208.9221038818359 273.6907653808594 209.6926422119141 273.6907653808594 210.4801330566406 C 273.6907653808594 211.3631591796875 273.5979309082031 212.2245178222656 273.4210510253906 213.0553741455078 C 272.8206481933594 215.8826904296875 271.2518005371094 218.3514862060547 269.0784606933594 220.0985870361328 L 269.0777587890625 220.097900390625 L 265.5585632324219 219.9183349609375 L 265.0604858398438 216.8090667724609 C 266.5025939941406 215.9633331298828 267.6296081542969 214.6398010253906 268.2232666015625 213.0553741455078 L 261.6279907226563 213.0553741455078 L 261.6279907226563 208.1759948730469 L 268.3194885253906 208.1759948730469 L 273.4752502441406 208.1759948730469 L 273.4752502441406 208.1759948730469 Z" fill="#518ef8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sguxfb =
    '<svg viewBox="1.5 14.9 18.6 9.8" ><path transform="translate(-29.04, -294.5)" d="M 49.09393692016602 316.4535522460938 L 49.09461212158203 316.4542236328125 C 46.98093414306641 318.1531677246094 44.29589080810547 319.1697082519531 41.3730354309082 319.1697082519531 C 36.67597198486328 319.1697082519531 32.59223175048828 316.5443725585938 30.50900268554688 312.6808471679688 L 34.50601959228516 309.4089965820313 C 35.54761123657227 312.1888427734375 38.22922897338867 314.167724609375 41.3730354309082 314.167724609375 C 42.72432327270508 314.167724609375 43.99028778076172 313.8024291992188 45.07658767700195 313.1647338867188 L 49.09393692016602 316.4535522460938 Z" fill="#28b446" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oawtsq =
    '<svg viewBox="1.4 0.0 18.8 10.0" ><path transform="translate(-27.24, 0.0)" d="M 47.45156860351563 2.839504718780518 L 43.45590209960938 6.110697269439697 C 42.33163452148438 5.407951831817627 41.00265502929688 5.001991271972656 39.57885360717773 5.001991271972656 C 36.36388397216797 5.001991271972656 33.63211059570313 7.07163667678833 32.6427001953125 9.951179504394531 L 28.62467575073242 6.661677837371826 L 28.62400054931641 6.661677837371826 C 30.67673492431641 2.703975915908813 34.81197357177734 0 39.57885360717773 0 C 42.57151794433594 0 45.31548690795898 1.06601870059967 47.45156860351563 2.839504718780518 Z" fill="#f14336" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8ie61n =
    '<svg viewBox="69.0 653.0 12.0 24.0" ><path transform="translate(62.81, 653.0)" d="M 15.99699974060059 3.984999895095825 L 18.1879997253418 3.984999895095825 L 18.1879997253418 0.1689999103546143 C 17.80999946594238 0.1169999092817307 16.51000022888184 -8.940696716308594e-08 14.99600028991699 -8.940696716308594e-08 C 11.83699989318848 -8.940696716308594e-08 9.673000335693359 1.986999869346619 9.673000335693359 5.638999938964844 L 9.673000335693359 9 L 6.187000274658203 9 L 6.187000274658203 13.26599979400635 L 9.673000335693359 13.26599979400635 L 9.673000335693359 24 L 13.94700050354004 24 L 13.94700050354004 13.26700019836426 L 17.29199981689453 13.26700019836426 L 17.82299995422363 9.00100040435791 L 13.94600009918213 9.00100040435791 L 13.94600009918213 6.062000274658203 C 13.94700050354004 4.829000473022461 14.2790002822876 3.985000371932983 15.99699974060059 3.985000371932983 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
