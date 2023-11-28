import 'package:flutter_base_bloc_app/models/info_model.dart';

class BaseResponse {
  BaseResponse({
    required this.info,
    required this.results,
    
  });

  Info info;
  List<dynamic> results;


  factory BaseResponse.fromJson(Map<String, dynamic> json) => BaseResponse(
        info: Info.fromJson(json["info"]),
        results: json["results"],
       
      );

  Map<String, dynamic> toJson() => {
        "info": info,
        "results": results,
      };
}

