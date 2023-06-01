import "dart:convert";
import "dart:io";

void getDataFromTimeTable() async{
  final file = File("./lib/timetable/data/timetable.json");
  try {
    final jsonString = file.readAsStringSync();
    final data = json.decode(jsonString);
    print(data);
  } finally {}
}

void httpRequest() async {
  var client = HttpClient();
  try {
    HttpClientRequest request = await client
        .getUrl(Uri.parse('http://31.211.71.43/api/availablePlayers'));
    HttpClientResponse response = await request.close();
    final stringData = await response.transform(utf8.decoder).join();
    final clientObject = jsonDecode(stringData);
    final playersList = clientObject['players'];
    for (dynamic player in playersList) {
      print(player['nickname']);
    }
  } finally {
    client.close();
  }
}
