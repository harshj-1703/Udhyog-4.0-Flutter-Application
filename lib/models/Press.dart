class Press1 {
  String id;
  String data1;
  String data2;

  Press1(this.id, this.data1, this.data2);

  factory Press1.fromJSON(Map<String, dynamic> json) {
    return Press1(json['id'], json['data1'], json['data2']);
  }
}
