class CharacterParam{
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;

  CharacterParam(this.name, this.status, this.species, this.type, this.gender);

  String buildUrlString() {
    var queryParameters = {
      'name': this.name,
      'status': this.status,
      'species': this.species,
      'type': this.type,
      'gender': this.gender,
    };
    var uri = Uri(queryParameters: queryParameters);
    return uri.query;
  }
}