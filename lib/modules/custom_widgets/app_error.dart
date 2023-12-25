import 'package:flutter/material.dart';
import 'package:my_souq/app/const/assets.dart';
import 'package:my_souq/app/const/colors.dart';

class AppErrorWidget extends StatelessWidget {
  final double imgWidth;
  final double imgHeight;
  final double titleFontSize;
  final double desFontSize;
  final double btnFontSize;
  final double space;
  final bool withTitle;
  final bool withDes;
  final bool withBtn;
  final VoidCallback? tryAgain;

  const AppErrorWidget(
      {Key? key,
        this.withBtn = true,
        this.withTitle = true,
        this.withDes = true,
      this.imgHeight = 80,
      this.imgWidth = 80,
      this.titleFontSize = 20,
      this.desFontSize = 17,
      this.btnFontSize = 17,
      this.space = 10,
      required this.tryAgain})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.error,
          width: imgWidth,
          height: imgHeight,
        ),
        SizedBox(
          height: withTitle ? space : 0,
        ),
        withTitle ? Text(
          'An Error Occurred',
          style: TextStyle(
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: titleFontSize,
          ),
        ) : Container(),
        SizedBox(
          height: withDes ? space : 0,
        ),
        withDes ? Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Please Check Your Connection & Try Again',
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.7,
              fontWeight: FontWeight.normal,
              fontSize: desFontSize,
            ),
          ),
        ) : Container(),
        SizedBox(
          height: withBtn ? space + 5 : 0,
        ),
        withBtn ? ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.redColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              )
          ),
          onPressed: tryAgain,
          child: Text(
            'Try Again',
            style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.normal,
              fontSize: btnFontSize,
            ),
          ),
        ) : Container(),
      ],
    );
  }
}
