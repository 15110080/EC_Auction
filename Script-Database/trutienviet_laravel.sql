/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50505
Source Host           : trutienviet.net:3306
Source Database       : trutienviet_laravel

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-05-30 00:33:54
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `bidder`
-- ----------------------------
DROP TABLE IF EXISTS `bidder`;
CREATE TABLE `bidder` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varbinary(100) NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cmnd` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bidder
-- ----------------------------
INSERT INTO `bidder` VALUES ('1', 'Long', 'dulong@gmail.com', 0x6334636134323338613062393233383230646363353039613666373538343962, 'HCM', '123456', '25642319', '2018-05-29 21:27:36');
INSERT INTO `bidder` VALUES ('3', 'Minh', 'nhutminh@gmail.com', 0x6565616662373136663933666130393064373731363734396136656566613732, 'HCM', '123456', '27650651', '2018-05-29 21:27:42');
INSERT INTO `bidder` VALUES ('2', 'Chau', 'ChauLe@gmail.com', 0x6565616662373136663933666130393064373731363734396136656566613732, 'HCM', '123456', '254678192', '2018-05-29 21:27:43');
INSERT INTO `bidder` VALUES ('4', 'Huỳnh Nhựt Minh', 'hnminh6@gmail.com', 0x3931646566373130323335303431306437353336643636316436336562313936, 'HCM', '01882295336', '25684040', '2018-05-29 21:57:05');
INSERT INTO `bidder` VALUES ('5', 'Lâm Thành Tài', 'tailam97@gmail.com', 0x3230326362393632616335393037356239363462303731353264323334623730, 'HCM', '01235451879', '272516797', '2018-05-29 21:27:56');
INSERT INTO `bidder` VALUES ('6', 'Nguyễn Thái Học', 'thaihoc97@gmail.com', 0x3230326362393632616335393037356239363462303731353264323334623730, 'HCM', '0911789317', '27257697', '2018-05-29 21:27:57');
INSERT INTO `bidder` VALUES ('7', 'Nguyễn Văn A', 'taolaa@gmail.com', 0x3235306366386235316337373366336638646338623462653836376139613032, 'HCM', '012356789', '252627298', '2018-05-29 21:28:02');
INSERT INTO `bidder` VALUES ('8', 'Trần Văn B', 'taolab@gmail.com', 0x3364656631383461643866343735356666323639383632656137373339336464, 'HCM', '0128981982', '272567879', '2018-05-29 21:28:07');
INSERT INTO `bidder` VALUES ('9', 'Nguyễn Thị C', 'taolac@gmail.com', 0x3638303533616632393233653030323034633363613763366133313530636637, 'HCM', '0987650651', '262528971', '2018-05-29 21:28:11');
INSERT INTO `bidder` VALUES ('10', 'Nguyễn Huy D', 'taolad@gmail.com', 0x3939633565303762346435646539643138633335306364663634633561613364, 'HCM', '0129876510', '262729280', '2018-05-29 21:28:15');
INSERT INTO `bidder` VALUES ('12', 'Huỳnh Nhựt Minh', 'hnminh666@gmail.com', 0x3931646566373130323335303431306437353336643636316436336562313936, '123456789', '01882295336', '1231564', '2018-05-29 21:28:19');
INSERT INTO `bidder` VALUES ('13', '', 'hanvopham@facebook.com', 0x3931646566373130323335303431306437353336643636316436336562313936, 'HCM', '01882295336', '12345678', '2018-05-29 21:54:57');
INSERT INTO `bidder` VALUES ('14', 'han vo pham', 'hnminh11@gmail.com', 0x3931646566373130323335303431306437353336643636316436336562313936, 'hcm', '01882295336', '12345678', '2018-05-29 21:28:17');
INSERT INTO `bidder` VALUES ('15', 'Huỳnh Nhựt Minh', 'hnm@gmail.com', 0x3931646566373130323335303431306437353336643636316436336562313936, 'hcm', '01882295336', '1231564', '2018-05-29 21:00:59');
INSERT INTO `bidder` VALUES ('16', 'Huỳnh Nhựt Minh', 'hn123m@gmail.com', 0xBEB58F2D8B04882F84F09CD86238AF0B, '123123123', '1123123123', '123123', '2018-05-29 22:33:11');
INSERT INTO `bidder` VALUES ('17', 'nghia', 'n@gmail.com', 0xD95BB8183F853E8CF04E34303958A3A4, 'laaa', '09111213123', '123213123', '2018-05-29 21:49:32');
INSERT INTO `bidder` VALUES ('18', 'Huỳnh Nhựt Minh', 'hnminh66@gmail.com', 0xF58C3708861D2E1BE7F5C9126AF59FB4, 'HCm', '01882295336', '123456', '2018-05-29 22:33:16');

-- ----------------------------
-- Table structure for `bidder_auctionproduct`
-- ----------------------------
DROP TABLE IF EXISTS `bidder_auctionproduct`;
CREATE TABLE `bidder_auctionproduct` (
  `id_product` int(10) unsigned NOT NULL,
  `id_bidder` int(10) unsigned NOT NULL,
  `bid_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bidder_auctionproduct
-- ----------------------------
INSERT INTO `bidder_auctionproduct` VALUES ('1', '10', '1000000', '2018-05-29 17:58:38');
INSERT INTO `bidder_auctionproduct` VALUES ('2', '10', '1000000', '2018-05-29 17:58:38');
INSERT INTO `bidder_auctionproduct` VALUES ('3', '10', '1000000', '2018-05-29 17:58:38');
INSERT INTO `bidder_auctionproduct` VALUES ('4', '10', '10000000', '2018-05-29 17:58:38');
INSERT INTO `bidder_auctionproduct` VALUES ('5', '10', '1000000', '2018-05-29 17:58:38');
INSERT INTO `bidder_auctionproduct` VALUES ('6', '10', '1000000', '2018-05-29 17:58:38');
INSERT INTO `bidder_auctionproduct` VALUES ('7', '10', '1000000', '2018-05-29 17:58:38');
INSERT INTO `bidder_auctionproduct` VALUES ('8', '10', '1000000', '2018-05-29 17:58:38');
INSERT INTO `bidder_auctionproduct` VALUES ('9', '10', '1000000', '2018-05-29 17:58:38');
INSERT INTO `bidder_auctionproduct` VALUES ('1', '5', '1200000', '2018-05-29 18:01:02');
INSERT INTO `bidder_auctionproduct` VALUES ('1', '1', '1440000', '2018-05-29 18:01:11');
INSERT INTO `bidder_auctionproduct` VALUES ('1', '4', '1728000', '2018-05-29 18:01:18');
INSERT INTO `bidder_auctionproduct` VALUES ('1', '3', '2073600', '2018-05-29 18:01:46');
INSERT INTO `bidder_auctionproduct` VALUES ('1', '4', '2488320', '2018-05-29 18:02:16');
INSERT INTO `bidder_auctionproduct` VALUES ('1', '1', '2985984', '2018-05-29 18:02:39');
INSERT INTO `bidder_auctionproduct` VALUES ('1', '1', '3583180.8', '2018-05-29 18:02:40');
INSERT INTO `bidder_auctionproduct` VALUES ('1', '4', '4299816.96', '2018-05-29 18:02:50');
INSERT INTO `bidder_auctionproduct` VALUES ('1', '3', '5159780.352', '2018-05-29 18:03:19');
INSERT INTO `bidder_auctionproduct` VALUES ('5', '5', '1200000', '2018-05-29 20:57:32');
INSERT INTO `bidder_auctionproduct` VALUES ('5', '5', '1440000', '2018-05-29 20:57:58');
INSERT INTO `bidder_auctionproduct` VALUES ('1', '17', '6191736.4224', '2018-05-29 21:50:18');
INSERT INTO `bidder_auctionproduct` VALUES ('5', '17', '1728000', '2018-05-29 21:52:16');
INSERT INTO `bidder_auctionproduct` VALUES ('1', '18', '7430083.7068799995', '2018-05-29 22:34:46');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_bidder` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `Soluong` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('20', '3', '106785000', '3');
INSERT INTO `cart` VALUES ('21', '1', '5000000', '1');
INSERT INTO `cart` VALUES ('22', '18', '10000000', '2');

-- ----------------------------
-- Table structure for `cart_detail`
-- ----------------------------
DROP TABLE IF EXISTS `cart_detail`;
CREATE TABLE `cart_detail` (
  `id_cart` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cart_detail
-- ----------------------------
INSERT INTO `cart_detail` VALUES ('21', '1', '5000000', '2018-05-29 18:06:49');
INSERT INTO `cart_detail` VALUES ('22', '1', '5000000', '2018-05-29 22:35:02');
INSERT INTO `cart_detail` VALUES ('22', '1', '5000000', '2018-05-29 22:43:40');

-- ----------------------------
-- Table structure for `order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('31', '17', '1', '5000000');
INSERT INTO `order_detail` VALUES ('32', '18', '3', '7235000');
INSERT INTO `order_detail` VALUES ('33', '18', '12', '14550000');
INSERT INTO `order_detail` VALUES ('34', '18', '18', '85000000');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_bidder` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `madonhang` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('17', '3', '2018-05-29', '5000000', 'Thanh toan online', '2018-05-29 18:03:44', '7149');
INSERT INTO `orders` VALUES ('18', '3', '2018-05-29', '106785000', 'Thanh toan khi nhan hang', '2018-05-29 18:04:23', '8193');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) unsigned DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'OPPO F1 Plus', '1', 'Điện thoại của Sếp', '5000000', 'oppo.jpg', '1', '2018-10-26 03:00:16');
INSERT INTO `products` VALUES ('2', 'Iphone 6s plus', '1', 'Thiết kế Apple iPhone 6s Plus 64GB Chính hãng', '4900000', 'iphone.jpg', '1', '2018-10-25 20:00:16');
INSERT INTO `products` VALUES ('3', 'AppleWatch Series 1', '3', 'Đồng hồ thông minh, chính hãng', '7235000', 'applewatchsr1.jpg', '1', '2018-05-09 19:45:55');
INSERT INTO `products` VALUES ('4', 'Laptop Dell Vostro 5560', '4', 'Máy tính xách tay chính hãng', '14550000', 'laptop-dell.jpg', '1', '2018-05-09 19:49:01');
INSERT INTO `products` VALUES ('5', 'Audi R8', '2', 'Thiết kế sang trọng và đẳng cấp', '1200000000', 'audi.jpg', '1', '2018-05-09 19:58:14');
INSERT INTO `products` VALUES ('6', 'Tai nghe AirPod i7', '7', 'Tai nghe Bluetooth phiên bản mới', '4500000', 'airpod.jpg', '1', '2018-05-09 20:03:54');
INSERT INTO `products` VALUES ('7', 'Máy nghe nhạc Sony', '5', 'Máy nghe nhạc âm thanh nổi mới và chính hãng', '2650000', 'sony-musicplayer.jpg', '1', '2018-05-09 20:05:30');
INSERT INTO `products` VALUES ('8', 'Tranh Les femmes d’Alger', '9', 'Được vẽ và phác thảo bởi Pablo Picasso', '57000000', 'Lesfemmes dAlger.jpg', '1', '2018-05-09 20:07:53');
INSERT INTO `products` VALUES ('9', 'Áo T-shirt Avenger', '6', 'Được thiết kế với chất liệu cotton xịn', '1300000', 'tshirt-avenger.jpg', '1', '2018-05-09 20:09:13');
INSERT INTO `products` VALUES ('10', 'Bình gốm sứ kiểu Nhật Bản', '8', 'Phong cách thiết kế theo xu hướng Nhật Bản', '48902000', 'gom-su.jpg', '1', '2018-05-09 20:18:02');
INSERT INTO `products` VALUES ('11', 'Bát sứ nghìn năm của Trung Quốc', '10', 'chiếc bát sứ có niên đại từ năm 960 đến năm 1127', '157920000', 'bat-su.jpg', '1', '2018-05-09 20:20:38');
INSERT INTO `products` VALUES ('12', 'Iphone 7 PLUS', '1', 'Điện thoại Apple chính hãng', '14550000', 'iphone7LUS.jpg', '1', '2018-05-28 13:17:19');
INSERT INTO `products` VALUES ('13', 'Iphone 8 PLUS', '1', 'Điện thoại Apple chính hãng', '20650000', 'iphone8LUS.jpg', '1', '2018-05-28 13:17:28');
INSERT INTO `products` VALUES ('14', 'SamSung Galaxy S9 edge', '1', 'Điện thoại Samsung chính hãng', '23720000', 'samsunggalaxy.jpg', '1', '2018-05-28 13:17:35');
INSERT INTO `products` VALUES ('15', 'BMW 350i', '2', 'Mẫu thiết kế thời thượng hiện nay', '2547000000', 'BMW350i.jpg', '1', '2018-05-28 13:19:36');
INSERT INTO `products` VALUES ('16', 'Moto BMW HB4', '2', 'Moto chính hãng xuất xứ từ Mỹ', '1565000000', 'MotoBMWHB4.jpg', '1', '2018-05-28 13:21:57');
INSERT INTO `products` VALUES ('17', 'Moto Kawasaki 400i', '2', 'Moto chính hãng xuất xứ ở Nhật', '789350000', 'Motokawasaki.jpg', '1', '2018-05-28 13:23:00');
INSERT INTO `products` VALUES ('18', 'SH mode 350i', '2', 'Honda chính hãng', '85000000', 'SHmode350i.jpg', '1', '2018-05-28 13:23:48');
INSERT INTO `products` VALUES ('19', 'Apple Watch Series 2', '3', 'Apple Watch chính hãng ', '8765000', 'applewatchs2.jpg', '1', '2018-05-28 13:25:15');
INSERT INTO `products` VALUES ('20', 'Gear Watch Series 1', '3', 'Đồng hồ chính hãng', '7999000', 'gearwatchs1.jpg', '1', '2018-05-28 13:26:23');
INSERT INTO `products` VALUES ('21', 'G-shock DW350', '3', 'Đồng hồ chính hãng', '4350000', 'gshock(1).jpg', '1', '2018-05-28 13:27:10');
INSERT INTO `products` VALUES ('23', 'G-shock G103i', '3', 'ĐỒng hồ chính hãng', '3450000', 'gshock(2).jpg', '1', '2018-05-28 13:27:53');
INSERT INTO `products` VALUES ('24', 'Laptop Dell Lattitue6440', '4', 'Laptop chính hãng Dell', '13560000', 'LaptopDell(1).jpg', '1', '2018-05-28 13:29:40');
INSERT INTO `products` VALUES ('25', 'Laptop ASUS-U550', '4', 'Laptop chính hãng ASUS chính hãng', '15670000', 'LaptopASUS.jpg', '1', '2018-05-28 13:30:56');
INSERT INTO `products` VALUES ('26', 'Laptop Dell Inspiron-5650', '4', 'Laptop Dell chính hãng', '14670000', 'LaptopDell(2).jpg', '1', '2018-05-28 13:31:36');
INSERT INTO `products` VALUES ('27', 'Laptop HP-1760', '4', 'Laptop HP chính hãng', '17850000', 'LaptopHP.jpg', '1', '2018-05-28 13:32:38');
INSERT INTO `products` VALUES ('28', 'Máy nghe nhạc Ipod gear 4', '5', 'Apple chính hãng', '6755000', 'ipodgear4.jpg', '1', '2018-05-28 13:33:37');
INSERT INTO `products` VALUES ('29', 'Máy nghe nhạc Bluetooth-s3', '5', 'Máy nghe nhạc chính hãng', '3560000', 'Bluetooth-s3.jpg', '1', '2018-05-28 13:34:33');
INSERT INTO `products` VALUES ('30', 'Máy nghe nhạc JG-540u', '5', 'máy nghe nhạc chính hãng', '5765000', 'LG-540u.jpg', '1', '2018-05-28 13:36:08');
INSERT INTO `products` VALUES ('31', 'Máy nghe nhạc Samsung ', '5', 'máy nghe nhạc chính hãng', '6457000', 'Samsungpod.jpg', '1', '2018-05-28 13:40:09');
INSERT INTO `products` VALUES ('32', 'T-shirt Tummachine', '6', 'cotton 100, xuất xứ VN', '450000', 'tshirttum.jpg', '1', '2018-05-28 13:41:44');
INSERT INTO `products` VALUES ('33', 'Hoodie HNBMG', '6', 'vải may thủ công, xuất xứ VN', '550000', 'HoodieHNBMG.jpg', '1', '2018-05-28 13:43:49');
INSERT INTO `products` VALUES ('35', 'Jean đen 5theway', '6', 'Xuất xứ VN', '455000', 'Jean5theway.jpg', '1', '2018-05-28 13:44:39');
INSERT INTO `products` VALUES ('36', 'Áo phông HFWTHM', '6', 'vải mềm, mặc thoáng, xuất xứ VN', '750000', 'HFWTHM.jpg', '1', '2018-05-28 13:45:40');
INSERT INTO `products` VALUES ('37', 'Tai nghe Sony', '7', 'Tai nghe chính hãng Sony', '2350000', 'Sonyearphone.jpg', '1', '2018-05-28 13:47:24');
INSERT INTO `products` VALUES ('38', 'Tai nghe Samsung', '7', 'Tai nghe chính hãng Samsung', '3540000', 'samsungearphone.jpg', '1', '2018-05-28 13:48:05');
INSERT INTO `products` VALUES ('39', 'Tai nghe LG', '7', 'Tai nghe chính hãng LG', '4600000', 'LGearphone.jpg', '1', '2018-05-28 13:48:39');
INSERT INTO `products` VALUES ('40', 'Tai nghe Bluetooth HP', '7', 'Tai nghe chính hãng', '3600000', 'Bluetoothearphone.jpg', '1', '2018-05-28 13:49:37');
INSERT INTO `products` VALUES ('41', 'Bình gốm Hàn Quốc', '8', 'ĐƯợc làm thủ công 100%', '7850000', 'binhgomHQ.jpg', '1', '2018-05-28 13:50:38');
INSERT INTO `products` VALUES ('42', 'Bát gốm điêu khắc nghệ thuật', '8', 'ĐƯợc làm thủ công 100%', '2560000', 'batgomdieukhac.jpg', '1', '2018-05-28 13:51:27');
INSERT INTO `products` VALUES ('43', 'Lọ sứ Trung Quốc', '8', 'ĐƯợc làm 100% thủ công', '3450000', 'losuTQ.jpg', '1', '2018-05-28 13:53:06');
INSERT INTO `products` VALUES ('44', 'Bình gốm họa tiết nghệ thuật', '8', 'ĐƯợc làm thủ công 100%', '5400000', 'binhgomhoatiet.jpg', '1', '2018-05-28 13:54:24');
INSERT INTO `products` VALUES ('45', 'Tranh của Van Gogh', '9', 'Được chính họa sĩ nổi tiếng Van Gogh phác họa', '75000000', 'tranhvangogh.jpg', '1', '2018-05-28 13:57:41');
INSERT INTO `products` VALUES ('46', 'Tranh Art for Hearts', '9', 'Bức tranh nổi tiếng được họa sĩ Galerie Nguyễn phác họa', '87000000', 'artforhearts.jpg', '1', '2018-05-28 14:00:01');
INSERT INTO `products` VALUES ('47', 'Tranh “Gặp nhau trên nương”', '9', 'Do chính họa sĩ Đỗ Đức phác họa', '130000000', 'tranhgapnhautrennuong.jpg', '1', '2018-05-28 14:01:24');
INSERT INTO `products` VALUES ('48', 'Tranh \"Tiếng thét\"', '9', 'Do chính họa sĩ Edvard Munch phác họa', '160000000', 'tiengthet.jpg', '1', '2018-05-28 14:02:49');
INSERT INTO `products` VALUES ('49', 'Trống Đồng Đông Sơn', '10', 'Là thủy tổ của cội nguồn dân tộc Việt ', '78000000', 'trongdongson.jpg', '1', '2018-05-28 14:12:22');
INSERT INTO `products` VALUES ('50', 'Bình bát tiên', '10', 'Vật đồ đồng, có từ xa xưa', '126000000', 'binhbattien.jpg', '1', '2018-05-28 14:17:01');
INSERT INTO `products` VALUES ('51', 'Tượng Phật di lặc cưỡi cá chép', '10', 'Đồ cổ đã có từ xa xưa', '270000000', 'tuongphat.jpg', '1', '2018-05-28 14:17:53');
INSERT INTO `products` VALUES ('52', 'Chiếc bát mẻ trăm triệu', '10', 'Đồ vật cổ đã có từ xa xưa', '170000000', 'chiecbattramtrieu.jpg', '1', '2018-05-28 14:18:50');

-- ----------------------------
-- Table structure for `seller`
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of seller
-- ----------------------------
INSERT INTO `seller` VALUES ('1', 'Long', 'HCM', '123456', '', '2017-03-24 14:14:32');
INSERT INTO `seller` VALUES ('1', 'Long', 'HCM', '123456', '', '2017-03-24 14:14:32');
INSERT INTO `seller` VALUES ('1', 'Long', 'HCM', '123456', '', '2017-03-24 14:14:32');

-- ----------------------------
-- Table structure for `seller_auctionproduct`
-- ----------------------------
DROP TABLE IF EXISTS `seller_auctionproduct`;
CREATE TABLE `seller_auctionproduct` (
  `id_product` int(10) unsigned NOT NULL,
  `id_seller` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of seller_auctionproduct
-- ----------------------------
INSERT INTO `seller_auctionproduct` VALUES ('1', '1', '2018-10-26 10:00:16');
INSERT INTO `seller_auctionproduct` VALUES ('1', '1', '2018-10-26 10:00:16');
INSERT INTO `seller_auctionproduct` VALUES ('1', '1', '2018-10-26 10:00:16');

-- ----------------------------
-- Table structure for `timebid`
-- ----------------------------
DROP TABLE IF EXISTS `timebid`;
CREATE TABLE `timebid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `id_bidder` int(11) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `giay` int(11) NOT NULL,
  `phut` int(11) NOT NULL,
  `gio` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of timebid
-- ----------------------------
INSERT INTO `timebid` VALUES ('1', '1', null, '2018-05-30 00:19:50', '18', '37', '23');
INSERT INTO `timebid` VALUES ('2', '2', null, '2018-05-29 21:03:30', '48', '58', '23');
INSERT INTO `timebid` VALUES ('3', '3', null, '2018-05-29 18:03:57', '55', '59', '23');
INSERT INTO `timebid` VALUES ('4', '4', null, '2018-05-29 21:01:03', '25', '58', '23');
INSERT INTO `timebid` VALUES ('5', '5', null, '2018-05-29 21:58:58', '11', '55', '23');
INSERT INTO `timebid` VALUES ('6', '6', null, '2018-05-29 22:18:41', '53', '59', '23');
INSERT INTO `timebid` VALUES ('7', '7', null, '2018-05-28 16:00:23', '0', '0', '24');
INSERT INTO `timebid` VALUES ('8', '8', null, '2018-05-28 16:04:18', '0', '0', '24');
INSERT INTO `timebid` VALUES ('9', '9', null, '2018-05-29 21:32:15', '58', '58', '23');
INSERT INTO `timebid` VALUES ('10', '10', null, '2018-05-29 10:59:50', '58', '59', '23');
INSERT INTO `timebid` VALUES ('11', '11', null, '2018-05-28 16:42:06', '0', '0', '24');
INSERT INTO `timebid` VALUES ('12', '12', null, '2018-05-29 18:04:11', '55', '59', '23');
INSERT INTO `timebid` VALUES ('13', '13', null, '2018-05-28 16:42:20', '0', '0', '24');
INSERT INTO `timebid` VALUES ('14', '14', null, '2018-05-28 16:42:29', '0', '0', '24');
INSERT INTO `timebid` VALUES ('15', '15', null, '2018-05-28 16:42:38', '0', '0', '24');
INSERT INTO `timebid` VALUES ('16', '16', null, '2018-05-28 16:42:45', '0', '0', '24');
INSERT INTO `timebid` VALUES ('17', '17', null, '2018-05-28 16:42:57', '0', '0', '24');
INSERT INTO `timebid` VALUES ('18', '18', null, '2018-05-29 18:04:17', '58', '59', '23');
INSERT INTO `timebid` VALUES ('19', '19', null, '2018-05-28 16:43:11', '0', '0', '24');
INSERT INTO `timebid` VALUES ('20', '20', null, '2018-05-29 17:59:02', '57', '59', '23');
INSERT INTO `timebid` VALUES ('21', '21', null, '2018-05-28 16:43:24', '0', '0', '24');
INSERT INTO `timebid` VALUES ('22', '22', null, '2018-05-28 16:43:30', '0', '0', '24');
INSERT INTO `timebid` VALUES ('23', '23', null, '2018-05-29 15:28:29', '52', '51', '23');
INSERT INTO `timebid` VALUES ('24', '24', null, '2018-05-28 16:43:43', '0', '0', '24');
INSERT INTO `timebid` VALUES ('25', '25', null, '2018-05-28 16:43:58', '0', '0', '24');
INSERT INTO `timebid` VALUES ('26', '26', null, '2018-05-28 16:44:05', '0', '0', '24');
INSERT INTO `timebid` VALUES ('27', '27', null, '2018-05-28 16:44:12', '0', '0', '24');
INSERT INTO `timebid` VALUES ('28', '28', null, '2018-05-28 16:44:18', '0', '0', '24');
INSERT INTO `timebid` VALUES ('29', '29', null, '2018-05-28 16:44:25', '0', '0', '24');
INSERT INTO `timebid` VALUES ('30', '30', null, '2018-05-28 16:44:31', '0', '0', '24');
INSERT INTO `timebid` VALUES ('31', '31', null, '2018-05-28 16:44:38', '0', '0', '24');
INSERT INTO `timebid` VALUES ('32', '32', null, '2018-05-29 00:52:45', '56', '59', '23');
INSERT INTO `timebid` VALUES ('33', '33', null, '2018-05-28 16:44:50', '0', '0', '24');
INSERT INTO `timebid` VALUES ('34', '34', null, '2018-05-28 16:44:56', '0', '0', '24');
INSERT INTO `timebid` VALUES ('35', '35', null, '2018-05-28 16:45:03', '0', '0', '24');
INSERT INTO `timebid` VALUES ('36', '36', null, '2018-05-28 16:45:12', '0', '0', '24');
INSERT INTO `timebid` VALUES ('37', '37', null, '2018-05-28 16:45:19', '0', '0', '24');
INSERT INTO `timebid` VALUES ('38', '38', null, '2018-05-28 16:45:25', '0', '0', '24');
INSERT INTO `timebid` VALUES ('39', '39', null, '2018-05-28 16:45:30', '0', '0', '24');
INSERT INTO `timebid` VALUES ('40', '40', null, '2018-05-28 16:45:36', '0', '0', '24');
INSERT INTO `timebid` VALUES ('41', '41', null, '2018-05-28 16:45:43', '0', '0', '24');
INSERT INTO `timebid` VALUES ('42', '42', null, '2018-05-28 16:45:51', '0', '0', '24');
INSERT INTO `timebid` VALUES ('43', '43', null, '2018-05-28 16:45:57', '0', '0', '24');
INSERT INTO `timebid` VALUES ('44', '44', null, '2018-05-28 16:46:04', '0', '0', '24');
INSERT INTO `timebid` VALUES ('45', '45', null, '2018-05-28 16:46:16', '0', '0', '24');
INSERT INTO `timebid` VALUES ('46', '46', null, '2018-05-28 16:46:22', '0', '0', '24');
INSERT INTO `timebid` VALUES ('47', '47', null, '2018-05-28 16:46:28', '0', '0', '24');
INSERT INTO `timebid` VALUES ('48', '48', null, '2018-05-28 16:46:34', '0', '0', '24');
INSERT INTO `timebid` VALUES ('49', '49', null, '2018-05-29 10:11:30', '58', '59', '23');
INSERT INTO `timebid` VALUES ('50', '50', null, '2018-05-29 17:54:05', '21', '59', '23');
INSERT INTO `timebid` VALUES ('51', '51', null, '2018-05-29 20:57:54', '45', '59', '23');
INSERT INTO `timebid` VALUES ('52', '52', null, '2018-05-28 16:47:00', '0', '0', '24');

-- ----------------------------
-- Table structure for `type_products`
-- ----------------------------
DROP TABLE IF EXISTS `type_products`;
CREATE TABLE `type_products` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of type_products
-- ----------------------------
INSERT INTO `type_products` VALUES ('1', 'Điện thoại');
INSERT INTO `type_products` VALUES ('2', 'Xe');
INSERT INTO `type_products` VALUES ('3', 'Đồng hồ');
INSERT INTO `type_products` VALUES ('4', 'Laptop');
INSERT INTO `type_products` VALUES ('5', 'Máy nghe nhạc');
INSERT INTO `type_products` VALUES ('6', 'Thời trang');
INSERT INTO `type_products` VALUES ('7', 'Tai nghe');
INSERT INTO `type_products` VALUES ('8', 'Đồ gốm, sứ');
INSERT INTO `type_products` VALUES ('9', 'Tranh');
INSERT INTO `type_products` VALUES ('10', 'Đồ vật cổ');
