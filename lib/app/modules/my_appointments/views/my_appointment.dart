import 'dart:async';

import 'package:cancer_chat/app/modules/my_appointments/widgets/my_appointment_card_widget.dart';
import 'package:cancer_chat/core/theme/colors.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_callkit_incoming/entities/android_params.dart';
import 'package:flutter_callkit_incoming/entities/call_kit_params.dart';
import 'package:flutter_callkit_incoming/entities/ios_params.dart';
import 'package:flutter_callkit_incoming/flutter_callkit_incoming.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

import '../widgets/rounded_searchbar.dart';

class MyAppointment extends StatefulWidget {
  const MyAppointment({super.key});

  @override
  State<MyAppointment> createState() => _MyAppointmentState();
}

class _MyAppointmentState extends State<MyAppointment> {
  late final Uuid _uuid;
  String? _currentUuid;
  String textEvents = "";

  @override
  void initState() {
    super.initState();
    _uuid = const Uuid();
    _currentUuid = "";
    textEvents = "";
    initCurrentCall();
    //listenerEvent(onEvent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Remix.shield_cross_fill,
            color: AppColors.primary,
            size: 50,
          ),
          onPressed: () {
            context.go('/home-page');
          },
        ),
        title: Text(
          'My Appointments',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 23,
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.primary100,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_rounded,
                      color: AppColors.primary,
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
      body: ContainedTabBarView(
        tabs: const [
          Text('Upcoming'),
          //is this not supposed to bed Upcoming and past appointments ??
          //it is... i am suprised it changed back to first and second cause i wrote upcoming and past
          Text('Past'),
        ],
        tabBarProperties: TabBarProperties(
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0,
          ),
          indicator: ContainerTabIndicator(
            width: MediaQuery.of(context).size.width * 0.5,
            radius: BorderRadius.circular(16.0),
            color: AppColors.primary,
            borderWidth: 2.0,
            borderColor: AppColors.primary,
          ),
          labelColor: Colors.white,
          unselectedLabelColor: AppColors.primary,
        ),
        views: [
          Container(
            color: AppColors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Image.asset('assets/images/sad-face.png'),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'You don\'t have an appointment',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.26,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/appointment1');
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Text(
                      'Book Appointment Now',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RoundedSearchBar(),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Wednesday, March 27 2022',
                        style: GoogleFonts.roboto(
                          color: AppColors.grey60,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    // onDoubleTap: startOutGoingCall,
                    onTap: (() async {
                      // urlLauncher('08016857532',
                      //     urlLaunchType: UrlLaunchType.call);
                      final call = Uri.parse('tel://112');
                      if (await canLaunchUrl(call)) {
                        launchUrl(call);
                      } else {
                        throw 'Could not launch $call';
                      }
                    }),

                    child: const AppointmentCard(
                      image: 'assets/images/doctor2.jpg',
                      name: 'DR. Guy Hawkins',
                      mode: 'Voice Call - ',
                      status: 'Completed',
                      time: '13:00 - 13:30PM',
                      icon1: Icons.call,
                      icon2: Icons.call,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.go('/myAppointmentPage');
                    },
                    child: const AppointmentCard(
                      image: 'assets/images/doctor3.jpg',
                      name: 'DR. Mary Steward',
                      mode: 'Messages - ',
                      status: 'Completed',
                      time: '15:00 - 16:30PM',
                      icon1: Icons.message,
                      icon2: Icons.message,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Monday, March 24 2022',
                        style: GoogleFonts.roboto(
                          color: AppColors.grey60,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AppointmentCard(
                    image: 'assets/images/person1.jpg',
                    name: 'DR. Kareem King',
                    mode: 'Video Call - ',
                    status: 'Completed',
                    time: '18:00 - 18:30PM',
                    icon1: Icons.video_call,
                    icon2: Icons.video_call,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const AppointmentCard(
                    image: 'assets/images/doctor3.jpg',
                    name: 'DR. Mary Steward',
                    mode: 'Messages - ',
                    status: 'Completed',
                    time: '15:00 - 16:30PM',
                    icon1: Icons.message,
                    icon2: Icons.message,
                  ),
                ],
              ),
            ),
          ),
        ],
        onChange: (index) => print(index),
      ),
    );
  }

  initCurrentCall() async {
    //check current call from pushkit if possible
    var calls = await FlutterCallkitIncoming.activeCalls();
    if (calls is List) {
      if (calls.isNotEmpty) {
        print('DATA: $calls');
        _currentUuid = calls[0]['id'];
        return calls[0];
      } else {
        _currentUuid = "";
        return null;
      }
    }
  }

  Future<void> makeFakeCallInComing() async {
    await Future.delayed(const Duration(seconds: 10), () async {
      _currentUuid = _uuid.v4();

      final params = CallKitParams(
        id: _currentUuid,
        nameCaller: 'Hien Nguyen',
        appName: 'Callkit',
        avatar: 'https://i.pravatar.cc/100',
        handle: '0123456789',
        type: 0,
        duration: 30000,
        textAccept: 'Accept',
        textDecline: 'Decline',
        textMissedCall: 'Missed call',
        textCallback: 'Call back',
        extra: <String, dynamic>{'userId': '1a2b3c4d'},
        headers: <String, dynamic>{'apiKey': 'Abc@123!', 'platform': 'flutter'},
        android: const AndroidParams(
          isCustomNotification: true,
          isShowLogo: false,
          isShowCallback: true,
          isShowMissedCallNotification: true,
          ringtonePath: 'system_ringtone_default',
          backgroundColor: '#0955fa',
          backgroundUrl: 'assets/test.png',
          actionColor: '#4CAF50',
          incomingCallNotificationChannelName: 'Incoming Call',
          missedCallNotificationChannelName: 'Missed Call',
        ),
        ios: IOSParams(
          iconName: 'CallKitLogo',
          handleType: '',
          supportsVideo: true,
          maximumCallGroups: 2,
          maximumCallsPerCallGroup: 1,
          audioSessionMode: 'default',
          audioSessionActive: true,
          audioSessionPreferredSampleRate: 44100.0,
          audioSessionPreferredIOBufferDuration: 0.005,
          supportsDTMF: true,
          supportsHolding: true,
          supportsGrouping: false,
          supportsUngrouping: false,
          ringtonePath: 'system_ringtone_default',
        ),
      );
      await FlutterCallkitIncoming.showCallkitIncoming(params);
    });
  }

  Future<void> endCurrentCall() async {
    initCurrentCall();
    await FlutterCallkitIncoming.endCall(_currentUuid!);
  }

  Future<void> startOutGoingCall() async {
    _currentUuid = _uuid.v4();
    final params = CallKitParams(
      id: _currentUuid,
      nameCaller: 'Hien Nguyen',
      handle: '0123456789',
      type: 1,
      extra: <String, dynamic>{'userId': '1a2b3c4d'},
      ios: IOSParams(handleType: 'number'),
    );
    await FlutterCallkitIncoming.startCall(params);
  }

  Future<void> activeCalls() async {
    var calls = await FlutterCallkitIncoming.activeCalls();
    print(calls);
  }

  Future<void> endAllCalls() async {
    await FlutterCallkitIncoming.endAllCalls();
  }

  Future<void> getDevicePushTokenVoIP() async {
    var devicePushTokenVoIP =
        await FlutterCallkitIncoming.getDevicePushTokenVoIP();
    print(devicePushTokenVoIP);
  }

//   Future<void> listenerEvent(Function? callback) async {
//     try {
//       FlutterCallkitIncoming.onEvent.listen((event) async {
//         print('HOME: $event');
//         switch (event!.event) {
//           case Event.ACTION_CALL_INCOMING:
//             // TODO: received an incoming call
//             break;
//           case Event.ACTION_CALL_START:
//             // TODO: started an outgoing call
//             // TODO: show screen calling in Flutter
//             break;
//           case Event.ACTION_CALL_ACCEPT:
//             // TODO: accepted an incoming call
//             // TODO: show screen calling in Flutter
//             NavigationService.instance
//                 .pushNamedIfNotCurrent(AppRoute.callingPage, args: event.body);
//             break;
//           case Event.ACTION_CALL_DECLINE:
//             // TODO: declined an incoming call
//             await requestHttp("ACTION_CALL_DECLINE_FROM_DART");
//             break;
//           case Event.ACTION_CALL_ENDED:
//             // TODO: ended an incoming/outgoing call
//             break;
//           case Event.ACTION_CALL_TIMEOUT:
//             // TODO: missed an incoming call
//             break;
//           case Event.ACTION_CALL_CALLBACK:
//             // TODO: only Android - click action `Call back` from missed call notification
//             break;
//           case Event.ACTION_CALL_TOGGLE_HOLD:
//             // TODO: only iOS
//             break;
//           case Event.ACTION_CALL_TOGGLE_MUTE:
//             // TODO: only iOS
//             break;
//           case Event.ACTION_CALL_TOGGLE_DMTF:
//             // TODO: only iOS
//             break;
//           case Event.ACTION_CALL_TOGGLE_GROUP:
//             // TODO: only iOS
//             break;
//           case Event.ACTION_CALL_TOGGLE_AUDIO_SESSION:
//             // TODO: only iOS
//             break;
//           case Event.ACTION_DID_UPDATE_DEVICE_PUSH_TOKEN_VOIP:
//             // TODO: only iOS
//             break;
//         }
//         if (callback != null) {
//           callback(event.toString());
//         }
//       });
//     } on Exception {}
//   }

//   //check with https://webhook.site/#!/2748bc41-8599-4093-b8ad-93fd328f1cd2
//   Future<void> requestHttp(content) async {
//     http.get(Uri.parse(
//         'https://webhook.site/7ecb5710-be50-470d-8c03-2842ce403a5a?data=$content'));
//   }

//   onEvent(event) {
//     if (!mounted) return;
//     setState(() {
//       textEvents += "${event.toString()}\n";
//     });
//   }
// }
}
