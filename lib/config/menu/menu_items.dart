import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;
  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const List<MenuItem> appMenuItems = [
  MenuItem(
      title: 'Buttons',
      subtitle: 'Various buttons in Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Cards',
      subtitle: 'A stylized container',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subtitle: 'General and controlled',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars and dialogues',
      subtitle: 'On-screen indicators',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated container',
      subtitle: 'Stateful animated widget',
      link: '/animated',
      icon: Icons.check_box_outlined),
  MenuItem(
      title: 'UI Controls + Tiles',
      subtitle: 'A series of Flutter controls',
      link: '/ui-controls',
      icon: Icons.control_camera),
  MenuItem(
      title: 'Tutorial',
      subtitle: 'Demo Pageview Tutorial',
      link: '/tutorial',
      icon: Icons.accessibility),
  MenuItem(
      title: 'InfiniteScroll',
      subtitle: 'Demo Scroll',
      link: '/infinite',
      icon: Icons.image),
  MenuItem(
      title: 'Change theme',
      subtitle: 'Change app theme',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined)
];
