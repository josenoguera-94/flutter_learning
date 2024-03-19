enum FromWho { me, other } // enum permite definir un conjunto de constantes con nombre

class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  const Message({
    required this.text,
    this.imageUrl,
    required this.fromWho,
  });

}
