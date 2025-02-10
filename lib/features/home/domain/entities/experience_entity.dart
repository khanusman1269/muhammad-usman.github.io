import 'package:usman_portfolio/generated/assets.dart';

class ExperienceEntity {
  String companyImage;
  String companyName;
  String dateRange;
  String designation;
  List<String> description;

  ExperienceEntity(
      {required this.companyImage,
      required this.companyName,
      required this.dateRange,
      required this.designation,
      required this.description});

  static List<ExperienceEntity> experience = [
    ExperienceEntity(
        companyImage: Assets.imgSwitchLogo,
        companyName: "Switch Communications",
        dateRange: "Nov 2023 - Present ",
        designation: "Mobile Application Developer",
        description: [
          "Built <b>Wakeel Online</b>, a a cross-platform Flutter app for Android and iOS, featuring"
              " lawyer directory, category-based posting, real-time chat, and "
              "booking utilizing Clean architecture and BLoC state "
              "management.",
          "Developed and launched <b>Ersaal</b> on Google Play with 300K+ "
              "downloads and 100K+ active users.",
          "Implemented web sockets for real-time app-web communication, "
              "reducing latency by 40%, leading to a 25% increase in active users.",
          "Enhanced app performance, cutting loading times by 30% "
              "and reduced app size by 75% with efficient data caching."
        ]),
    ExperienceEntity(
        companyImage: Assets.imgNinesolLogo,
        companyName: "NineSol Technologies",
        dateRange: "Nov 2022 - Oct 2023",
        designation: "Android Developer",
        description: [
          "Improved app performance & stability (20% launch speed increase) through code updates.",
          "Contributed to the development of over 13 mobile applications, including AI-"
              "powered tools like <b>AI Art & Text Generator</b> and productivity apps like "
              "<b>Volume Booster</b>, <b>All Document Reader</b>, "
              "<b>Keyboards</b>, <b>Translators (STT , TTS)</b>, <b>Dictionaries</b>, <b>Chat Diary</b> and <b>Collage Maker</b>."
        ]),
    ExperienceEntity(
        companyImage: Assets.imgFhaLogo,
        companyName: "FHA Technologies",
        dateRange: "Jan 2021 - Oct 2022",
        designation: "Android Developer",
        description: [
          " Modernized existing codebase of 2 apps (Java to Kotlin), "
              "resulting in faster app launch speeds and improved user experience.",
          "Integrated advanced features (<b>OpenCV</b>, <b>MLKit</b>, <b>Firebase</b>) for robust "
              "mobile application development and reduced app size by 28%.",
          "Implemented location services (<b>Google Maps & Mapbox</b>) and "
              "optimized network calls (<b>Retrofit, OkHttp</b>) for efficient app functionality.",
          "Worked on 10+ apps with new ideas and got experience in mobile application development and modified various existing applications to remove bugs."
        ]),
  ];
}
