import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return new Stack(children: <Widget>[
      new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/ban_do.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      new Container(
        child: Text(
          '''
Diện tích: 331.212 km²

Đất liền: khoảng 324.480 km²
Nội thủy: hơn 4.200 km²
Chiều dài đường biên giới trên đất liền: 4.639 km

Biên giới với các nước: Trung Quốc (1.449,566 km), Lào (2.067 km), Campuchia (1.137 km)
Đường bờ biển: 3.260 km (không tính các đảo)

Vùng biển thuộc quyền chủ quyền và quyền tài phán:

Lãnh hải: 12 hải lý (22,2 km) từ đường cơ sở
Vùng tiếp giáp lãnh hải: 12 hải lý (22,2 km) từ lãnh hải
Vùng đặc quyền kinh tế: 200 hải lý (370,4 km) từ đường cơ sở
Thềm lục địa

Độ cao:
Điểm thấp nhất: mặt biển Đông (0 m)
Điểm cao nhất: đỉnh Phan Xi Păng (3.143 m)

Các điểm cực
Điểm cực bắc
Điểm cực bắc trên đất liền của Việt Nam nằm ở xã Lũng Cú, huyện Đồng Văn, tỉnh Hà Giang tại tọa độ 23,392505912°B 105,32324°Đ (23°23′33″B 105°19′23,7″Đ).

Điểm cực nam
Điểm cực nam trên đất liền của Việt Nam nằm ở xã Đất Mũi, huyện Ngọc Hiển, tỉnh Cà Mau tại tọa độ 8,5624409°B 104,8312831°Đ (8°33′44,8″B 104°49′52,6″Đ).

Điểm cực nam trên biển của Việt Nam nằm ở Hòn Đá Lẻ, quần đảo Hòn Khoai, tỉnh Cà Mau (điểm A2 của Đường cơ sở Việt Nam) tại tọa độ 8,380852°B 104,878725°Đ (8°22′51,1″B 104°52′43,4″Đ).

Điểm cực tây
Điểm cực tây trên đất liền của Việt Nam nằm ở A Pa Chải - Tá Miếu, xã Sín Thầu, huyện Mường Nhé, tỉnh Điện Biên (ngã ba biên giới Việt - Trung - Lào) tại tọa độ 22,400734°B 102,14394°Đ (22°24′2,6″B 102°08′38,2″Đ).

Điểm cực đông
Điểm cực đông trên đất liền của Việt Nam nằm ở mũi Đôi trên bán đảo Hòn Gốm, xã Vạn Thạnh, huyện Vạn Ninh, tỉnh Khánh Hòa tại tọa độ 12,6483756°B 109,4616339°Đ (12°38′54,2″B 109°27′41,9″Đ) (không nên nhầm với mũi Điện ở Phú Yên).
          ''',
          style: TextStyle(
            fontSize: 11.3,
          ),
        ),
      )
    ]);
  }
}
