import 'package:flutter/material.dart';
import 'package:flutter_base_bloc_app/blocs/character/data/character_service.dart';
import 'package:flutter_base_bloc_app/models/character_model.dart';
import 'package:flutter_base_bloc_app/services/api_service.dart';
import 'package:flutter_base_bloc_app/ui/character_screen/character_card_wg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CharacterScreen extends StatefulWidget {
  CharacterScreen({super.key});

  @override
  _CharacterScreenState createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  // Biến trạng thái để lưu trữ danh sách User
  late Character character;
  CharacterService service = CharacterService();
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  // Biến để kiểm tra trạng thái loading
  bool isLoading = true;
  bool isLoadMore = false;

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
            body: Padding(
          padding: EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 0),
          child: SmartRefresher(
            controller: _refreshController,
            onRefresh: _getCharacter,
            onLoading: _getCharacterNext,
            enablePullUp: true,
            enablePullDown: true,
            physics: const BouncingScrollPhysics(),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: (width / 2 - 23) / 200,
              ),
              itemCount: character.results.length,
              itemBuilder: (BuildContext context, int index) {
                return CharacterCard_WG(
                    index: index, character: character, width: width);
              },
            ),
          ),
        )),
      );
    }
  }

  Future<void> _getCharacter() async {
    if (isLoadMore) return;
    isLoadMore = true;
    Character newCharacter = await service.getCharacters();
    _refreshController.refreshCompleted();
    setState(() {
      character = newCharacter;
      isLoadMore = false;
    });
  }

  Future<void> _getCharacterNext() async {
    if (isLoadMore) return;
    isLoadMore = true;
    Character newCharacter =
        await service.getCharactersNext(character.info.next ?? "");
    _refreshController.loadComplete();
    setState(() {
      if (newCharacter.results.isNotEmpty && newCharacter.results.length > 0) {
        character.results.addAll(newCharacter.results);
        character.info = newCharacter.info;
      }
      isLoadMore = false;
    });
  }
}
