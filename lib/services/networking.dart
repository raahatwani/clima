import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{

NetworkHelper(this.url);

final String url;
late http.Response apiResp;

Future getData() async{
  apiResp = await http.get(Uri.parse(url));
if (apiResp.statusCode == 200){
  String data = apiResp.body;

  
  return jsonDecode(data);
}

else{
  print(apiResp.statusCode);
}

}}