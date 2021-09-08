class TeamData {
  String teamCode;
  double opr;

  TeamData({required this.teamCode, required this.opr});

  factory TeamData.fromJson(MapEntry<String, dynamic> json) {
    return TeamData(teamCode: json.key, opr: json.value);
  }

  Map<String, dynamic> toJson() => {'teamCode': teamCode, 'opr': opr};
}
