import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widget/home_controller.dart';

void main() {
  runApp(const monitorPage());
}

class monitorPage extends StatefulWidget {
  const monitorPage({super.key});

  @override
  State<monitorPage> createState() => _monitorPageState();
}

class _monitorPageState extends State<monitorPage> {
  final HomeController _controller = HomeController();
  bool is_car_unlocked = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: LayoutBuilder(builder: (context, constrains) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: constrains.maxHeight * 0.1),
                    child: SvgPicture.asset('assets/icons/Car.svg',
                        width: double.infinity),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    child: GestureDetector(
                        onTap: _controller.updateLock,
                        child: AnimatedSwitcher(
                          duration: Duration(milliseconds: 300),
                          child: _controller.isLock
                              ? SvgPicture.asset(
                                  'assets/icons/door_lock.svg',
                                  key: ValueKey("lock"),
                                )
                              : SvgPicture.asset(
                                  'assets/icons/door_unlock.svg',
                                  key: ValueKey("unlock"),
                                ),
                        )),
                  ),
                  Positioned(
                    bottom: 130,
                    child: GestureDetector(
                        onTap: _controller.updateTrunkDoorLock,
                        child: AnimatedSwitcher(
                          duration: Duration(milliseconds: 300),
                          child: _controller.isTrunkLock
                              ? SvgPicture.asset(
                                  'assets/icons/door_lock.svg',
                                  key: ValueKey("lock"),
                                )
                              : SvgPicture.asset(
                                  'assets/icons/door_unlock.svg',
                                  key: ValueKey("unlock"),
                                ),
                        )),
                  )
                ],
              );
            }),
          ),
        );
      },
    );
  }
}
