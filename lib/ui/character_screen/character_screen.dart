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
    print("init");
    setState(() {
      isLoading = true;
    });
    // Gọi hàm fetchUsers và nhận kết quả
    service.getCharacters().then((result) {
      print("getCharacters");
      setState(() {
        isLoading = false;
        character = result;
        print("thanh cong");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 5),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: (width / 2 - 23) / 220,
              ),
              itemCount: character.results.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.black12,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        character.results[index].image,
                        width: width / 2 - 23,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(character.results[index].name),
                            Text("Status ${character.results[index].status}"),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      );
    }
  }
}
