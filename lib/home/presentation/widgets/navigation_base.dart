import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigationBase extends StatefulWidget {
  const NavigationBase({this.tabs});
  final List<StatelessWidget> tabs;
  @override
  _NavigationBase createState() => _NavigationBase();
}

class _NavigationBase extends State<NavigationBase> {
  int _page = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBar(),
        backgroundColor: Colors.white,
        bottomNavigationBar: CurvedNavigationBar(
          index: 1,
          height: 50.0,
          items: <Widget>[
            Image.asset(
              'assets/icons/closedMushaf.png',
              height: 30,
              width: 30,
            ),
            Image.asset(
              'assets/icons/openMushaf.png',
              height: 30,
              width: 30,
            ),
            Image.asset(
              'assets/icons/medina-sherif 1.png',
              height: 30,
              width: 30,
            ),
          ],
          color: Colors.white,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Theme.of(context).primaryColor,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: widget.tabs[_page]);
  }
}

class BaseAppBar extends StatelessWidget with PreferredSizeWidget {
  BaseAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Quran App',
        style: Theme.of(context)
            .textTheme
            .bodyText1
            .apply(
              color: Theme.of(context).primaryColor,
            )
            .copyWith(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: InkWell(
        child: Image.asset(
          'assets/icons/menu.png',
          height: 2,
          width: 2,
        ),
        onTap: () {},
      ),
      actions: [
        IconButton(
            icon: Icon(Icons.search),
            color: Theme.of(context).accentColor,
            onPressed: () {})
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
