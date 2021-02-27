class Video {
  String id;
  String titulo;
  String descricao;
  String imagem;
  String canal;

  Video({this.id, this.titulo, this.descricao, this.imagem, this.canal});




  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json['id']['videoId'],
      titulo: json['snippet']['title'],
      descricao: json['snippet']['description'],
      canal: json['snippet']['channelTitle'],
      imagem: json['snippet']['thumbnails']['high']['url'],
    );
  }
}
