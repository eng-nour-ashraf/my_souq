import 'package:flutter/material.dart';

import '../../../../app/const/assets.dart';
import '../../../../app/const/constants.dart';

class SplashImg extends StatelessWidget {
  const SplashImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.logo,
      width: MediaQuery.of(context).size.width < 390 ? 186: 246,
      height: MediaQuery.of(context).size.width < 390  ? 204: 264,
    );
  }
}
