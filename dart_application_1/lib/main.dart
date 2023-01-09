import 'dart:io';
import 'dart:convert';
/* class Launch {

  final String? details;
  final bool? success;

  const Launch({
    required this.details,
    required this.success,
  });

  factory Launch.fromJson(Map<String, dynamic> json) {
    return Launch(
   
      details : json['details'],
      success : json['success'],
    );
  }
}
void main(){
  
  var file = File("data/spacesx.json");

  var text = file.readAsStringSync();

  var json  = jsonDecode(text);

   List<Launch> launches = [];



  for (var launchesjson in json) {

    launches.add(Launch.fromJson(launchesjson));
    
  }

 

  print(launches);

  for (var launchesjsondos in launches) {

    print(launchesjsondos.success);
    
  }

} */



class Launch {

  String? id, details;
  bool? success;
  DateTime? date;
  List<Coress>? cores;
  
  Launch.fromJson(Map<String, dynamic> json){
    
    this.id = json['id'];
    this.details = json['details'];
    this.success = json['success'];
    this.date = DateTime.fromMillisecondsSinceEpoch( json['date_unix'] *100);
    this.cores = List<Coress>.from(json["cores"].map((x) => Coress.fromMap(x)));

  }

}

class Coress {

  bool? legs;
  String? core;

   Coress({
    this.legs,
    this.core,
  });

  factory Coress.fromMap(Map<String, dynamic> json) => Coress(
    legs : json['legs'],
    core : json['core'],
  );

}

void main(){
  
  var file = File("data/spacesx.json");

  var text = file.readAsStringSync();

  var json  = jsonDecode(text);

  List<Launch> launches = [];

  for (var launchesjson in json) {

    launches.add(Launch.fromJson(launchesjson));
    
  }

   /* json.forEach((item) {
    launches.add(Launch.fromJson(item));
  }); */ 

  print(launches);

  for (var launchesjsondos in launches) {

    

    print(launchesjsondos.cores);
    var launchesjs = launchesjsondos.cores; 
    for (var element in launchesjs) {
      print(element);
    }
    
  }

  

}


