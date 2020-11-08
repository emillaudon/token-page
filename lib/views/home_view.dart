import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/scheduler.dart';
import '../widgets/intro_page.dart';
import '../widgets/icon_row.dart';
import '../widgets/about_page.dart';
import '../widgets/attribution_bar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ScrollController controller = ScrollController();

  GlobalKey<AnimatedListState> animatedListKey = GlobalKey<AnimatedListState>();

  var _pageParts = [];

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    Future.delayed(Duration(milliseconds: 700), () {
      addItem(IntroPage());
      setState(() {
        _pageParts.add(IconRow());
        animatedListKey.currentState.insertItem(1);
        _pageParts.add(AboutPage());
        animatedListKey.currentState.insertItem(2);
        _pageParts.add(Attribution());
        animatedListKey.currentState.insertItem(3);
      });
    });
  }

  @override
  void didUpdateWidget(covariant HomeView oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void addItem(item) {
    var index = _pageParts.length == 1 ? 0 : _pageParts.length;
    _pageParts.insert(index, item);
    animatedListKey.currentState.insertItem(index);
  }

  Widget getItem(index) {
    if (index == 0 && _pageParts.length <= 1) {
      print('ra');
      _pageParts.add(Container(
        height: 200,
      ));
    }
    return _pageParts[index];
  }

  void changeItem() async {
    Future.delayed(Duration(milliseconds: 700), () {
      addItem(IntroPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF080338),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('images/bground.jpg')),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.9, 1],
                colors: [
                  Color(0xFF0f3057).withOpacity(0.95),
                  Color(0xFF00587a).withOpacity(0.95),
                  Color(0xFF00587a).withOpacity(0.95),
                ],
              ),
            ),
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: Stack(children: [
                  AnimatedList(
                    key: animatedListKey,
                    initialItemCount: _pageParts.length,
                    itemBuilder: (context, index, animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: _pageParts[index],
                      );
                    },
                  ),
                  NavBar(
                    onTap: () {
                      addItem(IconRow());
                    },
                  ),
                ]),
              ),
            ]),
          ),
        ]));
  }
}
