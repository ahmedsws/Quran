import 'package:flutter/material.dart';
import 'package:quran/core/presentation/widgets/button.dart';
import 'package:quran/home/presentation/pages/home_page.dart';

class StartPage extends StatelessWidget {
  const StartPage();

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1!;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Quran App',
                    style: style
                        .apply(
                          color: Theme.of(context).primaryColor,
                        )
                        .copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width / 13),
                  ),
                  Text(
                    'Learn Quran and\nrecite once everyday',
                    style: style.copyWith(
                      fontSize: size.width / 25,
                      color: Theme.of(context).accentColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Stack(
                  alignment: Alignment.center,
                  overflow: Overflow.visible,
                  children: [
                    SizedBox(
                      height: size.height * .63,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/splashPic2.png',
                      ),
                    ),
                    Positioned(
                      bottom: -25,
                      child: Button(
                        text: 'Get Started',
                        onPressed: () {
                          Navigator.of(context)!.push(
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  Container(
//                   child: Material(
//                     elevation: 5,
//                     shadowColor: Theme.of(context).primaryColor,
//                     clipBehavior: Clip.antiAlias,
//                     child:
//                         Image.asset('assets/images/Al Quran_3_RF_RMPL-01.jpg'),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   height: 300,
//                 ),
