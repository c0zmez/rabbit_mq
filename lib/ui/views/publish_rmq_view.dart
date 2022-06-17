import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_iot/ui/shared/ui_helper.dart';
import 'package:flutter_with_iot/ui/widgets/field_data_widget.dart';
import 'package:flutter_with_iot/ui/widgets/text_field_widget.dart';
import 'package:flutter_with_iot/viewmodels/publish_rmq_view_model.dart';
import 'package:stacked/stacked.dart';

class PublishRmqView extends StatefulWidget {
  const PublishRmqView({Key key}) : super(key: key);

  @override
  _PublishRmqViewState createState() => _PublishRmqViewState();
}

class _PublishRmqViewState extends State<PublishRmqView> {
  bool index = false;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PublishViewModel>.reactive(
        viewModelBuilder: () => PublishViewModel(),
        builder: (context, model, child) => Scaffold(
          appBar:  AppBar(
            backgroundColor:Colors.orange,
            title: const Text(
              'Publish data to RMQ'
            ),
          ),
          body:  Center(
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 150, bottom: 20, left: 10, right: 10),
                    child: Text(
                      'Publish Data',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  verticalSpaceSmall,
                  TextFieldWidget(
                    controller: model.guidController,                   
                    label: 'Guid',
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20)
                  ),
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                    child: InkWell(
                      onTap: () async {
                        setState(() {
                        model.publishRmq(index);
                      });
                      },
                      child: const Center(
                        child: Text(
                          'Publish',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        )
    );
  }
}
