import 'package:flutter/material.dart';
import 'package:testnewproject/homePage.dart';
import 'package:testnewproject/participantScreen.dart';
import 'package:testnewproject/paymentScreen.dart';
import 'package:testnewproject/posterScreen.dart';
import 'package:testnewproject/receiptScreen.dart';
import 'package:testnewproject/reportScreen.dart';
import 'package:testnewproject/selectPayment.dart';
import 'package:testnewproject/splashScreen.dart';
import 'package:testnewproject/topReports.dart';
import 'package:testnewproject/topVolunteer.dart';
import 'package:testnewproject/VounteerRegScreen.dart';
import 'package:testnewproject/transactionScreen.dart';
import 'package:testnewproject/volunteerPayments.dart';

import 'SuccessPaymentScreen.dart';
import 'bankDetailsScreen.dart';
import 'failedPaymentScreen.dart';
import 'historyScreen.dart';
import 'leaderBoardScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: SplashScreen(),
      //  home: HomePage(),
      home: ParticipantScreen(),
      // home: SelectPayment(),
      // home: HistoryScreen(),
      // home: PaymentScreen(),
      // home: FailedPaymentScreen(),
      // home: SuccessPaymentScreen(),
      // home: PosterScreen(),
      // home: ReceiptScreen(),
      // home: TopReports(),
      // home: TopVolunteer(),
      // home: LeaderBoard(),
      // home: ReportScreen(),
      // home: VolunteerRegScreen(),
      // home: TransactionScreen(),
      // home:VolunteerPayments()
      // home: BankDetails(),
    );
  }
}


