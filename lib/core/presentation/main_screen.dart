import 'package:azkar_app_me/core/resources/manager_assets.dart';
import 'package:azkar_app_me/core/resources/manager_colors.dart';
import 'package:azkar_app_me/core/resources/manager_height.dart';
import 'package:azkar_app_me/core/resources/manager_icon_sizes.dart';
import 'package:azkar_app_me/core/resources/manager_raduis.dart';
import 'package:azkar_app_me/core/resources/manager_width.dart';
import 'package:azkar_app_me/core/widgets/base_text.dart';
import 'package:azkar_app_me/core/widgets/constants.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int counter = 0;
  String initPopUpValue = 'سبحان الله';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          backgroundColor: ManagerColors.primaryColor,
          child: Icon(
            Icons.add,
            color: ManagerColors.white,
          ),
        ),
        appBar: AppBar(
          backgroundColor: ManagerColors.transparent,
          elevation: Constants.appBarElevation,
          title: baseText(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.info,
                color: ManagerColors.white,
                size: ManagerIconSizes.s36,
              ),
            ),

          PopupMenuButton(
            iconSize: 34,
            elevation: 10,
            color: Colors.white,
            initialValue: initPopUpValue,
            itemBuilder: (context) =>
            const [
              PopupMenuItem(
                value: 'سبحان الله',
                child: Text('سبحان الله'),
              ),
              PopupMenuItem(
                value: 'الحمد لله',
                child: Text('الحمد لله'),
              ),
              PopupMenuItem(
                value: 'لا اله الا الله',
                child: Text('لا اله الا الله'),
              ),
              PopupMenuItem(
                value: 'الله أكبر',
                child: Text('الله أكبر'),
              ),
              PopupMenuItem(
                value: 'استغفر الله العظيم',
                child: Text('استغفر الله العظيم'),
              ),
            ],
            onSelected: (value) {
              setState(() {
                initPopUpValue = value;
                counter = 0;
              });
            },
          ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ManagerAssets.azkarImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: ManagerWidth.w100,
                    height: ManagerHeight.h40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: ManagerColors.primaryColor,
                      borderRadius: BorderRadius.circular(
                        ManagerRadius.r12,
                      ),
                    ),
                    child: baseText(text: '$counter'),
                  ),
                  Container(
                    width: ManagerWidth.w200,
                    height: ManagerHeight.h40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: ManagerColors.white,
                      borderRadius: BorderRadius.circular(
                        ManagerRadius.r12,
                      ),
                    ),

                    child: baseText(text: initPopUpValue,
                        color: ManagerColors.black,
                        fontSize: 16),
                  ),
                ],

              ),
            ),
            Container(
              alignment: AlignmentDirectional.bottomStart,
              margin: const EdgeInsetsDirectional.only(
                bottom: ManagerHeight.h16,
                start: ManagerWidth.w20,
              ),


              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (counter > 0) {
                      counter--;
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ManagerColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(ManagerRadius.r14
                    ),
                  ),
                  minimumSize: const Size(ManagerWidth.w8, ManagerHeight.h64),

                ),
                child: Icon(Icons.remove, color: ManagerColors.white),

              ),
            ),
          ],
        ),
      ),
    );
  }
}

