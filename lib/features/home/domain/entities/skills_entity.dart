import 'package:flutter/material.dart';
import 'package:usman_portfolio/generated/assets.dart';

class SkillsEntity {
  final String image;
  final String name;

  SkillsEntity({required this.image, required this.name});

  static List<SkillsEntity> skills(BuildContext context) {
    var isLight = Theme.of(context).brightness == Brightness.light;
    return [
      SkillsEntity(image: Assets.iconJava, name: "Java"),
      SkillsEntity(image: Assets.iconKotlin, name: "Kotlin"),
      SkillsEntity(image: Assets.iconDart, name: "Dart"),
      SkillsEntity(image: Assets.iconJetpackCompose, name: "Jetpack Compose"),
      SkillsEntity(image: Assets.iconFlutter, name: "Flutter"),
      SkillsEntity(
          image: isLight
              ? Assets.iconSolidPrinciples
              : Assets.iconSolidPrinciplesNight,
          name: "Solid Principles"),
      SkillsEntity(image: Assets.iconArchitecture, name: "MVC, MVVM"),
      SkillsEntity(image: Assets.iconUnitTesting, name: "Unit Testing"),
      SkillsEntity(image: Assets.iconApiService, name: "Networking"),
      SkillsEntity(image: Assets.iconDatabase, name: "Room, Drift"),
      SkillsEntity(image: Assets.iconGoogleMaps, name: "Google Maps"),
      SkillsEntity(
          image: isLight ? Assets.iconMapbox : Assets.iconMapboxNight,
          name: "Mapbox"),
      SkillsEntity(
          image: isLight ? Assets.iconSockets : Assets.iconSocketNight,
          name: "Web Sockets"),
      SkillsEntity(image: Assets.iconPayment, name: "Stripe"),
      SkillsEntity(
          image: Assets.iconDependencyInjectionCom,
          name: "Dependency Injection"),
      SkillsEntity(image: Assets.iconFirebase, name: "Firebase"),
      SkillsEntity(image: Assets.iconFigma, name: "Figma"),
      SkillsEntity(image: Assets.iconPostman, name: "Postman"),
      SkillsEntity(image: Assets.iconGit, name: "Git"),
    ];
  }
}
