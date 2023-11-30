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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
         color: Colors.white,


      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              character.results[index].image,
              width: width / 2 - 23,
              height: 170,
              fit: BoxFit.fill,
            ),
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
