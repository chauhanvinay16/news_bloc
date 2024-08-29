// import 'package:flutter/material.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(color: Color(0xFFCFCFCF)),
//         borderRadius: BorderRadius.circular(24),
//         color: Color(0xFFFFFFFF),
//       ),
//       child: Container(
//         padding: EdgeInsets.fromLTRB(16, 16, 16, 63),
//         child: Stack(
//           clipBehavior: Clip.none,
//           children: [
//             SizedBox(
//               width: double.infinity,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Expanded(
//                                 child: Container(
//                                   margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       color: Color(0xFFF5F9FE),
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     child: Container(
//                                       height: 95,
//                                       padding: EdgeInsets.fromLTRB(5, 3, 5, 2),
//                                       child:
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           image: DecorationImage(
//                                             fit: BoxFit.cover,
//                                             image: NetworkImage(
//                                               'assets/images/kc_584_removebg_preview_1.png',
//                                             ),
//                                           ),
//                                         ),
//                                         child: Container(
//                                           width: 90,
//                                           height: 90,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       color: Color(0xFFF5F9FE),
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     child: Container(
//                                       height: 95,
//                                       padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
//                                       child:
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           image: DecorationImage(
//                                             fit: BoxFit.cover,
//                                             image: NetworkImage(
//                                               'assets/images/mrb_tp_331_removebg_preview_1.png',
//                                             ),
//                                           ),
//                                         ),
//                                         child: Container(
//                                           width: 90,
//                                           height: 90,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     color: Color(0xFFF5F9FE),
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Container(
//                                     height: 95,
//                                     padding: EdgeInsets.fromLTRB(5, 3, 5, 2),
//                                     child:
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           fit: BoxFit.cover,
//                                           image: NetworkImage(
//                                             'assets/images/gld_tp_521_removebg_preview_1.png',
//                                           ),
//                                         ),
//                                       ),
//                                       child: Container(
//                                         width: 90,
//                                         height: 90,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Expanded(
//                                 child: Container(
//                                   margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       color: Color(0xFFF5F9FE),
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     child: Container(
//                                       height: 95,
//                                       padding: EdgeInsets.fromLTRB(5, 3, 5, 2),
//                                       child:
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           image: DecorationImage(
//                                             fit: BoxFit.cover,
//                                             image: NetworkImage(
//                                               'assets/images/cltp_55_removebg_preview_1.png',
//                                             ),
//                                           ),
//                                         ),
//                                         child: Container(
//                                           width: 90,
//                                           height: 90,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       color: Color(0xFFF5F9FE),
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     child: Container(
//                                       height: 95,
//                                       padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
//                                       child:
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           image: DecorationImage(
//                                             fit: BoxFit.cover,
//                                             image: NetworkImage(
//                                               'assets/images/kc_0661_removebg_preview_1.png',
//                                             ),
//                                           ),
//                                         ),
//                                         child: Container(
//                                           width: 90,
//                                           height: 90,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     color: Color(0xFFF5F9FE),
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Container(
//                                     height: 95,
//                                     padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
//                                     child:
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           fit: BoxFit.cover,
//                                           image: NetworkImage(
//                                             'assets/images/kc_1511_removebg_preview_1.png',
//                                           ),
//                                         ),
//                                       ),
//                                       child: Container(
//                                         width: 90,
//                                         height: 90,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Expanded(
//                               child: Container(
//                                 margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     color: Color(0xFFF5F9FE),
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Container(
//                                     height: 95,
//                                     padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
//                                     child:
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           fit: BoxFit.cover,
//                                           image: NetworkImage(
//                                             'assets/images/kc_153_removebg_preview_1.png',
//                                           ),
//                                         ),
//                                       ),
//                                       child: Container(
//                                         width: 90,
//                                         height: 90,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                               child: Container(
//                                 margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     color: Color(0xFFF5F9FE),
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Container(
//                                     height: 95,
//                                     padding: EdgeInsets.fromLTRB(5, 3, 5, 2),
//                                     child:
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           fit: BoxFit.cover,
//                                           image: NetworkImage(
//                                             'assets/images/mrb_tp_281_removebg_preview_1.png',
//                                           ),
//                                         ),
//                                       ),
//                                       child: Container(
//                                         width: 90,
//                                         height: 90,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   color: Color(0xFFF5F9FE),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: Container(
//                                   height: 95,
//                                   padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
//                                   child:
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       image: DecorationImage(
//                                         fit: BoxFit.cover,
//                                         image: NetworkImage(
//                                           'assets/images/kc_326_removebg_preview_1.png',
//                                         ),
//                                       ),
//                                     ),
//                                     child: Container(
//                                       width: 90,
//                                       height: 90,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.fromLTRB(0, 0, 0, 104),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(0, 0, 0.6, 16),
//                                 child: Text(
//                                   'Login',
//                                   style: GoogleFonts.getFont(
//                                     'Inter',
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: 32,
//                                     height: 1.3,
//                                     color: Color(0xFF1C1B1B),
//                                   ),
//                                 ),
//                               ),
//                               Text(
//                                 'Get started by entering your mobile
//                                 number',
//                                 textAlign: TextAlign.center,
//                                 style: GoogleFonts.getFont(
//                                   'Inter',
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 14,
//                                   height: 1.6,
//                                   color: Color(0xFF56616D),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           child:
//                           Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Color(0xFFEAEFF5)),
//                               borderRadius: BorderRadius.circular(8),
//                               color: Color(0xFFF5F9FE),
//                             ),
//                             child: SizedBox(
//                               width: double.infinity,
//                               child: Container(
//                                 padding: EdgeInsets.fromLTRB(12.5, 0, 0, 0),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0, 16, 8, 16),
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                           color: Color(0xFFFFFFFF),
//                                           borderRadius: BorderRadius.circular(40),
//                                         ),
//                                         child: Stack(
//                                           children: [
//                                             Positioned(
//                                               right: -5.5,
//                                               top: 0,
//                                               child: SizedBox(
//                                                 width: 34.5,
//                                                 height: 24,
//                                                 child: SvgPicture.network(
//                                                   'assets/vectors/group_19_x2.svg',
//                                                 ),
//                                               ),
//                                             ),
//                                             Container(
//                                               width: 24,
//                                               height: 24,
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0, 16, 4.6, 16),
//                                       child: Text(
//                                         '+91 ',
//                                         style: GoogleFonts.getFont(
//                                           'Inter',
//                                           fontWeight: FontWeight.w400,
//                                           fontSize: 14,
//                                           height: 1.7,
//                                           color: Color(0xFF7C8BA0),
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                           color: Color(0xFFEAEFF5),
//                                         ),
//                                         child: Container(
//                                           width: 0,
//                                           height: 56,
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
//                                       child: Text(
//                                         '97279 27400',
//                                         style: GoogleFonts.getFont(
//                                           'Inter',
//                                           fontWeight: FontWeight.w400,
//                                           fontSize: 14,
//                                           height: 1.7,
//                                           color: Color(0xFF7C8BA0),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         margin: EdgeInsets.fromLTRB(0, 0, 0, 28),
//                         child: Stack(
//                           children: [
//                             Positioned(
//                               left: 8,
//                               right: 8,
//                               bottom: 10,
//                               child: ImageFiltered(
//                                 imageFilter: ImageFilter.blur(
//                                   sigmaX: 20,
//                                   sigmaY: 20,
//                                 ),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     color: Color(0xFF215C9E),
//                                   ),
//                                   child: Container(
//                                     width: 312,
//                                     height: 14,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: Color(0xFF2060A7)),
//                                 borderRadius: BorderRadius.circular(8),
//                                 color: Color(0xFF1C528E),
//                               ),
//                               child: Container(
//                                 width: double.infinity,
//                                 padding: EdgeInsets.fromLTRB(0, 15, 0.1, 15),
//                                 child:
//                                 Text(
//                                   'Login with OTP',
//                                   style: GoogleFonts.getFont(
//                                     'Inter',
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 16,
//                                     height: 1.5,
//                                     color: Color(0xFFFFFFFF),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       RichText(
//                         text: TextSpan(
//                           style: GoogleFonts.getFont(
//                             'Poppins',
//                             fontWeight: FontWeight.w400,
//                             fontSize: 14,
//                             height: 1.6,
//                             color: Color(0xFF3B4054),
//                           ),
//                           children: [
//                             TextSpan(
//                               text: 'Don’t have an account?',
//                               style: GoogleFonts.getFont(
//                                 'Inter',
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: 14,
//                                 height: 1.3,
//                                 color: Color(0xFF56616D),
//                               ),
//                             ),
//                             TextSpan(
//                               text: ' ',
//                               style: GoogleFonts.getFont(
//                                 'Inter',
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: 14,
//                                 height: 1.3,
//                               ),
//                             ),
//                             TextSpan(
//                               text: 'Register',
//                               style: GoogleFonts.getFont(
//                                 'Inter',
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 14,
//                                 height: 1.3,
//                                 color: Color(0xFFDF7223),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               left: -16,
//               right: -16,
//               top: 247,
//               child: Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment(0.061, 0.011),
//                     end: Alignment(0.072, -0.89),
//                     colors: <Color>[Color(0xFFFFFFFF), Color(0x00FFFFFF)],
//                     stops: <double>[0, 1],
//                   ),
//                 ),
//                 child: Container(
//                   width: 360,
//                   height: 91,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
