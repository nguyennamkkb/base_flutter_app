
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_base_bloc_app/models/character_model.dart';
import 'package:flutter_base_bloc_app/services/api_service.dart';
import 'package:flutter_base_bloc_app/services/common_service.dart';

class CharacterService {
  final ApiService api = ApiService();

  // Phương thức để lấy danh sách User từ api

  Future<Character> getCharacters() async {
    try {
      // Thực hiện yêu cầu get đến endpoint /users
      Response response = await api.get(CommonService.character);
      Map<String, dynamic> jsonData = response.data;
      Character res = await Character.fromJson(jsonData);
      return res;
    } catch (e) {
      // Bắt các ngoại lệ có thể xảy ra và ném lại
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }
  Future<Character> getFilterCharacters(String param) async {
    try {

      Response response = await api.get(CommonService.character + param);
      Map<String, dynamic> jsonData = response.data;
      Character res = Character.fromJson(jsonData);
      return res;
    } catch (e) {
      // Bắt các ngoại lệ có thể xảy ra và ném lại
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  // // Phương thức để thêm một User mới vào api
  // Future<User> addUser(User user) async {
  //   try {
  //     // Thêm header jwt vào yêu cầu nếu có
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     String? token = prefs.getString('token');
  //     if (token != null) {
  //       _dio.options.headers['Authorization'] = 'Bearer $token';
  //     }

  //     // Thực hiện yêu cầu post đến endpoint /users với dữ liệu của User
  //     Response response = await _dio.post(
  //       '/users',
  //       data: {
  //         'name': user.name,
  //         'email': user.email,
  //       },
  //     );

  //     // Kiểm tra mã trạng thái của phản hồi
  //     if (response.statusCode == 201) {
  //       // Nếu thành công, chuyển đổi dữ liệu json sang đối tượng User
  //       return User.fromJson(response.data);
  //     } else {
  //       // Nếu thất bại, ném một ngoại lệ với thông báo lỗi
  //       throw Exception(response.statusMessage);
  //     }
  //   } catch (e) {
  //     // Bắt các ngoại lệ có thể xảy ra và ném lại
  //     throw e;
  //   }
  // }

  // // Phương thức để cập nhật thông tin của một User trên api
  // Future<User> updateUser(User user) async {
  //   try {
  //     // Thêm header jwt vào yêu cầu nếu có
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     String? token = prefs.getString('token');
  //     if (token != null) {
  //       _dio.options.headers['Authorization'] = 'Bearer $token';
  //     }

  //     // Thực hiện yêu cầu put đến endpoint /users với dữ liệu của User
  //     Response response = await _dio.put(
  //       '/users',
  //       data: {
  //         'name': user.name,
  //         'email': user.email,
  //       },
  //     );

  //     // Kiểm tra mã trạng thái của phản hồi
  //     if (response.statusCode == 200) {
  //       // Nếu thành công, chuyển đổi dữ liệu json sang đối tượng User
  //       return User.fromJson(response.data);
  //     } else {
  //       // Nếu thất bại, ném một ngoại lệ với thông báo lỗi
  //       throw Exception(response.statusMessage);
  //     }
  //   } catch (e) {
  //     // Bắt các ngoại lệ có thể xảy ra và ném lại
  //     throw e;
  //   }
  // }

  // // Phương thức để xóa một User khỏi api
  // Future<void> deleteUser(User user) async {
  //   try {
  //     // Thêm header jwt vào yêu cầu nếu có
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     String? token = prefs.getString('token');
  //     if (token != null) {
  //       _dio.options.headers['Authorization'] = 'Bearer $token';
  //     }

  //     // Thực hiện yêu cầu delete đến endpoint /users với email của User
  //     Response response = await _dio.delete(
  //       '/users',
  //       data: {
  //         'email': user.email,
  //       },
  //     );

  //     // Kiểm tra mã trạng thái của phản hồi
  //     if (response.statusCode == 204) {
  //       // Nếu thành công, không làm gì cả
  //       return;
  //     } else {
  //       // Nếu thất bại, ném một ngoại lệ với thông báo lỗi
  //       throw Exception(response.statusMessage);
  //     }
  //   } catch (e) {
  //     // Bắt các ngoại lệ có thể xảy ra và ném lại
  //     throw e;
  //   }
  // }
}
