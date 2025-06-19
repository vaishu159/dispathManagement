class DetailModel {
  final String image;
  final String value;
  final String title;
  final String? navigate;

  const DetailModel(
      {required this.image,
      required this.value,
      required this.title,
      this.navigate});
}
