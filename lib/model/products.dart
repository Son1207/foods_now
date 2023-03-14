import 'package:flutter/material.dart';

class Products{
  int id;
  String title;
  String description;
  String image;
  double price;

  Products({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.price});

  static List<Products> init(){
    List<Products> data =[
      Products(id: 1, title: "Tiramisu mini", description: "Với phong cách làm bánh thuần Châu Âu của La Vita, Tiramisu sẽ được làm ra với lớp kem béo mượt mà lại nhẹ tan trong miệng. Nhưng tinh tế hơn cả, Tiramisu quyến rũ thực khách ở hương thơm say nồng từ hỗn hợp Syrup: “Cafe Espresso mix cùng  Amaretto”. Loại hỗn hợp này lại được thấm trong từng lớp bánh Lady Finger đặt giữa các lớp kem Mascapone Cheese và Whipping Cream vô cùng tuyệt vời!",
          image: "assets/images/Tiramisu_mini.jpeg", price: 35.0),
      Products(id: 2, title: "Mì gà quay áp chảo", description: "Món mì gà quay da giòn là món ăn không chỉ thơm ngon, bắt mắt, mà còn có khâu chế biến cực kì đơn giản, thực hiện tại nhà nhanh chóng. ",
          image: "assets/images/mi_ga_quay_ap_chao.jpeg", price: 38.0),
      Products(id: 3, title: "Trà vải sen", description: "Nền trà sen là sự kết hợp tinh tế giữa trà xanh và hoa sen với quy trình ướp công phu, tạo nên vị chát đặc trưng của trà xanh hoà quyện cùng hương sen thơm tinh tế, đầy thanh tao.",
          image: "assets/images/tra_vai_sen.jpeg", price: 50.0),
      Products(id: 4, title: "Bánh mì que xốt Teriyaki", description: "Với một chút biến đổi từ món Nhật, bạn có thể chế biến thịt gà sốt Teriyaki thành món ăn sáng với ổ bánh mỳ giòn tan thêm thịt gà đậm đà gia vị, thấm mềm vừa ý",
          image: "assets/images/Banh_mi_que_ga_xot_Teriyaki.jpeg", price: 10.0),
      Products(id: 5, title: "Phin sữa đá", description: "Hương vị cà phê Việt Nam đích thực! Từng hạt cà phê hảo hạng được chọn bằng tay, phối trộn độc đáo giữa hạt Robusta từ cao nguyên Việt Nam, thêm Arabica thơm lừng. Cà phê được pha từ Phin truyền thống, hoà cùng sữa đặc sánh và thêm vào chút đá tạo nên ly Phin Sữa Đá – Đậm Đà Chất Phin.",
          image: "assets/images/phin_sua_da.jpeg", price: 35.0),
      Products(id: 6, title: "Bánh quy trà xanh", description: "Bánh quy trà xanh hay còn được gọi với cái tên bánh quy matcha bởi nguyên liệu tạo nên điểm khác biệt so với những loại bánh quy khác chính là từ bột trà xanh (matcha). Ngoài bánh quy, trà xanh còn được dùng trong nhiều loại bánh cũng như nhiều món ăn khác nhau như tiramisu, bánh bông lan, bánh kem, thạch rau câu, … Vị đắng nhẹ của trà xanh kết hợp với hương thơm béo ngậy của bơ trứng, giòn xốp của bột bánh tạo nên một hương vị khó quên trong lòng người thưởng thức.",
          image: "assets/images/banh_quy_tra_xanh.jpeg", price: 35.0),
      Products(id: 7, title: "Hồng trà đác cam", description: "Hồng trà Đác cam với vị cam tươi nguyên hòa quyện cùng hồng trà, kết hợp với topping đác dẻo giòn, vỏ cam the mát.",
          image: "assets/images/hong_tra_dac_cam.jpeg", price: 70.0),
      Products(id: 8, title: "Trà ô long dâu", description: "Sự kết hợp độc đáo giữa hương vị đậm đà của nước cốt trà Ôlong, vị dâu tây chín chua chua ngòn ngọt thanh mát đã cho ra một ly nước uống thanh mát giải nhiệt tốt cho sức khỏe. Riêng mình nước cốt trà Ôlong thôi đã khiến thực khách ấn tượng rồi. Giờ đây thêm hương vị tươi mới của dâu tây càng khiến cho món trà Ôlong dâu thêm thú vị hơn.",
          image: "assets/images/tra_o_long_dau.jpeg", price: 50.0),
      Products(id: 9, title: "Trà đào", description: "Trà đào được ướp từ trà đen và chiết xuất của hương đào tự nhiên, thông qua quy trình sản xuất hiện đại cho ra những sản phẩm trà thơm ngon, khi pha trà phảng phất hương thơm của đào, trà có màu hung đỏ và vị ngọt thanh.",
          image: "assets/images/tra_dao.jpeg", price: 50.0),

    ];
    return data;
  }
}