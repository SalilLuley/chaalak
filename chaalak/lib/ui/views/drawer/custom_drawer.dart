import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';
import 'custom_drawer_viewmodel.dart';

class CustomDrawerView extends HookWidget {
  const CustomDrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CustomDrawerViewModel>.reactive(
      builder: (context, model, child) => SafeArea(
        top: true,
        bottom: false,
        child: Drawer(
          elevation: 16,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  color: Color(0xFFFCFCFC),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/icons8-person-96.png',
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ratan Tata',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                            overflow: TextOverflow.clip),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                                  child: Icon(
                                    Icons.account_balance_wallet,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                ),
                                Text(
                                  'INR 20',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                                  child: Icon(
                                    Icons.stars,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                ),
                                Text(
                                  '3.14 Points',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                height: 15,
                thickness: 2,
                indent: 50,
                endIndent: 50,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: TextButton(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  child: Text('Packages',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: TextButton(
                  onPressed: () => model.openBookingHistory(),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: Text('Booking History',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: TextButton(
                  onPressed: () => {},
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: Text('Settings',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      )),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 40),
                child: TextButton(
                  onPressed: () => model.logout(),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: Text('Logout',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => CustomDrawerViewModel(),
    );
  }
}
