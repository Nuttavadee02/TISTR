-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 14, 2020 at 07:17 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tistr`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(30) NOT NULL,
  `cu_phone` varchar(10) NOT NULL,
  `cu_name` varchar(200) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cu_case` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expertise`
--

CREATE TABLE `expertise` (
  `expertise_ID` varchar(30) NOT NULL,
  `expertise_Name` varchar(1000) DEFAULT NULL,
  `research_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expertise`
--

INSERT INTO `expertise` (`expertise_ID`, `expertise_Name`, `research_ID`) VALUES
('0', 'ไม่ระบุ/ไม่มีความเชี่ยวชาญ', '500'),
('100', 'วิทยาศาสตร์ธรรมชาติ', '300'),
('1000', 'การบริหารงานบุคคล', '100'),
('1001', 'วัสดุศาสตร์', '100'),
('1003', 'การเกษตรและความหลากหลายชีวภาพด้านพืช', '300'),
('1004', 'เทคโนโลยีชีวภาพ', '300'),
('101', 'คณิตศาสตร์และวิทยาการคอมพิวเตอร์', '300'),
('1011', 'Information Technology (IT)', '500'),
('1012', 'ภาษาอังกฤษ (การติดต่อกับต่างประเทศ)', '500'),
('1013', 'วิเคราะห์ออกแบบระบบ/พัฒนาระบบ', '500'),
('1014', 'ความเชี่ยวชาญด้านกฎหมาย', '500'),
('1015', 'การเงินและบัญชี', '500'),
('1016', 'การออกแบบสื่อสาร', '300'),
('1017', 'อุณหภูมิ แสง ความชื้นสัมพัทธ์', '300'),
('1018', 'การวิจัยการตลาด', '300'),
('102', 'วิทยาศาสตร์กายภาพ', '300'),
('1020', 'เกษตรศาสตร์เชิงระบบ', '300'),
('1021', 'วิศวกรรมไฟฟ้า', '300'),
('1022', 'การพัฒนาบุคคล', '300'),
('1023', 'เคมีประยุกต์', '300'),
('1024', 'การพัฒนาและบริหารโครงการถ่ายทอดเทคโนโลยี', '300'),
('1025', 'การตรวจประเมินและรับรองระบบมาตรฐานสากล', '300'),
('1026', 'งานธุรการและสนับสนุนประสานงาน', '300'),
('1027', 'งานพิมพ์', '300'),
('1028', 'การวิเคราะห์และมาตรวิทยา', '300'),
('1029', 'สื่อประชาสัมพันธ์และโสตทัศนูปกรณ์', '300'),
('103', 'วิทยาศาสตร์เคมี', '300'),
('1030', 'การตลาด', '300'),
('1031', 'การบริหารจัดการ', '300'),
('1032', 'การฝึกอบรมและพัฒนาบุคคล', '300'),
('1033', 'การจัดการองค์กร', '300'),
('1034', 'สื่อมัลติมิเดีย', '300'),
('1035', 'เทคโนโลยีอาหาร', '300'),
('1036', 'การจัดการการผลิต', '300'),
('1037', 'วิทยาศาสตร์การอาหาร', '300'),
('1038', 'คหกรรมศาสตร์', '300'),
('1039', 'พืชสวน', '300'),
('104', 'วิทยาศาสตร์ชีวภาพ', '300'),
('1040', 'เทคโนโลยีหลังการเก็บเกี่ยว', '300'),
('1041', 'พืชไร่', '300'),
('1042', 'โรคพืช', '300'),
('1043', 'การจัดการการผลิต', '300'),
('1044', 'เทคโนโลยีอาหาร', '300'),
('1045', 'การวิเคราะห์และจัดทำแผน', '300'),
('1046', 'การจัดการทั่วไป', '300'),
('1047', 'เทคโนโลยีการบรรจุและวัสดุ', '300'),
('1048', 'วิทยาศาสตร์และเทคโนโลยีพอลิเมอร์', '300'),
('1049', 'เกษตร์ศาสตร์ (ปฐพีศาสตร์)', '300'),
('105', 'ปฐพีวิทยา', '300'),
('1050', 'วิทยาศาสตร์และเทคโนโลยีการจัดการทางดิน', '300'),
('1051', 'การบริหารการศึกษา', '300'),
('1052', 'นิเทศศาสตร์ธุรกิจ', '300'),
('1053', 'การบริหารทั่วไป', '300'),
('1054', 'คอมพิวเตอร์ธุรกิจ', '300'),
('1055', 'Packaging', '300'),
('1056', 'วิศวกรรมอุตสาหการ', '300'),
('1057', 'เทคโนโลยีการผลิต', '300'),
('1058', 'วิศวกรรมเคมีชีวภาพ', '300'),
('1059', 'พัฒนสังคมศาสตร์', '300'),
('106', 'วิทยาศาสตร์สิ่งแวดล้อม', '300'),
('1060', 'การจัดการธุรกิจเกษตรและอุตสาหกรรมอาหาร', '200'),
('1061', 'เทคโนโลยีการบริหาร', '200'),
('1062', 'Post-Harvest&Food Process Eng.', '200'),
('1063', 'วิทยาศาสตร์และเทคโนโลยีการอาหาร', '200'),
('1064', 'ภาพพิมพ์', '200'),
('1065', 'เคมี', '200'),
('1066', 'คอมพิวเตอร์', '200'),
('1067', 'ชีวะเคมี', '200'),
('1068', 'วัสดุศาสตร์และวิศวกรรม', '200'),
('1069', 'การจัดการ', '200'),
('1070', 'วิทยาศาสตร์ทั่วไป', '200'),
('1071', 'ภาษาไทย', '200'),
('1072', 'การสื่อสารเพื่อการพัฒนา', '200'),
('1073', 'เทคโนโลยีขนถ่ายวัสดุ', '200'),
('1074', 'เทคโนโลยีอิเล็กทรอนิกส์', '200'),
('1075', 'Production Engineering', '200'),
('1076', 'เทคโนโลยีอุตสาหกรรมเกษตร', '200'),
('1077', 'ช่างอุตสาหกรรม', '200'),
('1078', 'ชีววิทยา', '200'),
('1079', 'เทคโนโลยีอุตสาหกรรม', '200'),
('1080', 'วิศวกรรมชีวภาพ', '200'),
('1081', 'วิทยาศาสตร์และเทคโนโลยีสิ่งแวดล้อม', '200'),
('1082', 'เทคโนโลยีเซรามิกส์', '200'),
('1083', 'บริหารธุรกิจ', '200'),
('1084', 'ธุรกิจการเกษตร', '200'),
('1085', 'ภาษาอังกฤษเพื่อการสื่อสาร', '200'),
('1086', 'รัฐศาสตร์', '100'),
('1087', 'ผ้าและเครื่องแต่งกาย', '100'),
('1088', 'การโฆษณา', '100'),
('1089', 'บริหารทั่วไป', '100'),
('1090', 'การจัดการทรัพยากรมนุษย์', '200'),
('1091', 'เทคโนโลยีสารสนเทศการศึกษา', '100'),
('1092', 'การสื่อสารพัฒนาการ', '100'),
('1093', 'เทคโนโลยีสารสนเทศ', '100'),
('1094', 'เคมีอุตสาหกรรม-เครื่องมือวิเคราะห์', '200'),
('1095', 'ฟิสิกส์ประยุกต์', '100'),
('1096', 'พลศึกษา', '200'),
('1097', 'เคมีอุตสาหกรรม', '100'),
('1098', 'ช่างเทคนิคโลหะ', '100'),
('1099', 'เทคนิคอุตสาหกรรม', '100'),
('1100', 'ช่างกลโรงงาน', '100'),
('1101', 'บัญชี', '100'),
('1102', 'จุลชีววิทยา', '100'),
('1103', 'เภสัชศาสตร์ชีวภาพ (ชีวเคมี)', '100'),
('1104', 'พืชศาสตร์', '100'),
('1105', 'เทคโนโลยีทางทะเล', '100'),
('1106', 'การปกครอง', '100'),
('1107', 'สื่อสารมวลชน', '100'),
('1108', 'การบริหารธุรกิจการตลาด', '100'),
('1109', 'อุตสาหกรรมบริการ', '100'),
('1110', 'การเงินและการธนาคาร', '100'),
('1111', 'ระบบสารสนเทศทางคอมพิวเตอร์', '200'),
('1112', 'ศิลปกรรม', '100'),
('1113', 'ธุรกิจระหว่างประเทศ', '200'),
('1114', 'การจัดการสารสนเทศคอมพิวเตอร์', '200'),
('1115', 'การถ่ายภาพดิจิทัลและการออกแบบสื่อกราฟิก', '100'),
('1116', 'การออกแบบนิเทศศิลป์', '200'),
('1117', 'วิทยาการคอมพิวเตอร์', '100'),
('1118', 'ส่งเสริมการเกษตร', '200'),
('1119', 'ประติมากรรมสากล', '200'),
('1120', 'นิเทศศิลป์', '200'),
('1121', 'นิเทศศาสตร์', '100'),
('1122', 'เทคโนโลยีโทรทัศน์', '200'),
('1123', 'เทคโนโลยีอุตสาหกรรมชีวภาพ', '100'),
('1124', 'วิศวกรรมเครื่องจักรกลเกษตร', '100'),
('1125', 'วิศวกรรมอาหาร', '100'),
('1126', 'ผลิตภัณฑ์ประมง', '100'),
('1127', 'เทคโนโลยีและนวัตกรรมการศึกษา', '100'),
('1128', 'เคมีอินทรีย์', '100'),
('1129', 'Toxicology', '100'),
('1130', 'เทคโนโลยีไฟฟ้าอุตสาหกรรม', '100'),
('1131', 'การประชาสัมพันธ์', '100'),
('1132', 'เทคโนโลยีและสื่อการศึกษา', '100'),
('1133', 'เทคโนโลยีโทรทัศน์และวิทยุกระจายเสียง', '100'),
('1134', 'นิติศาสตร์', '200'),
('1135', 'เภสัชศาสตร์', '100'),
('1136', 'Phytochemical', '100'),
('1137', 'จุลชีววิทยาทางอุตสาหกรรม', '100'),
('1138', 'Pharmacology and Toxicology', '100'),
('1139', 'เภสัชวิทยาทางสัตวแพทยศาสตร์', '100'),
('1140', 'พยาธิชีววิทยา', '200'),
('1141', 'เภสัชวิทยา', '200'),
('1142', 'เภสัชศาสตร์ชีวภาพ', '200'),
('1143', 'พิษวิทยา', '200'),
('1144', 'วิทยาการทางเภสัชศาสตร์', '200'),
('1145', 'วิศวเภสัชกรรม', '200'),
('1146', 'ทันตชีววัสดุศาสตร์', '200'),
('1147', 'การจัดการธุรกิจอาหาร', '200'),
('1148', 'สัตวศาสตร์', '200'),
('1149', 'Agricultural Chemistry', '200'),
('1150', 'Molecular Biology', '200'),
('1151', 'Horticulture', '200'),
('1152', 'อุตสาหกรรมศิลป์', '200'),
('1153', 'Bioresources Science', '200'),
('1154', 'วิทยาศาสตร์การอาหารและเทคโนโลยี', '200'),
('1155', 'Biotechnology and Biochemistry', '200'),
('1156', 'เภสัชเคมีและผลิตภัณฑ์ธรรมชาติ', '200'),
('1157', 'ช่างยนต์', '200'),
('1158', 'ส่งเสริมและพัฒนาการเกษตร', '200'),
('1159', 'Chemical Engineering & Analytical Science', '200'),
('1160', 'ช่างไฟฟ้ากำลัง', '200'),
('1161', 'เทคโนโลยีสารสนเทศธุรกิจ', '200'),
('1162', 'Applied Natural Science', '200'),
('1163', 'ปิโตรเคมีและวิทยาศาสตร์พอลิเมอร์', '200'),
('1164', 'พันธุศาสตร์', '200'),
('1165', 'Pharmaceutical Science', '200'),
('1166', 'Civil & Environmental Engin.', '200'),
('1167', 'รัฐประศาสนศาสตร์', '200'),
('1168', 'เกษตรศาสตร์', '200'),
('1169', 'ช่างเชื่อมและโลหะแผ่น', '200'),
('1170', 'Environment', '200'),
('1171', 'Science of Engineer', '200'),
('1172', 'ฟิสิกส์', '200'),
('1173', 'พลังงานทดแทน', '200'),
('1174', 'Chemical and Environmental Eng.', '300'),
('1175', 'เทคโนโลยีไฟฟ้าและอุตสาหกรรม', '100'),
('1176', 'การจัดการสิ่งแวดล้อม', '100'),
('1177', 'Energy', '100'),
('1178', 'Animal and Plant Sciences', '200'),
('1179', 'การจัดสิ่งแวดล้อมอุตสาหกรรม', '100'),
('1180', 'พัฒนาผลิตภัณฑ์อุตสาหกรรมเกษตร', '100'),
('1181', 'ชีววิทยาประยุกต์', '100'),
('1182', 'การใช้ที่ดินและการจัดการทรัพยากรธรรมชาติอย่างยั่งย', '100'),
('1183', 'Advanced Manufacturing Technology', '100'),
('1184', 'Geoenvironmental Sciences', '100'),
('1185', 'Environmental Science', '100'),
('1186', 'การจัดการพลังงาน', '100'),
('1187', 'วนศาสตร์', '100'),
('1188', 'วิทยาศาสตร์สภาวะสิ่งแวดล้อม', '100'),
('1189', 'ภูมิสถาปัตยกรรม', '100'),
('1190', 'เทคโนโลยีเชื้อเพลิง', '100'),
('1191', 'Materials Science', '200'),
('1192', 'เทคโนโลยีเครื่องประดับ', '200'),
('1193', 'วิศวกรรมเคมีและกระบวนการ', '100'),
('1194', 'วิทยาการและวิศวกรรมพอลิเมอร์', '200'),
('1195', 'ระบบสารสนเทศภูมิศาสตร์', '100'),
('1196', 'สิ่งแวดล้อมทั่วไป', '100'),
('1197', 'Metallurgical and Materials Engineering', '100'),
('1198', 'Ceramic&Materials Science&Engineering', '100'),
('1199', 'Chemistry', '100'),
('1200', 'เศรษฐศาสตร์เกษตร', '100'),
('1201', 'Metallurgy and Ceramics Science', '100'),
('1202', 'เคมีวิเคราะห์และเคมีอนินทรีย์ประยุกต์', '100'),
('1203', 'วิทยาศาสตร์และวิศวกรรมวัสดุ', '100'),
('1204', 'วิศวกรรมการเกษตร', '100'),
('1205', 'Manufacturing Eng.', '100'),
('1206', 'อุตสาหกรรมศึกษา', '100'),
('1207', 'Engineering', '100'),
('1208', 'เทคโนโลยีการศึกษา', '100'),
('1209', 'Industrial and Management Engineering', '500'),
('1210', 'โพลิเมอร์ประยุกต์และเทคโนโลยีสิ่งทอ', '500'),
('1211', 'วิศวกรรมการผลิต', '500'),
('1212', 'วิศวกรรมไฟฟ้าและคอมพิวเตอร์', '500'),
('1213', 'วิศวกรรมพลาสติก', '200'),
('1214', 'วิศวกรรมเครื่องจักรกล', '500'),
('1215', 'วิศวกรรมแมคคาทรอนิกส์', '200'),
('1216', 'การจัดการภาครัฐและภาคเอกชน', '200'),
('1217', 'Biotechnology', '200'),
('1218', 'อนุพันธุศาสตร์และพันธุวิศวกรรมศาสตร์', '200'),
('1219', 'ทรัพยากรที่ดินและสิ่งแวดล้อม', '200'),
('1220', 'Materials Processing', '200'),
('1221', 'การจัดการทรัพยากร', '500'),
('1222', 'คอมพิวเตอร์ศึกษา', '500'),
('1223', 'เศรษฐ์ศาสตร์ธุรกิจ', '500'),
('1224', 'จิตวิทยาอุตสาหกรรมและองค์การ', '500'),
('1225', 'สถิติประยุกต์', '500'),
('1226', 'Economics', '500'),
('1227', 'Science and Technology Policy', '500'),
('1228', 'การจัดการสำหรับนักบริหาร', '500'),
('1229', 'วิทยาศาสตร์พอลิเมอร์', '500'),
('1230', 'ช่างก่อสร้าง', '500'),
('1231', 'การบัญชี', '500'),
('1232', 'กีฏวิทยา', '500'),
('1233', 'วิทยาการพืช', '500'),
('1234', 'ไฟฟ้ากำลัง', '500'),
('1235', 'ประสาทวิทยาศาสตร์', '500'),
('1236', 'ชีวเวชศาสตร์', '500'),
('1237', 'Advanced Manufacturing Systems', '500'),
('1238', 'อิเล็กทรอนิกส์', '500'),
('1239', 'Development of a Quality Management Model for Thai', '200'),
('1240', 'Sound and Vibration', '500'),
('1241', 'การจัดการเทคโนโลยีและนวัตกรรม', '500'),
('1242', 'มาตรวิทยา', '200'),
('1243', 'วิศวกรรมการวัดคุม', '500'),
('1244', 'วิศวกรรมสารสนเทศ', '100'),
('1245', 'เทคโนโลยีและการจัดการความปลอดภัยของอาหาร', '200'),
('1246', 'ช่างโลหะ', '300'),
('1247', 'Technology Management', '400'),
('1248', 'เทคโนโลยีอุณหภาพ', '500'),
('1249', 'โพลิเมอร์', '500'),
('1250', 'วิศวกรรมการวัดและการควบคุม', '500'),
('1251', 'การเงิน', '500'),
('1252', 'การออกแบบอุตสาหกรรม', '200'),
('1253', 'วิทยาศาสตร์เครื่องสำอาง', '200'),
('1254', 'เทคโนโลยีชีวภาพทางการเกษตร', '200'),
('1255', 'งานบริการด้านที่พักและงานครัว', '200'),
('1256', 'งานทั่วไป', '200'),
('1257', 'งานป้องกันรักษาป่า', '200'),
('1258', 'Ceramic Science and Engineering', '200'),
('1259', 'ภาษาอังกฤษธุรกิจ', '200'),
('1260', 'การบริหารทรัพยากรมนุษย์', '200'),
('1261', 'ช่างเทคนิคการผลิต', '200'),
('1262', 'พืชศาสตร์-พืชสวน', '200'),
('1263', 'การสื่อสารภาษาอังกฤษเชิงธุรกิจ', '300'),
('1264', 'ออกแบบผลิตภัณฑ์', '300'),
('1265', 'ประชาการศึกษา', '200'),
('1266', 'ประชากรศึกษา', '200'),
('1267', 'สารสนเทศศึกษา', '300'),
('1268', 'การจัดการทรัพยากรเกษตรและสิ่งแวดล้อม', '300'),
('1269', 'เทคโนโลยีวิศวกรรมการทำความเย็นและการปรับอากาศ', '300'),
('1270', 'อาชีวอนามัยและความปลอดภัย', '300'),
('1271', 'การจัดการลุ่มน้ำ และสิ่งแวดล้อม', '300'),
('1272', 'สถิติ', '300'),
('1273', 'อาหารและโภชนาการ', '300'),
('1274', 'บริหารงานบุคคล', '300'),
('1275', 'การจัดการสำนักงาน', '300'),
('1276', 'วิศวกรรมเคมีและสิ่งแวดล้อม', '300'),
('1277', 'วิศวกรรมเคมีสิ่งทอ', '300'),
('1278', 'วิศวกรรมกระบวนการชีวภาพ', '300'),
('1279', 'ภาษาอังกฤษ', '300'),
('1280', 'การจัดการการบิน', '300'),
('1281', 'วิศวกรรมสิ่งทอ', '300'),
('1282', 'วิศวกรรมเครื่องกล (โลหการ)', '300'),
('200', 'วิศวกรรรมและเทคโนโลยี', '300'),
('211', 'วิศวกรรมโยธา', '300'),
('212', 'วิศวกรรมไฟฟ้า อิเล็กทรอนิกส์', '300'),
('213', 'เครื่องใช้ไฟฟ้าและอิเล็กทรอนิกส์', '300'),
('214', 'เทคโนโลยีอิเล็กทรอนิกส์และคอมพิวเตอร์', '300'),
('215', 'วิศวกรรมวัสดุ', '200'),
('216', 'เทคโนโลยีโลหะและวัสดุ', '300'),
('217', 'วิศวกรรมเคมี', '300'),
('218', 'วิศวกรรมเครื่องกล', '300'),
('219', 'อาหารและอาหารสัตว์', '300'),
('220', 'สิ่งทอและเครื่องนุ่งห่ม', '300'),
('221', 'รองเท้าและเครื่องหนัง', '300'),
('222', 'ไม้และเครื่องเรือน', '300'),
('223', 'ยางพาราและผลิตภัณฑ์ยาง', '300'),
('224', 'ผลิตภัณฑ์พลาสติก', '300'),
('225', 'เซรามิกส์และแก้ว', '300'),
('226', 'ยานยนต์และชิ้นส่วน', '300'),
('227', 'อัญมนีและชิ้นส่วน', '300'),
('228', 'เหล็กและเหล็กกล้า', '300'),
('229', 'เยื่อและกระดาษ', '300'),
('230', 'เทคโนโลยีการเกษตร', '300'),
('231', 'เทคโนโลยีชีวภาพและพันธุวิศวกรรม', '300'),
('232', 'เทคโนโลยีการบรรจุภัณฑ์', '300'),
('233', 'วิศวกรรมนิวเคลียร์', '300'),
('234', 'เทคโนโลยีนิวเคลียร์', '300'),
('235', 'การบินและอวกาศ', '300'),
('236', 'วิศวกรรมสุขาภิบาล', '300'),
('237', 'วิศวกรรมสิ่งแวดล้อม', '300'),
('238', 'เทคโนโลยีสิ่งแวดล้อม', '300'),
('239', 'สุขาภิบาลสิ่งแวดล้อม', '300'),
('240', 'เทคโนโลยีพลังงาน', '300'),
('241', 'ปิโตรเคมี', '300'),
('300', 'วิทยาศาสตร์การแพทย์', '300'),
('351', 'การแพทย์พื้นฐาน', '300'),
('352', 'ยางและเคมีภัณฑ์', '300'),
('353', 'เทคโนโลยีเภสัชและผลิตภัณธ์ธรรมชาติ', '300'),
('354', 'การแพทย์คลินิก', '300'),
('355', 'วิทยาศาสตร์สุขภาพ', '300'),
('400', 'วิทยาศาสตร์การเกษตร', '300'),
('461', 'เกษตร', '300'),
('462', 'ป่าไม้', '300'),
('463', 'ประมง', '300'),
('464', 'สัตวแพทย์', '300'),
('500', 'สังคมศาสตร์', '300'),
('571', 'จิตวิทยา', '300'),
('572', 'เศรษฐศาสตร์', '300'),
('573', 'ศึกษาศาสตร์', '300'),
('600', 'มนุษยศาสตร์', '100'),
('681', 'ประวัติศาสตร์', '100'),
('682', 'ภาษาศาสตร์และอักษรศาสตร์', '100'),
('683', 'มนุษยศาสตร์ อื่น ๆ', '100');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` enum('ADMIN','USER') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `username`, `password`, `status`) VALUES
(1, 'Wattana_Stu', '654321@tistr', 'ADMIN'),
(2, 'wattana', '123456', 'ADMIN'),
(3, 'test', 'test', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `research_ID` varchar(30) NOT NULL,
  `research_Name` varchar(1000) DEFAULT NULL,
  `research_Img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`research_ID`, `research_Name`, `research_Img`) VALUES
('100', 'มดดำ', '001.png'),
('200', 'เติ้ล', '002.png'),
('300', 'ชัช', '003.png'),
('400', 'ปรายฟ้า', '004.png'),
('500', 'ปอ', '005.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `expertise`
--
ALTER TABLE `expertise`
  ADD PRIMARY KEY (`expertise_ID`),
  ADD KEY `research_ID` (`research_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`research_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `expertise`
--
ALTER TABLE `expertise`
  ADD CONSTRAINT `expertise_ibfk_1` FOREIGN KEY (`research_ID`) REFERENCES `research` (`research_ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
