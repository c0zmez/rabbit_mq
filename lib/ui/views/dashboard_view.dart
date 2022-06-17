import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_iot/constant/route_name.dart';
import 'package:flutter_with_iot/ui/shared/ui_helper.dart';
import 'package:flutter_with_iot/viewmodels/dashboard_view_model.dart';
import 'package:stacked/stacked.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
        viewModelBuilder: () => DashboardViewModel(),
        builder: (context, model, child) => Scaffold(
          body: Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 150, bottom: 15, left: 10, right: 10),
                    child: Text(
                      'Rabbit MQ',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  verticalSpaceTiny,
                   Image.asset(
                     'assets/logo.png',
                    width: 300,
                    height: 300,
                  ),
                  verticalSpaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: InkWell(
                          onTap: (){
                            model.navigationToVoid(publishRmqViewRoute);
                          },
                          child: const Center (
                            child: Text(
                              'PUBLISH',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                              ),
                            ),
                          )
                        )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: InkWell(
                              onTap: (){
                                model.navigationToVoid(subscribeRmqViewRoute);
                              },
                              child: const Center (
                                child: Text(
                                  'SUBSCRIBE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15
                                  ),
                                ),
                              )
                          )
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
