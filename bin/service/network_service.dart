import 'package:http/http.dart';

class NetworkService{

  static final String baseUrl = "655deeb89f1e1093c59a2ed1.mockapi.io";

  static final String apiUniversity = "/university";

  static Future<String> getData(String api) async {

    Uri url = Uri.https(baseUrl, api);
    Response response = await get(url);

    if (response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    } else {
      return response.statusCode.toString();
    }

  }


}