class PegawaiTerbaik{
  String name;
  String image;
  String time;

  PegawaiTerbaik(this.name,this.image,this.time);
}

List<PegawaiTerbaik> terbaik = terbaikData
    .map((item) =>
        PegawaiTerbaik(item['name'], item['image'],item['time']))
    .toList();

var terbaikData = [
  {"name":"Wisnu Candra Gumelar","image":"assets/images/59814.jpg", "time": "07:20 WIT"},
  {"name":"Muhammad Alham Musa","image":"assets/images/58371.jpg", "time": "07:23 WIT"},
  {"name":"Sandhi Yoga Pratama","image":"assets/images/58971.jpg", "time": "07:25 WIT"},
  ];



