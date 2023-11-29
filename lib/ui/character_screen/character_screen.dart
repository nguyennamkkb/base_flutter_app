import 'package:flutter/material.dart';
import 'package:flutter_base_bloc_app/blocs/character/data/character_service.dart';
import 'package:flutter_base_bloc_app/models/character_model.dart';

class CharacterScreen extends StatefulWidget {
  CharacterScreen({super.key});

  @override
  _CharacterScreenState createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  // Biến trạng thái để lưu trữ danh sách User
  late Character character;
  final CharacterService service = CharacterService();
  // Biến để kiểm tra trạng thái loading
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Đặt trạng thái loading là true
    setState(() {
      isLoading = true;
    });
    // Gọi hàm fetchUsers và nhận kết quả
    service.getCharacters().then((result) {
      // Đặt trạng thái loading là false và cập nhật danh sách User
      setState(() {
        isLoading = false;
        character = result;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    if (isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }else {
      return SafeArea(

        child: Scaffold(
          body: Container(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 5),
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 16.0, // gap between adjacent chips
                runSpacing: 16.0, // gap between lines
                children: [
                  Container(
                    color: Colors.black12,
                    width: width / 2 - 23,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://rickandmortyapi.com/api/character/avatar/361.jpeg',
                          width: width / 2 - 23,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rick Sanchez"),
                              Text("Status Alive ss"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black12,
                    width: width / 2 - 23,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://rickandmortyapi.com/api/character/avatar/361.jpeg',
                          width: width / 2 - 23,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rick Sanchez"),
                              Text("Status Alive ss"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black12,
                    width: width / 2 - 23,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://rickandmortyapi.com/api/character/avatar/361.jpeg',
                          width: width / 2 - 23,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rick Sanchez"),
                              Text("Status Alive ss"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black12,
                    width: width / 2 - 23,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://rickandmortyapi.com/api/character/avatar/361.jpeg',
                          width: width / 2 - 23,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rick Sanchez"),
                              Text("Status Alive ss"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black12,
                    width: width / 2 - 23,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://rickandmortyapi.com/api/character/avatar/361.jpeg',
                          width: width / 2 - 23,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rick Sanchez"),
                              Text("Status Alive ss"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black12,
                    width: width / 2 - 23,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://rickandmortyapi.com/api/character/avatar/361.jpeg',
                          width: width / 2 - 23,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rick Sanchez"),
                              Text("Status Alive ss"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black12,
                    width: width / 2 - 23,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://rickandmortyapi.com/api/character/avatar/361.jpeg',
                          width: width / 2 - 23,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rick Sanchez"),
                              Text("Status Alive ss"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black12,
                    width: width / 2 - 23,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://rickandmortyapi.com/api/character/avatar/361.jpeg',
                          width: width / 2 - 23,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rick Sanchez"),
                              Text("Status Alive ss"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black12,
                    width: width / 2 - 23,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://rickandmortyapi.com/api/character/avatar/361.jpeg',
                          width: width / 2 - 23,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rick Sanchez"),
                              Text("Status Alive ss"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black12,
                    width: width / 2 - 23,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://rickandmortyapi.com/api/character/avatar/361.jpeg',
                          width: width / 2 - 23,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rick Sanchez"),
                              Text("Status Alive ss"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

  }
}
