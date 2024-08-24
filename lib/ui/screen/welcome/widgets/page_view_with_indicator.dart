import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/ui/screen/welcome/widgets/page_indicator.dart';
import 'package:notes_app_by_mysql_database/ui/screen/welcome/widgets/page_view.dart';

class PageViewWithIndicator extends StatelessWidget {
  const PageViewWithIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height*.75,
      child: Stack(
        children: [
          CustomPageViewer(pageController: pageController,),
          CustomPageIndicator(pageController: pageController,)
        ],
      ),
    );
  }
}
