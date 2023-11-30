import 'package:flutter/material.dart';
import 'package:flutter_base_bloc_app/models/character_model.dart';

class CharacterCard_WG extends StatelessWidget {
  const CharacterCard_WG({
    super.key,
    required this.index,
    required this.character,
    required this.width,
  });
  final int index;
  final Character character;
  final double width;

  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  character.results[index].name,
                  maxLines: 1,
                ),
                Text("Status: ${character.results[index].status}"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
