class Travel {
  String name;
  String address;
  String img;

  Travel(this.name, this.address, this.img);

  static List<Travel> generatedTravelBlog() {
    return [
      Travel('Coxs Bazar', 'Chittagong', 'images/cox.jpg'),
      Travel('Sajek', 'Chittagong', 'images/sajek.jpg'),
      Travel('Rangamati', 'Chittagong', 'images/rangamati.jpg')
    ];
  }
}
