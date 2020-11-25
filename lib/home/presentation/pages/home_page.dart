import 'package:flutter/material.dart';
import 'package:quran/home/presentation/pages/catalogue_page.dart';
import 'package:quran/home/presentation/widgets/navigation_base.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    final List<StatelessWidget> tabs = [
      Container(),
      CataloguePage(),
      Container(),
    ];
    return NavigationBase(tabs: tabs);
  }
}
