import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

List<TargetFocus> addSiteTargetsPage({
  required GlobalKey notifications,
  required GlobalKey likes,
  required GlobalKey search,
  required GlobalKey doctorSections,
  required GlobalKey topDoctors,
}) {
  List<TargetFocus> targets = [];

  targets.add(TargetFocus(
      keyTarget: notifications,
      alignSkip: Alignment.topRight,
      radius: 20,
      shape: ShapeLightFocus.RRect,
      contents: [
        TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) {
              return Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'This section helps you to access your notifications',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              );
            })
      ]));
  //likes
  targets.add(TargetFocus(
      keyTarget: likes,
      alignSkip: Alignment.topRight,
      radius: 20,
      shape: ShapeLightFocus.RRect,
      contents: [
        TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) {
              return Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'This section helps you to access your favourite doctors',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              );
            })
      ]));
  //search
  targets.add(TargetFocus(
      keyTarget: search,
      alignSkip: Alignment.topRight,
      radius: 20,
      shape: ShapeLightFocus.RRect,
      contents: [
        TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) {
              return Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'This section helps you to search for any medical specialists and category',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              );
            })
      ]));
  //doctorSections
  targets.add(TargetFocus(
      keyTarget: doctorSections,
      alignSkip: Alignment.topRight,
      radius: 20,
      shape: ShapeLightFocus.RRect,
      contents: [
        TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) {
              return Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'This section is a list of medical categories you can choose',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              );
            })
      ]));
  //topDoctors
  targets.add(TargetFocus(
      keyTarget: topDoctors,
      alignSkip: Alignment.topRight,
      radius: 20,
      shape: ShapeLightFocus.RRect,
      contents: [
        TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) {
              return Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'This section helps you connect and schedule appointments with top doctors',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              );
            })
      ]));
  return targets;
}
