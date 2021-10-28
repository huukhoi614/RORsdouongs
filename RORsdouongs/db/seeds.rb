# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Loaisp.delete_all
Loaisp.create! id: 1, tenloai: "Trà sữa"
Loaisp.create! id: 2, tenloai: "Trà"
Loaisp.create! id: 3, tenloai: "Macchiato Cream Cheese"

Sanpham.delete_all
Sanpham.create! id: 1, tensanpham: "Trà sữa", loaisp_id: 1, mota: "Không có thông tin", anh: "image/trasua.PNG"
Sanpham.create! id: 2, tensanpham: "Trà sữa ô long", loaisp_id: 1, mota: "Trà sữa ô long được pha chế từ trà ô long vốn nổi tiếng trong thế giới các loại trà. Trà ô long thơm, màu sắc nhẹ, độ chát và ngọt hậu dễ gây nghiện nay hòa quyện với bột sữa béo thơm đã mang đến cho người thưởng thức món trà sữa ngon khó cưỡng.", anh: "image/trasuaolong.PNG"
Sanpham.create! id: 3, tensanpham: "Trà sữa dâu tây", loaisp_id: 1, mota: "Vị chua chua, tươi mát của dâu quyện cùng vị trà xanh chát dịu, vị sữa beo béo đặc trưng của Toco Toco, trà sữa Dâu tây không những là thức uống giải nhiệt mà còn bổ sung vitamin, tốt dáng đẹp da", anh: "image/trasuadautay.PNG"
Sanpham.create! id: 4, tensanpham: "Trà sữa Matcha", loaisp_id: 1, mota: "Trong matcha chứa rất nhiều công dụng có lợi cho sức khỏe như hỗ trợ chống oxy hóa, giải độc cơ thể, giảm căng thẳng, mệt mỏi,... Với hương vị thơm ngon, matcha là một loại nguyên liệu phổ biến trong các cửa hàng ăn uống", anh: "image/trasuamatcha.PNG"
Sanpham.create! id: 5, tensanpham: "Trà sữa Socola", loaisp_id: 1, mota: "Chocolate từ lâu được xem là một biểu tượng cho tình yêu với tất cả vị đắng, chát, ngọt ngào", anh: "image/trasuasocola.PNG"
Sanpham.create! id: 6, tensanpham: "Trà sữa vị nhài", loaisp_id: 1, mota: "Trà nhài có mùi thơm nồng, nhưng lại thanh ngọt. Trà sữa vị nhài được pha từ lá trà nhập khẩu từ Nhật Bản nhưng vẫn giữ được sự thơm ngon tươi mát của ly trà. Mùi thơm trà nhài kết hợp với vị ngọt của đường, khi mới uống có vị chua nhẹ hơi chát nhưng càng uống càng cảm nhận dược vị ngọt thanh", anh: "image/trasuavinhai.PNG"
Sanpham.create! id: 7, tensanpham: "Trà sữa Caramen Grille", loaisp_id: 1, mota: "Caramel - nguyên liệu hảo hạng trứ danh xứ Pháp vốn đã quá quen thuộc với những tín đồ ưa thích sự ngọt ngào. Trà sữa Caramel Grillé 130 cũng hội tụ đẩy đủ vị ngọt đặc trưng của caramel nhưng sốt Caramel sau quá trình nướng và khuấy đều nhanh tay trong một thời gian nhất định, thì theo bí kíp riêng của ToCoToCo sẽ trở nên thơm lừng, sánh đậm, khi rót vào tạo thành dòng chảy sóng sánh, mượt mà không hề đứt quãng.", anh: "image/trasuacaramen.PNG"
Sanpham.create! id: 8, tensanpham: "Hồng trà", loaisp_id: 2, mota: "Hồng trà, đơn thuần chỉ là cách gọi của người Trung Quốc, vì màu sắc của trà có màu hồng ngọc hoặc nâu đỏ sau khi hãm và pha trà.", anh: "image/hongtra.PNG"
Sanpham.create! id: 9, tensanpham: "Trà ô long thái cực", loaisp_id: 2, mota: "Sản phẩm là sự kết hợp giữa trà ô long cùng 2 loại topping: trân châu đen và kim cương trắng. Màu sắc trắng - đen của 2 loại topping tượng trưng cho 2 thái cực rõ ràng, vừa tương phản, vừa bổ sung cho nhau. Hình tượng thái cực vốn quen thuộc trong các trường phái võ thuật, đem lại điều thú vị cho cái tên của sản phẩm này.", anh: "image/olongthaicuc.PNG"
Sanpham.create! id: 10, tensanpham: "Dâu tằm kem phô mai", loaisp_id: 3, mota: "Vị của dâu tằm kem phô mai với chút béo ngậy đặt trưng của machiato kết hợp vị chua ngọt của trái dâu tằm Đà Lạt hứa hẹn đem lại trải nghiệm thú vị cho thực khách, vì được làm từ dâu tằm tự nhiên không sử dụng phẩm màu và hương liệu tổng hợp nên Dâu tằm kem phô mai giữ được màu sắc hương vi nguyên bản của trái dâu tằm.", anh: "image/dautamkemphomai.PNG"
Sanpham.create! id: 11, tensanpham: "Trà xanh kem phô mai", loaisp_id: 3, mota: "Trà kem phô mai hay trà cream cheese là thức uống được hòa quyện tinh tế giữa trà và phô mai béo ngậy. Với cách pha chế trà sữa có hai phần tách biệt độc đáo, khi thưởng thức bạn sẽ cảm nhận được vị trà chát nhẹ thơm mát bên dưới và lớp sữa bọt phô mai mằn mặn, sánh đặc bên trên.", anh: "image/traxanhkemphomai.PNG"
Sanpham.create! id: 12, tensanpham: "Hồng trà kem phô mai", loaisp_id: 3, mota: "Không có thông tin", anh: "image/hongtrakemphomai.PNG"

OrderStatus.delete_all
OrderStatus.create! id: 1, tenStt: "Đang tiến hành"
OrderStatus.create! id: 2, tenStt: "Chờ duyệt"
OrderStatus.create! id: 3, tenStt: "Đã duyệt"
OrderStatus.create! id: 4, tenStt: "Đang giao"
OrderStatus.create! id: 5, tenStt: "Hoàn thành"

Khachhang.delete_all
Khachhang.create! id: 1, tenKH:"Vãng lai", diachi: "Không", sodienthoai: "0000000000"

Vanchuyen.delete_all
Vanchuyen.create! id: 1, khoangcach: 0, dongia: 0

Cuahang.delete_all
Cuahang.create! id: 1, tencuahang: "Toco - Hai Bà Trưng", diachi: "66 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng",sodienthoai: "0907765648"

Size.delete_all
Size.create! id: 1, tensize:"M"
Size.create! id: 2, tensize:"L"
Size.create! id: 3, tensize:"XL"

Ctspham.delete_all
Ctspham.create! id: 1, sanpham_id: 1, size_id:1
Ctspham.create! id: 2, sanpham_id: 1, size_id:2
Ctspham.create! id: 3, sanpham_id: 1, size_id:3
Ctspham.create! id: 4, sanpham_id: 2, size_id:1
Ctspham.create! id: 5, sanpham_id: 2, size_id:2
Ctspham.create! id: 6, sanpham_id: 2, size_id:3
Ctspham.create! id: 7, sanpham_id: 3, size_id:1
Ctspham.create! id: 8, sanpham_id: 3, size_id:2
Ctspham.create! id: 9, sanpham_id: 3, size_id:3
Ctspham.create! id: 10, sanpham_id: 4, size_id:1
Ctspham.create! id: 11, sanpham_id: 4, size_id:2
Ctspham.create! id: 12, sanpham_id: 4, size_id:3
Ctspham.create! id: 13, sanpham_id: 5, size_id:1
Ctspham.create! id: 14, sanpham_id: 5, size_id:2
Ctspham.create! id: 15, sanpham_id: 5, size_id:3
Ctspham.create! id: 16, sanpham_id: 6, size_id:1
Ctspham.create! id: 17, sanpham_id: 6, size_id:2
Ctspham.create! id: 18, sanpham_id: 6, size_id:3
Ctspham.create! id: 19, sanpham_id: 7, size_id:1
Ctspham.create! id: 20, sanpham_id: 7, size_id:2
Ctspham.create! id: 21, sanpham_id: 7, size_id:3
Ctspham.create! id: 22, sanpham_id: 8, size_id:1
Ctspham.create! id: 23, sanpham_id: 8, size_id:2
Ctspham.create! id: 24, sanpham_id: 8, size_id:3
Ctspham.create! id: 25, sanpham_id: 9, size_id:1
Ctspham.create! id: 26, sanpham_id: 9, size_id:2
Ctspham.create! id: 27, sanpham_id: 9, size_id:3
Ctspham.create! id: 28, sanpham_id: 10, size_id:1
Ctspham.create! id: 29, sanpham_id: 10, size_id:2
Ctspham.create! id: 30, sanpham_id: 10, size_id:3
Ctspham.create! id: 31, sanpham_id: 11, size_id:1
Ctspham.create! id: 32, sanpham_id: 11, size_id:2
Ctspham.create! id: 33, sanpham_id: 11, size_id:3
Ctspham.create! id: 34, sanpham_id: 12, size_id:1
Ctspham.create! id: 35, sanpham_id: 12, size_id:2
Ctspham.create! id: 36, sanpham_id: 12, size_id:3

Banggium.delete_all
Banggium.create! id: 1, gia: 42000, ngaycapnhat: "19/10/2020", ctspham_id: 1
Banggium.create! id: 2, gia: 52000, ngaycapnhat: "19/10/2020", ctspham_id: 2
Banggium.create! id: 3, gia: 60000, ngaycapnhat: "19/10/2020", ctspham_id: 3
Banggium.create! id: 4, gia: 42000, ngaycapnhat: "19/10/2020", ctspham_id: 4
Banggium.create! id: 5, gia: 52000, ngaycapnhat: "19/10/2020", ctspham_id: 5
Banggium.create! id: 6, gia: 60000, ngaycapnhat: "19/10/2020", ctspham_id: 6
Banggium.create! id: 7, gia: 42000, ngaycapnhat: "19/10/2020", ctspham_id: 7
Banggium.create! id: 8, gia: 52000, ngaycapnhat: "19/10/2020", ctspham_id: 8
Banggium.create! id: 9, gia: 60000, ngaycapnhat: "19/10/2020", ctspham_id: 9
Banggium.create! id: 10, gia: 42000, ngaycapnhat: "19/10/2020", ctspham_id: 10
Banggium.create! id: 11, gia: 52000, ngaycapnhat: "19/10/2020", ctspham_id: 11
Banggium.create! id: 12, gia: 60000, ngaycapnhat: "19/10/2020", ctspham_id: 12
Banggium.create! id: 13, gia: 42000, ngaycapnhat: "19/10/2020", ctspham_id: 13
Banggium.create! id: 14, gia: 52000, ngaycapnhat: "19/10/2020", ctspham_id: 14
Banggium.create! id: 15, gia: 60000, ngaycapnhat: "19/10/2020", ctspham_id: 15
Banggium.create! id: 16, gia: 42000, ngaycapnhat: "19/10/2020", ctspham_id: 16
Banggium.create! id: 17, gia: 52000, ngaycapnhat: "19/10/2020", ctspham_id: 17
Banggium.create! id: 18, gia: 60000, ngaycapnhat: "19/10/2020", ctspham_id: 18
Banggium.create! id: 19, gia: 42000, ngaycapnhat: "19/10/2020", ctspham_id: 19
Banggium.create! id: 20, gia: 52000, ngaycapnhat: "19/10/2020", ctspham_id: 20
Banggium.create! id: 21, gia: 60000, ngaycapnhat: "19/10/2020", ctspham_id: 21
Banggium.create! id: 22, gia: 42000, ngaycapnhat: "19/10/2020", ctspham_id: 22
Banggium.create! id: 23, gia: 52000, ngaycapnhat: "19/10/2020", ctspham_id: 23
Banggium.create! id: 24, gia: 60000, ngaycapnhat: "19/10/2020", ctspham_id: 24
Banggium.create! id: 25, gia: 42000, ngaycapnhat: "19/10/2020", ctspham_id: 25
Banggium.create! id: 26, gia: 52000, ngaycapnhat: "19/10/2020", ctspham_id: 26
Banggium.create! id: 27, gia: 60000, ngaycapnhat: "19/10/2020", ctspham_id: 27
Banggium.create! id: 28, gia: 42000, ngaycapnhat: "19/10/2020", ctspham_id: 28
Banggium.create! id: 29, gia: 52000, ngaycapnhat: "19/10/2020", ctspham_id: 29
Banggium.create! id: 30, gia: 60000, ngaycapnhat: "19/10/2020", ctspham_id: 30
Banggium.create! id: 31, gia: 42000, ngaycapnhat: "19/10/2020", ctspham_id: 31
Banggium.create! id: 32, gia: 52000, ngaycapnhat: "19/10/2020", ctspham_id: 32
Banggium.create! id: 33, gia: 60000, ngaycapnhat: "19/10/2020", ctspham_id: 33
Banggium.create! id: 34, gia: 42000, ngaycapnhat: "19/10/2020", ctspham_id: 34
Banggium.create! id: 35, gia: 52000, ngaycapnhat: "19/10/2020", ctspham_id: 35
Banggium.create! id: 36, gia: 60000, ngaycapnhat: "19/10/2020", ctspham_id: 36

Chonthem.delete_all
Chonthem.create! id: 1, tenthanhphan: "Không", gia: 0
Chonthem.create! id: 2, tenthanhphan: "Hạt dẻ", gia: 8000
Chonthem.create! id: 3, tenthanhphan: "Trân châu Baby", gia: 8000
Chonthem.create! id: 4, tenthanhphan: "Cream cake", gia: 8000
Chonthem.create! id: 5, tenthanhphan: "Trân châu hoàng kim", gia: 8000
Chonthem.create! id: 6, tenthanhphan: "Thạch băng tuyết", gia: 8000
Chonthem.create! id: 7, tenthanhphan: "Machiato", gia: 8000
Chonthem.create! id: 8, tenthanhphan: "Pudding", gia: 8000
Chonthem.create! id: 9, tenthanhphan: "Rau câu", gia: 8000
Chonthem.create! id: 10, tenthanhphan: "Thạch cà phê", gia: 8000
Chonthem.create! id: 11, tenthanhphan: "Trân châu sợi", gia: 8000
Chonthem.create! id: 12, tenthanhphan: "Đậu đỏ", gia: 8000
