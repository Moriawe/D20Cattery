import 'package:d20katter/styles/colors.dart';
import 'package:d20katter/constants/size.dart';
//import 'package:d20katter/widgets/home/footer.dart';
import 'package:d20katter/widgets/navigation_bar/drawer_mobile.dart';
import 'package:d20katter/widgets/navigation_bar/header_desktop.dart';
import 'package:d20katter/widgets/navigation_bar/header_mobile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var screenSize = MediaQuery.of(context).size;
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColors.background,
          endDrawer: constraints.maxWidth > minDesktopWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (String route) {
                    GoRouter.of(context).go(route);
                  },
                ),
          //BODY
          body: Container(
            padding: const EdgeInsets.only(top: 20),
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: Flex(
                direction: Axis.vertical,
                children: [
                  //HEADER
                  if (constraints.maxWidth > minDesktopWidth)
                    Flexible(
                      flex: 0,
                      child: HeaderDesktop(
                        onLogoTap: () {
                          GoRouter.of(context).go('/');
                        },
                        onNavItemTap: (String route) {
                          GoRouter.of(context).go(route);
                        },
                      ),
                    )
                  else
                    Flexible(
                      flex: 0,
                      child: HeaderMobile(
                        onMenuTap: () {
                          scaffoldKey.currentState?.openEndDrawer();
                        },
                      ),
                    ),
                  //INFO
                  Flexible(
                    flex: 1,
                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        constraints: const BoxConstraints(
                            minHeight: 350, maxWidth: 1000),
                        height: screenSize.height * 0.90,
                        width: screenSize.width * 0.90,
                        child: widget.child),
                  ),
                  //FOOTER
                  //const Flexible(flex: 0, child: FooterDesktop())
                ],
              ),
            ),
          ));
    });
  }
}
