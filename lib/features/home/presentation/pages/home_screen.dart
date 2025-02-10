import 'package:flutter/material.dart';
import 'package:usman_portfolio/features/app/presentation/widgets/responsive_layout.dart';
import 'package:usman_portfolio/features/home/presentation/widgets/about_me_section.dart';
import 'package:usman_portfolio/features/home/presentation/widgets/app_bar_title.dart';
import 'package:usman_portfolio/features/home/presentation/widgets/app_drawer.dart';
import 'package:usman_portfolio/features/home/presentation/widgets/experience_section.dart';
import 'package:usman_portfolio/features/home/presentation/widgets/nav_bar.dart';
import 'package:usman_portfolio/features/home/presentation/widgets/profile_section.dart';
import 'package:usman_portfolio/features/home/presentation/widgets/skills_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: _buildMobileScaffold(),
      tablet: _buildTabletDesktopScaffold(),
      desktop: _buildTabletDesktopScaffold(),
    );
  }

  Builder _drawerIconBuilder() {
    return Builder(
        builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: Icon(Icons.menu,
                color: Theme.of(context).primaryIconTheme.color)));
  }

  Scaffold _buildMobileScaffold() {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          centerTitle: false,
          title: const AppBarTitle(),
          actions: [_drawerIconBuilder()],
        ),
      ),
      endDrawer: AppDrawer(homeKey: homeKey, aboutMeKey: aboutKey),
      body: SingleChildScrollView(
        child: Column(
          children: [
            KeyedSubtree(key: homeKey, child: const ProfileSection()),
            KeyedSubtree(key: aboutKey, child: const AboutMeSection()),
            const SkillsSection(),
            const ExperienceSection()
          ],
        ),
      ),
    );
  }

  Scaffold _buildTabletDesktopScaffold() {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: NavBar(homeKey: homeKey, aboutMeKey: aboutKey)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            KeyedSubtree(key: homeKey, child: const ProfileSection()),
            KeyedSubtree(key: aboutKey, child: const AboutMeSection()),
            const SkillsSection(),
            const ExperienceSection()
          ],
        ),
      ),
    );
  }
}
