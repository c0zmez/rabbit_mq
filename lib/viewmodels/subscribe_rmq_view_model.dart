import 'package:flutter/cupertino.dart';
import 'package:flutter_with_iot/locator.dart';
import 'package:flutter_with_iot/services/rmq_service.dart';
import 'package:flutter_with_iot/viewmodels/base_model.dart';

class SubscribeRmqViewModel extends BaseModel{
  final RmqService _rmqService = locator<RmqService>();

  TextEditingController umurController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController statusLegalController = TextEditingController();

  bool checkStatus = false;

  String sensorNama;
  String sensorUmur;
  String sensorStatus;

  void setValueSensor(String message){
    List<String> list = message.split('#');
    int checkValueSensor = int.parse(list[1]);
    
    setBusy(true);
    sensorUmur = list[1];
    sensorNama = list[0];
    if (checkValueSensor < 18){
      sensorStatus = 'Belum Legal';
    } else {
      sensorStatus = 'Sudah Legal';
    }
  
    umurController.text = list[1];
    namaController.text = list[0];
    statusLegalController.text = sensorStatus;
    setBusy(false);
  }

  void sensor(){
    _rmqService.dataDevice('smkn2_firdan', setValueSensor);
  }

  void subscribeData(){
    _rmqService.subscribe(sensor);
    checkStatus = true;
  }

  void initState(){
    setBusy(true);
    subscribeData();
    setBusy(false);
  }
}