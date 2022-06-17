import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_iot/ui/shared/ui_helper.dart';
import 'package:flutter_with_iot/ui/widgets/field_data_widget.dart';
import 'package:flutter_with_iot/viewmodels/subscribe_rmq_view_model.dart';
import 'package:stacked/stacked.dart';

class SubscribeRmqView extends StatefulWidget {
  const SubscribeRmqView({Key key}) : super(key: key);

  @override
  _SubscribeRmqViewState createState() => _SubscribeRmqViewState();
}

class _SubscribeRmqViewState extends State<SubscribeRmqView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SubscribeRmqViewModel>.reactive(
        viewModelBuilder: () => SubscribeRmqViewModel(),
        onModelReady: (model) => model.initState(),
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text(
              'Subscribe data from RMQ'
              ),
          ),
          body: Container(
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const Padding(
                        padding: EdgeInsets.only(top: 150, bottom: 20, left: 10, right: 10),
                        child: Text(
                          'Data Pribadi',
                          style: TextStyle(
                            fontSize: 25
                          ),
                        ),
                    ),
                    FieldDataWidget(
                        controller: model.namaController,
                        label: 'Nama',
                        hint: 'Nama',
                    ),
                    FieldDataWidget(
                        controller: model.umurController,
                        label: 'Umur',
                        hint: 'Umur'
                    ),
                    FieldDataWidget(
                      controller: model.statusLegalController, 
                      label: 'Legal',
                      hint: 'Legal'
                    ),
                  ],
                ),
              )
            ),
          ),
        )
    );
  }
}
