import 'model/data_university.dart';
import 'service/network_service.dart';

void main() async {

  print("\x1B[34m\x1B[1m Welcome To Dart \x1B[0m\x1B[0m");

  String data = await NetworkService.getData(NetworkService.apiUniversity);

  List<University> listData = universityFromJsonData(data);

  for (int i = 0; i < listData.length; i++){
    print("\n\x1B[32m\x1B[1m University ${i + 1} \x1B[0m\x1B[0m\n");

    print(listData[i].instructors[0].email);
    print(listData[i].schedule.days);

    // print(listData[i]);
  }

}