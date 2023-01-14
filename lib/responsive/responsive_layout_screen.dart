import 'package:flutter/material.dart';
import 'package:myband_flutter/providers/user_provider.dart';
import 'package:myband_flutter/utils/global_variables.dart';
import 'package:provider/provider.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayout({
    Key? key,
    required this.mobileScreenLayout,
    required this.webScreenLayout,
  }) : super(key: key);

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  void initState() {
    super.initState();
    addData();
  }

  addData() async {
    UserProvider _userProvider =
        Provider.of<UserProvider>(context, listen: false);
    await _userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreenSize) {
        // 600 can be changed to 900 if you want to display tablet screen with mobile screen layout
        return widget.webScreenLayout;
      }
      return widget.mobileScreenLayout;
    });
  }
}

// class ResponsiveLayout extends StatelessWidget {
//   final Widget webScreenLayout;
//   final Widget mobileScreenLayout;
//   const ResponsiveLayout(
//       {super.key,
//       required this.webScreenLayout,
//       required this.mobileScreenLayout});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constrains) {
//         if (constrains.maxWidth > webScreenSize) {
//           return webScreenLayout;
//         }
//         return mobileScreenLayout;
//       },
//     );
//   }
// }
