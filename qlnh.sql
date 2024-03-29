USE [QLNHAHANG]
GO
/****** Object:  Table [dbo].[New]    Script Date: 05/16/2020 13:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[New](
	[Title] [nvarchar](200) NOT NULL,
	[Date] [date] NOT NULL,
	[Image] [nvarchar](100) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Type] [int] NULL,
	[Summary] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[New] ON
INSERT [dbo].[New] ([Title], [Date], [Image], [Id], [Content], [Type], [Summary]) VALUES (N'UỐNG BIA THỎA THÍCH CÙNG KHOÁI', CAST(0x36400B00 AS Date), N'1.jpg', 49, N'<p>Từ 20/9 – 31/10/2017, Khoái tặng ngay thùng Tiger cho Quý khách đi nhóm 10 người và order 2 trong 3 món ăn mới đặc sắc tại Khoái gồm:</p><ul><li>Gà hấp mắm nhĩ</li><li>Mực cuộn phô mai chiên xù</li><li>Sườn cá rang muối</li></ul><p>Gà hấp mắm nhĩ cầu kỳ bởi cách lựa chọn gà ngon vô cùng công phu, phải là gà thả vườn và nuôi bằng loại hèm rượu mộc mạc của vùng thôn quê, bởi cách chọn thứ nước mắm nhĩ với màu đỏ cánh gián sóng sánh được ủ chượp bằng chính đôi tay của bà Mười Khánh tại Phan Rang. Còn hấp dẫn là bởi đĩa gà dọn lên không chỉ ánh lên thứ màu vàng óng ánh, mà còn toả hương thơm thoang thoảng. Và khi ăn, vị ngọt tự nhiên của nước dừa hoà vào vị mặn nồng của nước mắm thấm vào từng thớ thịt dai mềm càng khiến món ăn thêm dày dạn hương vị.</p><p>Không phải mực ống, mực nang mà nhất định phải là mực sữa được cất về ngay trong ngày từ vùng biển Phú Quốc, bởi mực sữa chắc thịt lại mềm ngọt và thơm béo tự nhiên, vô cùng độc đáo. Chỉ khi nhìn vào đĩa mực được chiên giòn vàng ruộm bày biện gọn ghẽ trên đĩa, bạn sẽ muốn bỏ ngay một miếng vào miệng để cảm nhận vị nóng hổi của món ăn vừa chiên xong, để đưa đẩy vị giác khi lớp vỏ bột giòn tan bên ngoài quyện vào thớ mực tươi ngọt và xen kẽ vị mềm mịn của phô mai tan chảy bên trong.</p>', 1, N'Từ 20/9 – 31/10/2017, Khoái tặng ngay thùng Tiger cho Quý khách đi nhóm 10 người và order 2 trong 3 món ăn mới đặc sắc tại Khoái gồm: Gà hấp mắm nhĩ Mực cuộn phô mai chiên xù Sườn cá rang muối   Gà hấp mắm nhĩ cầu kỳ bởi cách lựa chọn gà […]')
INSERT [dbo].[New] ([Title], [Date], [Image], [Id], [Content], [Type], [Summary]) VALUES (N'Có gì trong Combo ” Khoái lên Mẹt”?', CAST(0x5F400B00 AS Date), N'2.jpg', 50, N'<p>Chỉ với 245,000đ bạn đã có thể thưởng thức ngay 4 món best-seller tại Khoái bao gồm:</p><p>✅&nbsp;Khoái lên Mẹt 1: Gỏi sứa Nha Trang, Nem nướng Ninh Hòa, Gà chiên lá é, Bánh xèo thập cẩm<br>✅&nbsp;Khoái lên Mẹt 2: Gỏi cá mai, Chả giò ốc biển, Mực sữa chiên nước mắm, Bánh căn thập cẩm</p><p>Đây là sự lựa chọn phù hợp cho những anh chị đi nhóm nhỏ từ 2-3 người, muốn thưởng thức đa dạng các món ngon tại Khoái. Đến Khoái thưởng thức ngay nhé!<br>——————–<br>Nhà hàng Khoái – Đến Vui_ Ăn Ngon _ Về Khoái</p>', 1, N'Chỉ với 245,000đ bạn đã có thể thưởng thức ngay 4 món best-seller tại Khoái bao gồm: ✅ Khoái lên Mẹt 1: Gỏi sứa Nha Trang, Nem nướng Ninh Hòa, Gà chiên lá é, Bánh xèo thập cẩm ✅ Khoái lên Mẹt 2: Gỏi cá mai, Chả giò ốc biển, Mực sữa chiên nước mắm, Bánh căn […]')
INSERT [dbo].[New] ([Title], [Date], [Image], [Id], [Content], [Type], [Summary]) VALUES (N'Ăn cá rất tốt, vậy mỗi loại cá cung cấp cho cơ thể chúng ta những gì?', CAST(0x60400B00 AS Date), N'an-ca-tot-cho-suc-khoe-300x300.jpg', 51, N'<p><a href="https://www.facebook.com/hashtag/c%C3%A1_ng%E1%BB%AB?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAWoSI7IKS7HJW-2r19ECVYcgW-JUFN1zhnGriwaSKIUI2_uP1w3Y1OAcdYthgyaKWzKXmqeunqEDse6u8wdjILGNVgPVq605pAAdrZZhVcXq_iI-bxu6glTP0NDVtOThTWTfeiCbF6GbHPVnK8pfFGiA0WwTZAsKAj2xZX3dxy8eKLqeg2jUuvPkeDS4bALpHtthYSdWKH3awwWCQp2SgtLsHYgOhlWiWG2qUzukK-iHL3ldWxJqpG18d3O9l8Qr0F4Bb9T6JP2cjPfSnbqBz6I1ayQsfTR6HQLlp4r0gBVmiHjTrMdDH7ScAbmfIoyMLqYXFuvGzQPuSFt3XYrUA2wDKbqkBNdja7_i9dcoZesIi-nUv-fcb_bMtUD3TuUqxGhMucBRMfWUzP2UN1jFdSltdjS8q8VNve9QrbjdzQiiE&amp;__tn__=%2ANK-R">#Cá_Ngừ</a>: là nguồn cung cấp omega-3, protein, magiê, kali, vitamin B12 tuyệt vời. Cá ngừ thường được chế biến thành các món cuốn hay nướng. Tại Khoái, cá ngừ tươi được sơ chế và cho vào nồi nước dùng được ninh từ xương cá và ớt ba tri. BÚN CÁ NGỪ được phục vụ trong thố nóng hổi, dùng với bún và rau sống thái sợi.</p><p><a href="https://www.facebook.com/hashtag/c%C3%A1_m%E1%BB%9Dm?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAWoSI7IKS7HJW-2r19ECVYcgW-JUFN1zhnGriwaSKIUI2_uP1w3Y1OAcdYthgyaKWzKXmqeunqEDse6u8wdjILGNVgPVq605pAAdrZZhVcXq_iI-bxu6glTP0NDVtOThTWTfeiCbF6GbHPVnK8pfFGiA0WwTZAsKAj2xZX3dxy8eKLqeg2jUuvPkeDS4bALpHtthYSdWKH3awwWCQp2SgtLsHYgOhlWiWG2qUzukK-iHL3ldWxJqpG18d3O9l8Qr0F4Bb9T6JP2cjPfSnbqBz6I1ayQsfTR6HQLlp4r0gBVmiHjTrMdDH7ScAbmfIoyMLqYXFuvGzQPuSFt3XYrUA2wDKbqkBNdja7_i9dcoZesIi-nUv-fcb_bMtUD3TuUqxGhMucBRMfWUzP2UN1jFdSltdjS8q8VNve9QrbjdzQiiE&amp;__tn__=%2ANK-R">#Cá_Mờm</a>: có nhiều chất đạm, canxi, kali, selen, vitamin B12. Khoái dùng cá mờm rim là nguyên liệu chính cho món CƠM CHIÊN CÁ MỜM rất được yêu thích tại Khoái</p><p><a href="https://www.facebook.com/hashtag/c%C3%A1_b%C3%B2_da?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAWoSI7IKS7HJW-2r19ECVYcgW-JUFN1zhnGriwaSKIUI2_uP1w3Y1OAcdYthgyaKWzKXmqeunqEDse6u8wdjILGNVgPVq605pAAdrZZhVcXq_iI-bxu6glTP0NDVtOThTWTfeiCbF6GbHPVnK8pfFGiA0WwTZAsKAj2xZX3dxy8eKLqeg2jUuvPkeDS4bALpHtthYSdWKH3awwWCQp2SgtLsHYgOhlWiWG2qUzukK-iHL3ldWxJqpG18d3O9l8Qr0F4Bb9T6JP2cjPfSnbqBz6I1ayQsfTR6HQLlp4r0gBVmiHjTrMdDH7ScAbmfIoyMLqYXFuvGzQPuSFt3XYrUA2wDKbqkBNdja7_i9dcoZesIi-nUv-fcb_bMtUD3TuUqxGhMucBRMfWUzP2UN1jFdSltdjS8q8VNve9QrbjdzQiiE&amp;__tn__=%2ANK-R">#Cá_Bò_Da</a>&nbsp;chứa Vitamin nhóm B: B12; B6; B3; B1; Vitamin K; Vitamin E; Vitamin D; Vitamin C; Vitamin A… CÁ BÒ DA không chỉ bỗ dưỡng mà thịt rất ngọt và thơm. Ăn một lần rồi nhớ mãi</p>', 1, N'#Cá_Ngừ: là nguồn cung cấp omega-3, protein, magiê, kali, vitamin B12 tuyệt vời. Cá ngừ thường được chế biến thành các món cuốn hay nướng. Tại Khoái, cá ngừ tươi được sơ chế và cho vào nồi nước dùng được ninh từ xương cá và ớt ba tri. BÚN CÁ NGỪ được phục vụ […]')
INSERT [dbo].[New] ([Title], [Date], [Image], [Id], [Content], [Type], [Summary]) VALUES (N'QUAY LIỀN TAY, TRÚNG QUÀ NGAY', CAST(0x723F0B00 AS Date), N'4.jpg', 67, N'<p>Quay liền tay, Trúng quà ngay</p><p>Với cơ hội 100% trúng thưởng những món ăn vô cùng hấp dẫn: Cá bò đen nướng, Gỏi sứa Nha Trang, Nem nướng Ninh Hòa, Ốc bưu nướng tiêu,…. Khoái hân hạnh mời bạn tham gia mini game Vòng Quay May Mắn. Khoái chọn một buổi tối bí mật trong 3 ngày cuối tuần (22/03- 24/03) để mang đến cho anh/chị trải nghiệm vui nhất, hấp dẫn nhất. Nhanh tay tag hết bạn bè vào đây rồi mình cùng đến Khoái để trổ tài quay món ngay nhé</p><p>Không chỉ thưởng thức những hương vị hấp dẫn, tận hưởng khoảnh khắc sum vầy bên nhau, mà ghé Khoái bạn còn được trải qua những cung bậc cảm xúc đầy bất ngờ để nhận về những “món ruột” ưa thích</p><p>Vừa ăn, vừa chơi, ngại gì không thử&nbsp;</p><figure class="image"><img src="https://static.xx.fbcdn.net/images/emoji.php/v9/tf3/1.5/16/2764.png" alt=""></figure><p>&lt;3</p>', 1, N'Quay liền tay, Trúng quà ngay Với cơ hội 100% trúng thưởng những món ăn vô cùng hấp dẫn: Cá bò đen nướng, Gỏi sứa Nha Trang, Nem nướng Ninh Hòa, Ốc bưu nướng tiêu,…. Khoái hân hạnh mời bạn tham gia mini game Vòng Quay May Mắn. Khoái chọn một buổi tối bí mật […]')
INSERT [dbo].[New] ([Title], [Date], [Image], [Id], [Content], [Type], [Summary]) VALUES (N'Tưng bừng cùng Khoái đón sinh nhật lần thứ 7', CAST(0x69400B00 AS Date), N'5.jpg', 69, N'<p>Như một lời tri ân đến những khách hàng thân thiết đã luôn đồng hành cùng Khoái, nhân kỷ niệm sinh nhật lần thứ 7 của nhà hàng, Khoái dành tặng đến tất cả thực khách combo nước chấm “made by Khoái” gồm: Nước chấm hải sản Khoái và Nước chấm muối ớt xanh được đóng chai chỉn chu, lành và chất lượng.</p><p>7 năm đi qua là một chặn đường không ngừng cải tiến để mang lại những giá trị tốt nhất cho quý khách hàng thân thương. Đó là những ngày thâm nhập cùng người dân bản xứ để thu nhận những bí quyết chế biến thuần nhất, đậm vị bản xứ nhất. Đó là những khoảnh khắc vượt màn đêm ra cảng cá những buối sáng sớm tầm 4 giờ khuya để thu mua những mẻ hải sản tươi mới nhất mang về Sài Gòn trong ngày để đáp ứng nhu cầu hải sản tươi sạch của người Sài Thành. Đó cũng là những ngày lặn lội tìm nguyên liệu mới và sáng tạo những món mới vừa để làm hài lòng hơn nhu cầu đa dạng thực đơn cũng như làm mới trải nghiệm của thực khách. Đó cũng là quá trình cải tiến sáng tạo để có nhiều hơn các loại nước chấm phù hợp làm tăng hương vị trên mỗi món ăn.</p><p>Bộ sưu tập 2 nước chấm đặc trưng như là sự tri ân của Khoái đến Quý Khách đã đồng hành cùng Khoái trong suốt chặn đường qua, và cũng muốn gởi gắm hương vị Khoái đến từng bữa ăn gia đình của Quý Khách.</p><p>Thời gian áp dụng: Từ ngày 01/12/2018 đến hết ngày 03/12/2018<br>Không áp dụng đối với trẻ em đi cùng người lớn.<br>Áp dụng tại chi nhánh:<br>Không áp dụng đồng thời với các chương trình khuyến mãi khác.</p>', 1, N'Như một lời tri ân đến những khách hàng thân thiết đã luôn đồng hành cùng Khoái, nhân kỷ niệm sinh nhật lần thứ 7 của nhà hàng, Khoái dành tặng đến tất cả thực khách combo nước chấm “made by Khoái” gồm: Nước chấm hải sản Khoái và Nước chấm muối ớt xanh được […]')
INSERT [dbo].[New] ([Title], [Date], [Image], [Id], [Content], [Type], [Summary]) VALUES (N'HẢI SẢN BBQ CUỐI TUẦN- MÓN NGON GẮN KẾT TÌNH THÂN', CAST(0x36400B00 AS Date), N'6.jpg', 70, N'<p>Nâng niu mỗi khoảnh khắc bên gia đình và những người thân yêu sẽ luôn đem đến cho bạn những phút giây ngập tràn hạnh phúc.</p><p>Với tôn chỉ “Sạch về nguyên liệu – Ngon về hương vị – Chu đáo về phục vụ”, đại tiệc hải sản cuối tuần tại Khoái không chỉ đem đến cho bạn những món ngon hấp dẫn, hợp gout với moi thành viên trong gia đình&nbsp; mà còn là một không gian ẩm thực kết nối, đầy chỉn chu và chuyên nghiệp.</p><p>Để đảm bảo sự tươi ngon của nguyên liệu, tất cả đều được nhập về ngay trong ngày sau khi lấy trực tiếp từ ghe của ngư dân tại cảng Hòn Rớ – một trong những cảng biến lớn nhất Nha Trang, vốn nổi danh về những loại hải sản phong phú, tươi ngon bậc nhất Nam Trung Bộ.</p><ul><li>Chỉ cần lướt qua menu, bạn sẽ được “lạc lối” giữa một “thiên đường hải sản” đa dạng và độc đáo. Từ những cái tên quen thuộc như cá điêu hồng, mực sữa, bạch tuộc, cá nục, cá chim trắng, nhum đến những tên gọi mới lạ hơn như cá bò hòm, bò đen, bò da, cá khế…</li><li>Món ăn ngon hơn nhờ cách chế biến tinh tế. Ở Khoái, chúng tôi lựa chọn cách chế biến tinh giản để giữ trọn vẹn hương vị nguyên bản của các loại hải sản và chăm chút đến những chi tiết nhỏ nhất như các loại gia vị, rau xanh ăn kèm hay nước chấm. Tất cả đều là những sản phẩm hữu cơ, hoặc được làm thủ công để đảm bảo sức khoẻ cho thực khách và giúp món ăn trở nên khác biệt.</li><li>Chăm sóc thực khách như chính những người thân của mình là tâm niệm phục vụ tại Khoái. Không chỉ có những món ngon “nịnh” vị giác mà sự chu đáo, ân cần, luôn lắng nghe và thấu hiểu trong phong cách phục vụ sẽ là điều để bạn nghĩ về Khoái mỗi khi cần tìm một không gian lý tưởng cho chính mình.</li></ul><p> </p><p>Cuối tuần này, mời bạn ghé Khoái để tận hưởng những bữa ăn thấm vị đượm tình và chia sẻ những khoảnh khắc sum vầy cùng nhau nhé!</p>', 1, N'Nâng niu mỗi khoảnh khắc bên gia đình và những người thân yêu sẽ luôn đem đến cho bạn những phút giây ngập tràn hạnh phúc. Với tôn chỉ “Sạch về nguyên liệu – Ngon về hương vị – Chu đáo về phục vụ”, đại tiệc hải sản cuối tuần tại Khoái không chỉ đem […]')
INSERT [dbo].[New] ([Title], [Date], [Image], [Id], [Content], [Type], [Summary]) VALUES (N'BUFFET ĐẠI TIỆC HẢI SẢN – TẶNG 1 VÉ KHI MUA 10 VÉ BUFFET TRƯA', CAST(0x36400B00 AS Date), N'7.jpg', 71, N'<p>Với hơn 30 món ăn độc đáo từ những loài hải sản tươi sống như hào, ghẹ, nhum, tôm càng, sò lụa và rất nhiều các loại ốc cùng cách chế biến rất “Khoái”, là một “fan hải sản thứ thiệt” chắc chắn bạn không thể nào cưỡng lại sức hút của Buffet ĐẠI TIỆC HẢI SẢN.</p><p>Không chỉ đa dạng về món ăn, Khoái cam kết mang đến cho bạn một trải nghiệm ẩm thực vô cùng an toàn. Đội ngũ Khoái đã dành ra vài tháng để tìm đến tận thuyền các ngư dân với mong muốn mang về những loài hải sản độc đáo, học hỏi họ cách bảo quản hải sản tự nhiên không hóa chất bởi Khoái tin, cái tâm trong ẩm thực sẽ đến được trái tim của thực khách.</p><p>Hải sản tươi ngon, ăn không giới hạn với giá cả vô cùng yêu thương chỉ 345,000/ khách. Tặng ngay 1 vé khi mua 10 vé buffet trưa. Trẻ em dưới 1,2m giá chỉ 207,000/ bé, miễn phí cho bé dưới 1m.</p><p>Ngay từ hôm nay, bạn đã có thể đặt lịch hẹn hò với gia đình và bạn bè để thưởng thức một Đại tiệc hải sản ấn tượng, đầy ắp những hương vị êm dịu mùi biển cả trong một không gian nhẹ nhàng và bình yên cùng Khoái đó nhé.</p><p>Chỉ 2 ngày 18 -19/8/2017</p><p>Thời gian: Sáng (11:30 – 14:30); Tối (18:00 – 21:00)</p><p>Địa chỉ: 16 Lê Quý Đôn, Phường 6, Quận 3</p><p>Phone: 0915 206 737 (Mr. Khang</p>', 2, N'Với hơn 30 món ăn độc đáo từ những loài hải sản tươi sống như hào, ghẹ, nhum, tôm càng, sò lụa và rất nhiều các loại ốc cùng cách chế biến rất “Khoái”, là một “fan hải sản thứ thiệt” chắc chắn bạn không thể nào cưỡng lại sức hút của Buffet ĐẠI TIỆC […]')
INSERT [dbo].[New] ([Title], [Date], [Image], [Id], [Content], [Type], [Summary]) VALUES (N'MÓN MỚI CHÀO HÈ – GIẢM GIÁ 20% CHO NHÓM KHÁCH TRÊN 10 NGƯỜI', CAST(0x9D3F0B00 AS Date), N'8.jpg', 72, N'<p>Hè này, Nhà hàng Khoái xin giới thiệu đến Quý thực khách 3 món ăn mới, và giảm ngay 20% cho nhóm khách từ 10 người trở lên, áp dụng từ 03/05 – 30/05/2017</p><ul><li>Gà sauna:</li></ul><p>Nếu đến Khoái trong dịp hè này, thực khách phải thử dùng món gà có cái tên gây tò mò này. Thứ nhất gà ta được tuyển chọn từ 1,2 – 1,4kg/ con. Ở cân nặng này, thịt gà không quá non cũng không già, độ mềm thịt vừa phải. Thứ 2 nằm ở phương pháp chế biến. Gà được cho vào thố đem xông trong hỗn hợp muối hột, sả, lá chanh. Tại sao không nướng hay hấp mà lại xông hơi. Điểm đặc biệt ở đây là khi gà được xông hơi, các thành phần gia vị sẽ thẩm thấu vào bên trong từng thớ thịt, làm cho thịt vừa mềm vừa thơm lại đậm đà chứ không khô rang như nướng hay thịt bị ngậm nước như hấp.</p><p>2. Mực nhúng ớt xiêm xanh:</p><p>Điều gì làm nên sự tuyệt vời của món ăn này? Trước tiên phải kể đến độ tươi ngon của nguyên liệu mực sữa Phú Quốc. Món này ăn kèm với rau mồng tơi và bún. Nước lèo để nhúng làm từ nước dừa xiêm, ớt xiêm xanh, có vị ngọt mát của nước dừa và vị cay the của ớt xiêm xanh. Khi ăn, bạn sẽ sẽ cảm nhận được độ giòn ngọt của mực quyện với nước dừa và vị the của ớt xiêm xanh kèm với rau mồng tơi, chắc chắn sẽ là một trải nghiệm ẩm thực rất đáng nhớ</p><p>3. Bò cuộn tiêu xanh:</p><p>Bò nguyên liệu của món ăn này là thịt bò đùi phi lê, cuộn cùng tiêu xanh, phô mai, đầu hành, sau đó đi nướng</p><p>Cho 1 cuốn bò vào giữa lớp rau sống cuốn lại và thưởng thức, bạn sẽ cảm nhận được đầy đủ vị mềm ngọt của bò, chút xíu béo của phô mai. Điểm nhấn của món ăn này là tiêu xanh trong cuốn bò tạo được sự lạ miệng, làm dậy lên hương vị món ăn.</p><p>Địa chỉ: 16 Lê Quý Đôn, Phường 6, Quận 3</p><p>Đặt bàn: (08) 393 00013 // 0915 206 737 (Mr. Khang)</p>', 2, N'Hè này, Nhà hàng Khoái xin giới thiệu đến Quý thực khách 3 món ăn mới, và giảm ngay 20% cho nhóm khách từ 10 người trở lên, áp dụng từ 03/05 – 30/05/2017 Gà sauna: Nếu đến Khoái trong dịp hè này, thực khách phải thử dùng món gà có cái tên gây tò […]')
SET IDENTITY_INSERT [dbo].[New] OFF
/****** Object:  Table [dbo].[Member]    Script Date: 05/16/2020 13:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](50) NULL,
	[cellphone] [nvarchar](50) NULL,
	[address] [nvarchar](200) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[birthday] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Member] ON
INSERT [dbo].[Member] ([name], [email], [phone], [cellphone], [address], [id], [birthday]) VALUES (N'Bạch Thanh Tụt', N'tut2712@gmail.com', N'123456789', N'0708480392', N'Quận 9, Tp.HCM', 16, CAST(0x6C400B00 AS Date))
INSERT [dbo].[Member] ([name], [email], [phone], [cellphone], [address], [id], [birthday]) VALUES (N'Bạch Thanh Trọng', N'tutbach2712@gmail.com', N'', N'0708480392', N'Thủ Đức', 17, CAST(0x6C400B00 AS Date))
SET IDENTITY_INSERT [dbo].[Member] OFF
/****** Object:  Table [dbo].[FoodGroup]    Script Date: 05/16/2020 13:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EName] [nvarchar](100) NOT NULL,
	[VName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FoodGroup] ON
INSERT [dbo].[FoodGroup] ([Id], [EName], [VName]) VALUES (1, N'Salad', N'Gỏi')
INSERT [dbo].[FoodGroup] ([Id], [EName], [VName]) VALUES (2, N'Roll & Steamed', N'Món cuốn và hấp')
INSERT [dbo].[FoodGroup] ([Id], [EName], [VName]) VALUES (3, N'Shrim', N'Tôm')
INSERT [dbo].[FoodGroup] ([Id], [EName], [VName]) VALUES (9, N'Fish', N'Cá')
INSERT [dbo].[FoodGroup] ([Id], [EName], [VName]) VALUES (10, N'Snail', N'Ốc')
INSERT [dbo].[FoodGroup] ([Id], [EName], [VName]) VALUES (11, N'Hot pot', N'Lẩu')
INSERT [dbo].[FoodGroup] ([Id], [EName], [VName]) VALUES (12, N'Healthy Juice', N'Thức uống khỏe đẹp')
INSERT [dbo].[FoodGroup] ([Id], [EName], [VName]) VALUES (15, N'Sweet Dessert', N'Tráng miệng')
SET IDENTITY_INSERT [dbo].[FoodGroup] OFF
/****** Object:  Table [dbo].[Branch]    Script Date: 05/16/2020 13:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Phone] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Branch] ON
INSERT [dbo].[Branch] ([Id], [Name], [Phone]) VALUES (1, N'16 Lê Quý Đôn, Q3, TPHCM', N' 028 393 00013')
SET IDENTITY_INSERT [dbo].[Branch] OFF
/****** Object:  Table [dbo].[TableBook]    Script Date: 05/16/2020 13:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableBook](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Number] [int] NOT NULL,
	[BranchId] [int] NULL,
	[Notes] [nvarchar](500) NULL,
	[state] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TableBook] ON
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (73, N'Bạch Thanh Trọng', N'0708480392', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB1100F84A80 AS DateTime), 5, 1, N'Hello', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (74, N'Bạch Thanh Tụt', N'090000000', N'tut2712@gmail.com', CAST(0x0000AB110108C540 AS DateTime), 4, 1, N'Hi!', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (75, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB150013C680 AS DateTime), 5, 1, N'qq', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (76, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB150013C680 AS DateTime), 5, 1, N'qq', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (77, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB1500152610 AS DateTime), 3, 1, N'dd', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (78, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB1500152610 AS DateTime), 3, 1, N'dd', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (79, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB1500152610 AS DateTime), 3, 1, N'dd', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (80, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB1500152610 AS DateTime), 3, 1, N'dd', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (81, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB1500152610 AS DateTime), 3, 1, N'dd', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (82, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB1500152610 AS DateTime), 3, 1, N'dd', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (83, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB1500152610 AS DateTime), 3, 1, N'dd', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (84, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB1500152610 AS DateTime), 3, 1, N'dd', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (85, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB1500152610 AS DateTime), 3, 1, N'dd', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (86, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x000B41FA00034BC0 AS DateTime), 5, 1, N'aaa', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (87, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x000B41FD0010C110 AS DateTime), 5, 1, N'aaa', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (88, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x000B41FB00D5F570 AS DateTime), 5, 1, N'aaa', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (89, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x00002ACB00D5F570 AS DateTime), 5, 1, N'aaa', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (90, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB3300D5F570 AS DateTime), 5, 1, N'aaa', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (91, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB33017E0CB0 AS DateTime), 5, 1, N'aaa', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (92, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB3300D5F570 AS DateTime), 10, 1, N'66', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (93, N'Bạch Thanh Trọng', N'001', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB3300D5F570 AS DateTime), 10, 1, N'hh', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (94, N'Bạch Thanh Trọng', N'0708480392', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB3500D5F570 AS DateTime), 10, 1, N'abc', 0)
INSERT [dbo].[TableBook] ([Id], [Name], [Phone], [Email], [Date], [Number], [BranchId], [Notes], [state]) VALUES (95, N'Bạch Thanh Trọng', N'0708480392', N'thanhtrongthanh2712@gmail.com', CAST(0x0000AB35018AF560 AS DateTime), 10, 1, N'Hello', 0)
SET IDENTITY_INSERT [dbo].[TableBook] OFF
/****** Object:  Table [dbo].[Food]    Script Date: 05/16/2020 13:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EName] [nvarchar](100) NOT NULL,
	[VName] [nvarchar](100) NOT NULL,
	[image] [nvarchar](100) NOT NULL,
	[cost] [int] NOT NULL,
	[FoodGroupId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Food] ON
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (2, N'Squid & Wasabi salad', N'Gỏi mực Wasabi', N'Goi-muc.jpg', 281000, 1)
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (3, N'“Nha Trang” Raw fish salad  ', N'Gỏi cá mai', N'Goi-ca-mai.jpg', 194000, 1)
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (6, N'Beef and Vietnamese herb leaves salad', N'Gỏi bò rau thơm', N'Goi-bo.jpg', 205000, 1)
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (9, N'“Nha Trang” Jelly fish salad', N'Gỏi Sứa Nha Trang', N'Goi-sua.jpg', 253000, 1)
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (10, N'Steamed Mackerel Scad', N'Cá nục hấp', N'Ca-nuc-hap.jpg', 149000, 2)
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (14, N'Snail spring rolls', N'Chả giò ốc biển', N'cha-gio-oc-bien.jpg', 193000, 2)
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (16, N'Grilled pork meat, served with crispy rice paper and vegetables', N'Nem nướng Ninh Hòa', N'nem-nuong.jpg', 178000, 2)
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (23, N'Ocean Prawn grilled with chilli salt', N'Tôm ủ muối hột', N'Tom-u-muoi-hot.jpg', 275000, 3)
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (24, N'Sea Prawn grilled with chili salt', N'Tôm biển nướng muối ớt', N'Tom-bien-nuong-muoi-ot.jpg', 371000, 3)
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (25, N'Ocean tuna''s ribs grilled with honey', N'Sườn cá bò gù nướng mật ong', N'suong-ca-bo-gu-nuong-mat-ong.jpg', 237000, 9)
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (26, N'Ocean Snail Sauted With Chillis And Lemongrass', N'Cồi điếu xào sả ớt', N'Coi-dieu.jpg', 281000, 10)
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (27, N'Beef soaked with shrimp paste', N'Lẩu bò mắm ruốc', N'Lau-bo-mam-ruoc.jpg', 351000, 11)
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (28, N'Squid soaked with green paprika', N'Mực sữa nhúng ớt xiêm xanh', N'Muc-nhung-ot-xanh.jpg', 345000, 11)
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (29, N'Sweet mashed green bean with blended ice', N'Chè đậu xanh đánh (đá)', N'Dau-xanh-danh.jpg', 45000, 15)
INSERT [dbo].[Food] ([Id], [EName], [VName], [image], [cost], [FoodGroupId]) VALUES (30, N'Jujube in rock syrup', N'Chè rong câu táo đỏ', N'rong-cau-tao-do.jpg', 45000, 15)
SET IDENTITY_INSERT [dbo].[Food] OFF
/****** Object:  ForeignKey [FK_Food_FoodGroup]    Script Date: 05/16/2020 13:57:16 ******/
ALTER TABLE [dbo].[Food]  WITH CHECK ADD  CONSTRAINT [FK_Food_FoodGroup] FOREIGN KEY([FoodGroupId])
REFERENCES [dbo].[FoodGroup] ([Id])
GO
ALTER TABLE [dbo].[Food] CHECK CONSTRAINT [FK_Food_FoodGroup]
GO
/****** Object:  ForeignKey [FK_TableBook_Branch]    Script Date: 05/16/2020 13:57:16 ******/
ALTER TABLE [dbo].[TableBook]  WITH CHECK ADD  CONSTRAINT [FK_TableBook_Branch] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[TableBook] CHECK CONSTRAINT [FK_TableBook_Branch]
GO
