import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CataloguePage extends StatelessWidget {
  const CataloguePage();

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;
    final primaryColor = Theme.of(context).primaryColor;
    final accentColor = Theme.of(context).accentColor;
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 0,
            child: Text(
              'Assalamualaikum',
              style: style.apply(
                color: accentColor,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Tanvir ahassan',
              style: style.apply(
                color: accentColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/qatalougePic.png',
                  width: double.infinity,
                ),
                Positioned(
                  left: 20,
                  top: 10,
                  child: Text(
                    'Last read',
                    style: style.apply(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Taby(),
          ),
        ],
      ),
    );
  }
}

class Taby extends StatelessWidget {
  const Taby({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          Expanded(
            child: TabBar(
              unselectedLabelColor: Theme.of(context).accentColor,
              labelStyle: Theme.of(context).textTheme.bodyText1.copyWith(
                    fontWeight: FontWeight.w800,
                    fontSize: MediaQuery.of(context).size.width / 25,
                  ),
              indicatorColor: Theme.of(context).primaryColor,
              labelColor: Theme.of(context).primaryColor,
              tabs: [
                Tab(
                  text: 'Surah',
                ),
                Tab(
                  text: 'Para',
                ),
                Tab(
                  text: 'Page',
                ),
                Tab(
                  text: 'Hizb',
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: TabBarView(
              children: [
                SurahPage(),
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SurahPage extends StatelessWidget {
  const SurahPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;
    return ListView.builder(
      itemBuilder: (context, index) => Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/icons/ayahNumBorder.png',
                    height: MediaQuery.of(context).size.height * .07,
                  ),
                  Text(
                    '${++index}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .apply(color: Colors.black),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Al-Fatiha',
                    style: style.copyWith(
                      fontSize: MediaQuery.of(context).size.width / 20,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'MECCAN',
                        style: style.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 30,
                            color: Colors.black45),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.black26,
                        ),
                      ),
                      Text(
                        '7 VERSES',
                        style: style.copyWith(
                            fontSize: MediaQuery.of(context).size.width / 30,
                            color: Colors.black45),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                'الفاتحة',
                style: GoogleFonts.amiri().copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 20),
              )
            ],
          ),
        ),
      ),
      itemCount: 4,
    );
  }
}
