/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100121
Source Host           : localhost:3306
Source Database       : hackjak

Target Server Type    : MYSQL
Target Server Version : 100121
File Encoding         : 65001

Date: 2017-12-08 10:10:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ambulance
-- ----------------------------
DROP TABLE IF EXISTS `ambulance`;
CREATE TABLE `ambulance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_puskesmas` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ambulance
-- ----------------------------

-- ----------------------------
-- Table structure for jumlah_penyakit
-- ----------------------------
DROP TABLE IF EXISTS `jumlah_penyakit`;
CREATE TABLE `jumlah_penyakit` (
  `tahun` varchar(255) DEFAULT NULL,
  `penyakit` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jumlah_penyakit
-- ----------------------------
INSERT INTO `jumlah_penyakit` VALUES ('2007', 'Malaria', '77');
INSERT INTO `jumlah_penyakit` VALUES ('2007', 'Gastro Enteritis', '213247');
INSERT INTO `jumlah_penyakit` VALUES ('2007', 'Kholera/Cholera', '1028');
INSERT INTO `jumlah_penyakit` VALUES ('2007', 'Kusta/Leprosy', '489');
INSERT INTO `jumlah_penyakit` VALUES ('2007', 'TBC/Tuberculosis', '35240');
INSERT INTO `jumlah_penyakit` VALUES ('2007', 'Demam Berdarah DHF', '33828');
INSERT INTO `jumlah_penyakit` VALUES ('2007', 'Radang Tenggorokan Dipteria', '2');
INSERT INTO `jumlah_penyakit` VALUES ('2008', 'Malaria', '68');
INSERT INTO `jumlah_penyakit` VALUES ('2008', 'Gastro Enteritis', '9593');
INSERT INTO `jumlah_penyakit` VALUES ('2008', 'Kholera/Cholera', '0');
INSERT INTO `jumlah_penyakit` VALUES ('2008', 'Kusta/Leprosy', '901');
INSERT INTO `jumlah_penyakit` VALUES ('2008', 'TBC/Tuberculosis', '22506');
INSERT INTO `jumlah_penyakit` VALUES ('2008', 'Demam Berdarah DHF', '28373');
INSERT INTO `jumlah_penyakit` VALUES ('2008', 'Radang Tenggorokan Dipteria', '9');
INSERT INTO `jumlah_penyakit` VALUES ('2009', 'Malaria', '71');
INSERT INTO `jumlah_penyakit` VALUES ('2009', 'Gastro Enteritis', '10349');
INSERT INTO `jumlah_penyakit` VALUES ('2009', 'Kholera/Cholera', '0');
INSERT INTO `jumlah_penyakit` VALUES ('2009', 'Kusta/Leprosy', '0');
INSERT INTO `jumlah_penyakit` VALUES ('2009', 'TBC/Tuberculosis', '0');
INSERT INTO `jumlah_penyakit` VALUES ('2009', 'Demam Berdarah DHF', '28214');
INSERT INTO `jumlah_penyakit` VALUES ('2009', 'Radang Tenggorokan Dipteria', '6');
INSERT INTO `jumlah_penyakit` VALUES ('2010', 'Malaria', '103');
INSERT INTO `jumlah_penyakit` VALUES ('2010', 'Gastro Enteritis', '184341');
INSERT INTO `jumlah_penyakit` VALUES ('2010', 'Kholera/Cholera', '0');
INSERT INTO `jumlah_penyakit` VALUES ('2010', 'Kusta/Leprosy', '263');
INSERT INTO `jumlah_penyakit` VALUES ('2010', 'TBC/Tuberculosis', '5788');
INSERT INTO `jumlah_penyakit` VALUES ('2010', 'Demam Berdarah DHF', '21151');
INSERT INTO `jumlah_penyakit` VALUES ('2010', 'Radang Tenggorokan Dipteria', '5');

-- ----------------------------
-- Table structure for mst_puskesmas
-- ----------------------------
DROP TABLE IF EXISTS `mst_puskesmas`;
CREATE TABLE `mst_puskesmas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_puskesmas
-- ----------------------------
INSERT INTO `mst_puskesmas` VALUES ('1', 'PUSKESMAS KECAMATAN JAGAKARSA', 'Jl. M. Khafi', '-6.351944', '106.814163', '7864707', '7864707', 'puskesmas_kecamatanjagakarsa@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('2', 'PUSKESMAS KECAMATAN PASAR MINGGU', 'Jl. Raya Kebagusan No.4', '-6.320833', '106.825554', '7811265', '7811265', 'pkmpasarminggu@gmail.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('3', 'PUSKESMAS KECAMATAN CILANDAK', 'Jl. Komp. BNI  46 No. 57 Jak.Sel.', '-6.286667', '106.793053', '7661613', '7661613', 'pkmcilandak@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('4', 'PUSKESMAS KECAMATAN PESANGGRAHAN', 'Jl. Cenek I/1', '-6.245278', '106.752777', '7356087', '7356085', 'pkmpesanggrahan@yahoo.co.id ', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('5', 'PUSKESMAS KECAMATAN KEBAYORAN LAMA', 'Jl. Ciputat Raya Rt.005/06', '-6.249722', '106.778053', '7245439', '7245439', 'puskeckbyl_08@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('6', 'PUSKESMAS KECAMATAN KEBAYORAN BARU', 'Jl. Iskandarsyah Raya No. 105', '-6.247222', '106.805557', '7220274', '7220274', 'pkm_kebayoranbaru@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('7', 'PUSKESMAS KECAMATAN MAMPANG PRAPATAN', 'Jl. Kapten Tendean', '-6.271389', '106.819725', '79192187', '79192187', 'puskesmasmampang@gmail.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('8', 'PUSKESMAS KECAMATAN PANCORAN', 'Jl. Potlot II/6 Duren Tiga', '-6.255278', '106.839165', '79183517', '79183517', 'puskesmas_pancoran@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('9', 'PUSKESMAS KECAMATAN TEBET', 'Jl. Prof.Dr.Soepomo, SH No. 54 Jaksel', '-6.235556', '106.856667', '8314955', '8296918', 'puskesmastebet@ymail.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('10', 'PUSKESMAS KECAMATAN SETIABUDI', 'Jl. Halimun No. 13 Guntur Jak-Sel', '-6.206667', '106.833611', '8295529', '8295529', 'pkmsetiabudi@gmail.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('11', 'PUSKESMAS KECAMATAN PASAR REBO', 'Jl. Raya Kalisari', '-6.339167', '106.861389', '87711248', '87711248', 'pkc_pasarrebo@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('12', 'PUSKESMAS KECAMATAN CIRACAS', 'Jalan Raya  Lapangan Tembak', '-6.311111', '106.874443', '8718995', '8718995', 'pkmciracas@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('13', 'PUSKESMAS KECAMATAN CIPAYUNG', 'Jalan Monumen Pancasila Sakti', '-6.291944', '106.906113', '87792277', '87792277', 'cipayungpuskesmas@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('14', 'PUSKESMAS KECAMATAN MAKASAR', 'Jl. Pusdiklat Depnaker', '-6.282222', '106.878059', '80879045', '80879045', 'puskesmas.makasar@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('15', 'PUSKESMAS KECAMATAN KRAMAT JATI', 'Jalan Raya Impres No. 48', '-6.269722', '106.868057', '87793604', '87793604', 'puskesmaskramatjati@ymail.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('16', 'PUSKESMAS KECAMATAN JATINEGARA', 'Jl. Matraman Raya No. 220', '-6.213889', '106.862778', '8195146', '8195146', 'pkmjtg@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('17', 'PUSKESMAS KECAMATAN DUREN SAWIT', 'JL.H. Dogol No. 15 A Duren Sawit', '-6.241944', '106.910835', '86601065', '86601065', 'pusk_dursa@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('18', 'PUSKESMAS KECAMATAN CAKUNG', 'Jl. Raya Bekasi Km.18', '-6.198056', '106.905281', '4608446', '4608446', 'pkmcakung@gmail.com ', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('19', 'PUSKESMAS KECAMATAN PULO GADUNG', 'Jl. Kayu Putih Selatan III', '-6.186389', '106.895554', '4890522', '4890522', 'pulogadung@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('20', 'PUSKESMAS KECAMATAN MATRAMAN', 'Jl. Kebon Kelapa Raya No.29', '-6.206111', '106.85611', '8581957', '8581957', 'puskesmas.matraman@gmail.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('21', 'PUSKESMAS KECAMATAN TANAH ABANG', 'Jl. KH Mas Mansyur  No. 30', '-6.191111', '106.81472', '31903174', '31903174', 'pkm_tanahabang@gmail.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('22', 'PUSKESMAS KECAMATAN MENTENG', 'Jl. Pegangsaan Barat 14', '-6.199444', '106.84111', '31935836', '31904965', 'pkm_kecmenteng@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('23', 'PUSKESMAS KECAMATAN SENEN', 'Jl. Kramat VII', '-6.189722', '106.842781', '3145194', '3145194', 'pkm_senen@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('24', 'PUSKESMAS KECAMATAN JOHAR BARU', 'Jalan Tanah Tinggi XII', '-6.181944', '106.861664', '4246359', '4246359', 'pkm.joharbaru@yahoo.com    ', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('25', 'PUSKESMAS KECAMATAN CEMPAKA PUTIH', 'Jl. Rawasari Selatan Nomor 1', '-6.175556', '106.861115', '42801340', '42801341', 'puskesmaskecputih@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('26', 'PUSKESMAS KECAMATAN KEMAYORAN', 'Jl. Serdang Baru I RT.006/05', '-6.171389', '106.855553', '42801847', '42801846', 'puskesmaskemayoran@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('27', 'PUSKESMAS KECAMATAN SAWAH BESAR', 'Jl. Dwi Warna 6/8', '-6.137778', '106.826942', '6012240', '6012240', 'puskesmas_sawahbesar@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('28', 'PUSKESMAS KECAMATAN GAMBIR', 'Jl.Tanah Abang 1/10', '-6.170556', '106.819168', '3810051', '3844256', 'pkmgambir@gmail.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('29', 'PUSKESMAS KECAMATAN KEMBANGAN', 'Jl. Topas Blok F2 Taman Meruya', '-6.214444', '106.724167', '5870834', '5870834', 'pkm_kembangan@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('30', 'PUSKESMAS KECAMATAN KEBON JERUK', 'Jl. Kebon Jeruk No. 2', '-6.198889', '106.765282', '5482367', '5482367', 'pkm_kjeruk@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('31', 'PUSKESMAS KECAMATAN PAL MERAH', 'Jl. Palmerah Barat No.120', '-6.208333', '106.788612', '5482370', '5482370', 'pkm_palmerah@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('32', 'PUSKESMAS KECAMATAN GROGOL PETAMBURAN', 'Wijaya III Komp. Duta Mas', '-6.151111', '106.779724', '564 8379', '564 8379', 'petpkc_lo@yahoo.com ', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('33', 'PUSKESMAS KECAMATAN TAMBORA', 'Krendang Utara No. 4', '-6.148056', '106.804726', '6318822', '6318822', 'pkm_kec_tambora@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('34', 'PUSKESMAS KECAMATAN TAMANSARI', 'Jl. Madu No.10 Rt.003/03', '-6.143889', '106.819168', '6297752', '6297752', 'pkc_tamansari@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('35', 'PUSKESMAS KECAMATAN CENGKARENG', 'Jl. Raya kamal No.2 Cengkareng', '-6.144444', '106.728615', '6191756', '6191756', 'puskesmascengkareng@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('36', 'PUSKESMAS KECAMATAN KALIDERES', 'Jalan Satu Maret', '-6.12677', '106.7162256', '54390576', '54390576', 'pkc_kalideres@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('37', 'PUSKESMAS KECAMATAN PENJARINGAN', 'Jl. Raya Teluk Gong  No. 2', '-6.138333', '106.781113', '66690881', '66690881', 'pkm_penji@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('38', 'PUSKESMAS KECAMATAN PADEMANGAN', 'Jl. Budi Mulia Nomor 11', '-6.136944', '106.843613', '6452346', '6452346', 'pkc_pademangan@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('39', 'PUSKESMAS KECAMATAN TANJUNG PRIOK', 'Jl. Bugis No. 63', '-6.116111', '106.889168', '43930348', '43908923', 'pkmtgpriok@yahoo.co.id ', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('40', 'PUSKESMAS KECAMATAN KOJA', 'Jl. Wayang Permai Nomor 39', '-6.119444', '106.919441', '435 8809', '435 8809', 'pkm_koja@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('41', 'PUSKESMAS KECAMATAN KELAPA GADING', 'Jl. Gadang Nomor 1', '-6.155915', '106.904785', '45853300', '45853301', 'puskeskec_gading@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('42', 'PUSKESMAS KECAMATAN CILINCING', 'Jl. Madya Kebantenan Nomor 4', '-6.148333', '106.924446', '4416367', '4412889', 'puskesmas.cilincing@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('43', 'Pusk. Kec. Kep.Seribu Utara', 'Pulau Kelapa', '-5.654261', '106.567818', '37175900', '37175900', 'puskesmaspulau@yahoo.co.id', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('44', 'Pusk. Kec. Kep.Seribu Selatan', 'Pulau Tidung', '-5.798503', '106.498444', '', '5447381', 'pkm.1000selatan@yahoo.com', null, 'puskesmas');
INSERT INTO `mst_puskesmas` VALUES ('45', 'Tarakan', 'Jl. Kyai Caringin No. 7', '-6.171333', '106.810013', '3503150', '3503412', 'kusmedi@gmail.com, rsd_tarakan@yahoo.com', 'www.rstarakanjakarta.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('46', 'DR. Mintohardjo', 'Jl. Bendungan Hilir No. 17', '-6.210848', '106.811996', '5703081 - 85', '5711997', 'rsalmintohardjo@ymail.com', 'www.rsaldrmintohardjo.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('47', 'Sahid Sahirman', 'Jl. Jenderal Sudirman Kavling 86', '-6.209445', '106.819382', '5704591', '5705505', 'information@ssmh.co.id', 'www.ssmh.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('48', 'PGI Cikini', 'Jl. Raden Saleh No. 40 ', '-6.19127', '106.841408', '38997777', '31924663', 'tedjowa@yahoo.com, mail@rscikini.com', ' www.rscikini.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('49', 'Menteng Mitra Afia', 'Jl. Kali Pasir  No. 9', '-6.187353', '106.839081', '3154050', '3146309', 'panela_ramadita@yahoo.com, info@rsmentengmitraafia.com', 'www.rsmentengmitraafia.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('50', 'Abdi Waluyo', 'Jalan  HOS Cokroaminoto  Nomor 31-33', '-6.189762', '106.8293', '3144989', '31930866', 'dr.migot@yahoo.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('51', 'Bunda Jakarta', 'Jl. Teuku Cik Ditiro No. 21', '-6.196026', '106.836517', '3909692', '3101077', 'bundahospital@bunda.co.id', 'www.bunda.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('52', 'Gatot Soebroto', 'Jl. Dr. Abdul Rachman Saleh 24', '-6.176608', '106.836861', '3441008', '3440693', 'rspadgatsu@pdpersi.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('53', 'Dr. Cipto Mangunkusumo', 'Jl. Diponegoro No. 71', '-6.196762', '106.846886', '3918301', '3148991', 'perbendaharaan.rscm@yahoo.com, dir_rscm@yahoo.com', 'www.rscm.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('54', 'Moh Ridwan Meuraksa', 'Jl. Kramat Raya  No. 174', '-6.191414', '106.847', '3150535 ', '3916888', 'tanjung_widia@yahoo.com, rsmrm74@yahoo.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('55', 'Kramat 128', 'Jalan  Kramat Raya  Nomor 128', '-6.18536', '106.843994', '3909513 ; 3909514', '3909125', 'dyah.agustina.w@gmail.com ; info@rskramat128.com', 'www.rskramat128.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('56', 'PK. St. Carolus ', 'Jl. Salemba Raya No. 41', '-6.195917', '106.851006', '3904441', '3103226', 'markus_wasesa@yahoo.com, humas_pksc.or.id, carolus@pdpersi.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('57', 'Moh. Husni Thamrin Salemba', 'Jl. Salemba Tengah 26 - 28', '-6.193444', '106.852005', '3904422 Ext.1900 ;1919', '3107816-2305182', 'info@thamrinhospital.com', 'www.thamrinhospital.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('58', 'Islam Jakarta Cempaka Putih', 'Jl. Cempaka Putih Tengah I / 1', '-6.170203', '106.870659', '42801567-4250451', '4206681', 'rsijpusat@rsi.co.id,  rsij@cbn.net.id', 'www.rsi.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('59', 'Pertamina Jaya', 'Jl. Achmad Yani No. 2, By Pass', '-6.173366', '106.876312', '4211911', '4211913', 'pertamedika.rspj@gmail.com', 'www.rspj.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('60', 'Evasari', 'Jalan  Rawamangun  Nomor 47', '-6.193554', '106.859947', '4202851-4', '4209725', 'info@rsia_evasari@yahoo.com', 'www.evasari-jakarta.awalbros.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('61', 'Mitra Kemayoran', 'Jl. Landas Pacu Timur', '-6.151878', '106.858414', '6545555', '6545959', 'kemayoran@mitrakeluarga.com', 'www.mitrakemayoran.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('62', 'Husada ', 'Jl. Raya Mangga Besar Raya 137 - 139', '-6.147598', '106.828812', '6260208 - 6490090', '6497494', 'husada@husada.co.id', 'www.husada.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('63', 'Islam Jakarta Sukapura', 'Jl. Tipar - Cakung No. 5', '-6.139646', '106.920921', '4400778', '4400782', 'rsijsukapura@gmail.com', 'www.rsijsukapura@.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('64', 'Pekerja', 'Jalan  Raya Cakung Cilincing, RT.002/RW.003 ', '-6.144747', '106.923759', '29484848  (10 lines)', '29482875', 'rsu.pekerja@gmail.com', 'www.kbn.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('65', 'Koja', 'Jl. Deli No. 4  Tanjung Priok', '-6.108805', '106.900162', '43938478', '4352401 - 4372273', 'rsudkoja@ymail.com', 'www.rsudkoja.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('66', 'Mitra Keluarga Kelapa Gading', 'Jl. Bukit Gading Raya Kav. II', '-6.151771', '106.897102', '45852700', '45852727', 'kelapagading@mitrakeluarga.com', 'www.mitrakeluarga.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('67', 'Gading Pluit', 'Jl. Boulevard Timur Raya RT. 006 / 02', '-6.166122', '106.915993', '4521001', '4520578', 'gadingpluit@gadingpluit-hospital.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('68', 'Pelabuhan Jakarta', 'Jl. Kramat Jaya, Tanjung Priok', '-6.124692', '106.917519', '4403026', '4403551', 'marketing.rspj@gmail.com', 'www.rspelabuhan.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('69', 'Mulyasari', 'Jl. Raya Plumpang Semper No. 19', '-6.129088', '106.906509', '4390666', '43935676', 'info@rsmulyasari.com', 'www.rsmulyasari.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('70', 'Port Medical Center', 'Jl. Enggano No. 10', '-6.110295', '106.889389', '43902350', '43902302', 'tienastari_jpkm@yahoo.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('71', 'Sukmul Sisma Medika', 'Jl. Tawes No. 18-20 ', '-6.112143', '106.881996', '4301269', '4301272', 'sriha36@gmail.com, sukmul@indosat.net.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('72', 'Puri Medika', 'Jl Sungai Bambu  No. 5', '-6.129145', '106.890198', '43903355-43901273', '43903388', 'purmed-medcen@centrin.net.id', 'www.purimdika.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('73', 'Satya Negara', 'Jl. Agung Utara Raya Blok A No. 1', '-6.138887', '106.861549', '65836583', '687813-64717813', 'chitra_usmanuddin@yahoo.com, rssn@cbn.net.id', 'www.rssatyanegara.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('74', 'Royal Progress', 'Jl. Danau Sunter Utara Blok F 25 No. 12', '-6.139086', '106.865395', '6459877-6400261', '6400778', 'setdir.rssn@gmail.com, ask.us@royalprogress.com', 'www.royalprogress.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('75', 'Hermina Podomoro', 'Jalan  Danau Agung 2 Blok E 3  Nomor 28-30', '-6.145772', '106.859978', '6404910', '6518720', 'podomoro@rsiahermina.com', 'www.hermina.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('76', 'Atma Jaya', 'Jl. Pluit Raya No. 2', '-6.126524', '106.792809', '6606121 ; 6606127', '6606122', 'rsatmajaya@pdpersi.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('77', 'Pluit', 'Jl. Raya Pluit Selatan No. 2', '-6.125572', '106.799835', '6685006 - 6685070', '6684878', 'pluithospital@pluit-hospital.com', 'www.pluit-hospital.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('78', 'Duta Indah', 'Jalan  Teluk Gong Raya  Nomor 12', '-6.138351', '106.783676', '66676188', '666676190', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('79', 'Pantai Indah Kapuk', 'Jl. Pantai Indah Utara 3 Sek. Utr. Tmr Blok T', '-6.111786', '106.752617', '5880911', '5880910', 'pr@pikhospital.co.id', 'www.pikhospital.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('80', 'Pelni Petamburan', 'Jl. Aip II K. S. Tubun No. 92-94', '-6.193323', '106.804817', '5480608', '5483145', 'info@rspelni.co.id, danty@rspelni.net', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('81', 'Bhakti Mulia', 'Jl. Aipda K. S. Tubun No. 79', '-6.199652', '106.800537', '5481625', '5331544', 'rs.bhaktimulia@yahoo.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('82', 'Sumber Waras ', 'Jl. Kyai Tapa No. 1', '-6.167247', '106.79837', '5682011-5663726', '5673122', 'bambang.heri@gmail.com, sekretariat@rssumberwaras.com', 'www.rssumberwaras.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('83', 'Royal Taruma', 'Jl. Daan Mogot  No. 34', '-6.166489', '106.785637', '56958338', '56958589', 'direksi@rs-royaltaruma.com', 'www.rs-royaltaruma.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('84', 'Patria IKKT', 'Jalan Cendrawasih Nomor 1 Komp.Dep.Han, Mabes TNI  Slipi', '-6.197132', '106.7929', '5308981-5308984', '5346387', 'patria_ikkt@yahoo.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('85', 'Puri Mandiri Kedoya', 'Jl. Kedoya Raya / Al-Kamal No. 2', '-6.187422', '106.761673', '5802126 ; 5828299', '5816185 ; 5828499', 'customer_service@rspurimandirikedoya.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('86', 'Grha Kedoya', 'Jl. Panjang Arteri 26', '-6.168242', '106.765175', '56982222', '56982233', 'info@grhakedoya.com', 'www.grhakedoya.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('87', 'Siloam Hospitals Kebon Jeruk', 'Jl. Raya Pejuangan Kav. 8', '-6.190661', '106.76384', '5300887 ; 8 ; 9', '5321766', 'info@siloamhospitals.com', 'www.siloamhospital.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('88', 'Medika Permata Hijau', 'Jl. Raya Kebayoran Lama No. 64 ', '-6.218273', '106.77832', '5347411 - 5305288', '5305291', 'mph-mkt@rad.net.id', 'www.rsmph.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('89', 'Pondok Indah - Puri Indah', 'Jl. Puri Indah Raya  Blok S-2', '-6.185972', '106.735947', '25695222', '25695205', 'rspi@rspondokindah.co.id', 'www.rspondokindah.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('90', 'Cengkareng', 'Jl. Kamal Raya, Bumi Cengkareng Indah', '-6.142909', '106.735199', '5442692 ', '54372884 ; 54374844 ', 'hafifahany@rsudcengkareng.com', 'www.rsudcengkareng.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('91', 'Hermina Daan Mogot', 'Jl. Kintamani Raya No. 2, Kawasan Daan Mogot Baru', '-6.152913', '106.71241', '5408989 - 5411109', '5449869', 'daanmogot@herminahospitalgroup.com', 'www.herminahospitalgroup.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('92', 'Pusat Pertamina ', 'Jl. Kyai Maja No. 43', '-6.240607', '106.792831', '7219202-7200290', '7209811', 'dr.maulana@gmail.com, syafik_a@hotmail.com, humasrspp@pertamedika.co.id', 'www.rspp.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('93', 'Muhammadiyah Taman Puring', 'Jl. Gandaria I / 20', '-6.241654', '106.787193', '7208358', '7234823', 'rsiamtp@rsiamtp.com', 'www.rsiamtp.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('94', 'Gandaria', 'Jl. Gandaria Tengah II No. 6 - 14', '-6.244061', '106.790398', '7250718-7203311', '7248175 - 7222038', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('95', 'Yadika Kebayoran Lama', 'Jalan  Ciputat Raya  Nomor 5', '-6.255353', '106.777405', '7291074', '72895046', 'rsyadika@yahoo.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('96', 'Pondok Indah - Pondok Indah', 'Jl. Metro Duta Kav. UE,  Pondok Indah', '-6.283649', '106.781296', '7657525-7692252', '7502324', 'rspi@rspondokindah.co.id', 'www.rspondokindah.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('97', 'Bhayangkara Sespimma Polri', 'Jalan  Ciputat Raya Nomor 40', '-6.286687', '106.770523', '021-7650384 ; 7666087 ; 7692919', '021-7666106', 'rs.sespimma_polri@yahoo.co.id, yenifebrianti66@yahoo.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('98', 'Dr. Suyoto', 'Jl. R.C. Veteran No. 178', '-6.267451', '106.766129', '7342581', '77884000', 'pemasaranrsds@yahoo.com, humas@suyotohospital.com', 'www.suyotohospital.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('99', 'Fatmawati ', 'Jl. RS. Fatmawati', '-6.295009', '106.795578', '7660552', '7690123 - 7504022', 'rsupf@fatmawatihospita.com', 'www.fatmawatihospital.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('100', 'Setia Mitra', 'Jl. RS Fatmawati No. 80 - 82', '-6.281337', '106.795708', '7656000', '7656875', 'dwilaras_p@yahoo.com,  info@rssetiamitra.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('101', 'Siloam TB Simatupang', 'Jl. RA. Kartini No.8', '-6.292365', '106.783905', '29531900', '', 'irna.hardiawan@siloamhospitals.com', 'www.siloamhospital.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('102', 'Mayapada', 'Jl. Lebak Bulus I  RT.006 / RW.004', '-6.298736', '106.785728', '', '', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('103', 'Prikasih', 'Jl. RS. Fatmawati No. 74  RT.005 / RW.01', '-6.314489', '106.793518', '7501192', '7505148', 'prikasih@cbn.net.id', 'www.rsprikasih.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('104', 'Siaga Raya', 'Jl. Siaga Raya Kav. 4 - 8', '-6.272883', '106.838951', '7972750-7972790', '7970494', 'rs_sigaraya@pdpersi.co', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('105', 'Rumkital Marinir Cilandak', 'Jl. Raya Cilandak  KKO', '-6.305478', '106.813354', '7805296', '7812764', 'enytiar@yahoo.com, layanan@rsmarinir.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('106', 'Ali Sibroh Malisi', 'Jalan  Warung Silah  Nomor 1  RT.008 / RW.05', '-6.344991', '106.813705', '021-7868172', '78885063', 'md_azri@yahoo.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('107', 'Zahirah', 'Jl. Sirsak No. 21', '-6.335719', '106.823326', '7872210', '7270013', 'marketing@rszahirah.com', 'www.rszahirah.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('108', 'Jakarta Medical Center', 'Jl. Warung Buncit Raya No. 15', '-6.271507', '106.830147', '7985177-7980888', '7940838', 'rs_jmc@cbn.net.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('109', 'Siloam Asri', 'Jalan Duren Tiga Raya Nomor 20  RT.004 / RW.01', '-6.254546', '106.83213', '7992211', '7996505', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('110', 'Tria Dipa', 'Jl. Raya Pasar Minggu No. 3 A', '-6.250846', '106.841957', '7974071-73', '7974074', 'customer@rs-triadipa.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('111', 'Tebet', 'Jl. MT. Haryono No. 8', '-6.242549', '106.849945', '8307540', '8311760', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('112', 'Jakarta', 'Jl. Jend. Sudirman Kav. 49 ', '-6.218441', '106.816101', '5732241', '5710240 ; 5710249', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('113', 'Metropolitan Medical Center', 'Jl. HR. Rasuna Said Kav. C-21 Kuningan', '-6.219806', '106.832146', '5203435', '5203417', 'mmc@rsmmc.co.id', 'www.rsmmc.co.id/mmc@rsmmc.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('114', 'Medistra', 'Jl. Jenderal Gatot Subroto Kav. 59', '-6.239865', '106.833328', '5210200', '5210184', 'customercare@medistra.com, medistra@cbn.net.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('115', 'Agung', 'Jl. Sultan Agung No. 67', '-6.209167', '106.846275', '8295971-8294955', '8305791', 'rsagung@pdpersi.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('116', 'Columbia Asia Pulomas', 'Jl. Kayu Putih Raya  No. 1  RT.003 / RW.016', '-6.182741', '106.891495', '47883195', '47883199', 'rsadmira@rsadmira.com', 'www.rsadmira.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('117', 'Omni Medical Center', 'Jl. Pulomas Barat VI No.20', '-6.17582', '106.885246', '4723332-4722719', '4718081', 'normariati70@yahoo.com', 'www.omni-hospitals.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('118', 'Kartika Pulomas ', 'Jalan  Pulomas Timur K. Nomor 2', '-6.17582', '106.885246', '4723402 - 4703333', '4723402', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('119', 'Aneka Tambang Medika (Antam Medika)', 'Jl. Pemuda Raya No. 1A RT.002 / RW.07', '-6.192658', '106.902603', '29378939', '29378960', 'rumahsakit@antammedika.co.id', 'www.antammedika.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('120', 'Persahabatan ', 'Jl. Persahabatan Raya ', '-6.202596', '106.885071', '4891708-4890696', '4711222', 'rsp@pcraahabatan.ce.1d', 'www.persahabatan.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('121', 'Dharma Nugraha', 'Jl. Balai Pustaka Baru No. 19', '-6.195859', '106.886421', '4707433-4707437', '4707428', 'dharmanugraha@yahoo.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('122', 'Mediros', 'Jl. Perintis Kemerdekaan Kav. 149', '-6.179724', '106.903748', '4721336 - 37', '4891937', 'lumentagrace@yahoo.com, rsmediros@cbn.net.id', 'www.rs-mediros.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('123', 'Premier Jatinegara', 'Jl. Raya Jatinegara Timur No. 85 - 87', '-6.221951', '106.868935', '2800666', '2800755', 'rspremier.jatinegara@ramsayhealth.co.id', 'www.ramsayhealth.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('124', 'Pengayoman Cipinang', 'Jl. Raya Bekasi Timur 170 B', '-6.221951', '106.868935', '085210432196', '85909644', 'rspengayoman.dki@gmail.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('125', 'Yadika Pondok Bambu', 'Jl. Pahlawan Revolusi No. 47', '-6.237237', '106.898796', '8615754-8610756', '8631708', 'rsyadika@yahoo.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('126', 'Islam Jakarta Pondok Kopi', 'Jl. Raya Pondok Kopi', '-6.220089', '106.939682', '8610471 ', '8611101', 'aliyus_k@yahoo.com, ariefb12@gmail.com', 'www.rsijpondokkopi.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('127', 'Dik Pusdikkes Kodiklat TNI AD', 'Jl. Raya Bogor', '-6.275258', '106.869537', '8092358', '8092706', 'rs.dik.pusdikkes@gmail.com', 'www.pusdikkes.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('128', 'Bhayangkara Tk.I  R. Said Sukanto', 'Jl. RS Polri', '-6.269806', '106.870674', '8093288', '8094005', 'rs_polri@pdpersi.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('129', 'Al-Fauzan', 'Jalan  Pedati Nomor 3  RT.005 / RW.07', '-6.297779', '106.870377', '8402821', '87710318 ', 'jakartaislamichospital@yahoo.com', 'www.jih.co.id', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('130', 'Haji Jakarta', 'Jl. Raya Pondok Gede No. 4', '-6.290169', '106.888847', '8000693-695', '80876209', 'keliek_marwanto@yahoo.co.id, rshaji@pdpersi.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('131', 'Pusat Angkatan Udara Dr. Esnawan Antariksa', 'Jl. Merpati No. 2,  Komplek Rajawali', '-6.257015', '106.891922', '8091716-8093943', '8098665', 'ruspau@pdpersi.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('132', 'Harum Sisma Medika', 'Jl. Inspeksi Tarum Barat - Kalimalang', '-6.24808', '106.90963', '8617212-13', '8601030', 'erwintyrana@sismamedika.com, rsharum@pdpersi.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('133', 'Budhi Asih ', 'Jl. Dewi Sartika  Cawang III  No. 200', '-6.256015', '106.862869', '8090282', '8009157-8007348', 'budhiasih@ymail.com', 'www.rsudbudhiasih.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('134', 'Universitas Kristen Indonesia', 'Jl. Mayjen Sutoyo No. 2', '-6.25092', '106.872002', '8092317', '8092445', 'rsuuki@yahoo.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('135', 'Olahraga Nasional', 'Jalan  Jambore  Nomor 1', '-6.368448', '106.892929', '87753977', '021-87753977', 'rsolahragacibubur@gmail.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('136', 'Tingkat IV Cijantung Kesdam Jaya', 'Jl. Mahoni,  Cijantung II ', '-6.309916', '106.859673', '8400535', '8407886', 'kesdamjaya_cijantung@yahoo.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('137', 'Pasar Rebo', 'Jl. Letjen T. B. Simatupang No. 30', '-6.304108', '106.861931', '8401127/ 8400109', '8411159', 'rsudpasarrebo@yahoo.com', 'www.rsudpasarrebo.com', 'rs');
INSERT INTO `mst_puskesmas` VALUES ('138', 'Adhyaksa', 'Jl. Hankam Raya No.60', '-6.304108', '106.861931', '021-29462345', '', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('139', 'Harapan Bunda', 'Jl. Raya Bogor KM. 22 No. 44', '-6.29439', '106.880798', '8400257', '87781247', 'hrd@rsharapanbunda.com, harapanbunda@pdpersi.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('140', 'Harapan Jayakarta ', 'Jalan  Bekasi Timur Raya  Nomor 6  KM.18', '-6.195012', '106.906258', '4608886', '4608863', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('141', 'Kepulauan Seribu', 'Pulau Pramuka', '-5.744879', '106.613396', '021-33230332', '33312388', 'rsukepulauanseribu@yahoo.co.id', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('142', 'Cempaka Putih', 'Jalan  Rawasari Selatan  Nomor 1', '-6.184666', '106.869911', '4219548', '4219548', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('143', 'Sawah Besar', 'Jalan  Dwiwarna Raya  Nomor 6-8', '-6.149973', '106.829605', '6289080', '6012240', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('144', 'Johar Baru', 'Jalan  Tanah Tinggi XII', '-6.181071', '106.849373', ' 4246359', '4224041', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('145', 'Kemayoran', 'Jalan  Serdang Baru I', '-6.1608', '106.862289', '4801847', '4801846', 'rsukemayoran@gmail.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('146', 'Koja', 'Jalan  Walang Permai  Nomor 39', '-6.127233', '106.906982', '43905651', '', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('147', 'Cilincing', 'Jalan  Madya Kebantenan  Nomor 4', '-6.118146', '106.927902', '4412889', '4412889', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('148', 'Pademangan', 'Jalan  Budi Mulia Raya  Nomor 2  RT.0015 / RW.011', '-6.133254', '106.839401', '021-6452346', '', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('149', 'Kembangan', 'Jalan  Topaz Blok F2  Nomor 3', '-6.181012', '106.733223', '5870834', '', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('150', 'Kalideres', 'Jalan  Satu Maret  Nomor 48  RT.001 / RW.04', '-6.128841', '106.704369', '54390576', '54390576', 'rsukalideres@gmail.com', null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('151', 'Jagakarsa', 'Jalan  Mohamad Kahfi 1  Nomor 27 A', '-6.311328', '106.813515', '7864707', '', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('152', 'Tebet', 'Jalan  Prof. Supomo, SH  Nomor 54', '-6.231592', '106.846008', '8314955', '8296918', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('153', 'Mampang Prapatan', 'Jalan  Kapten Tendean  Nomor 9', '-6.240428', '106.826988', '79192187', '', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('154', 'Pesanggrahan', 'Jalan  Cenek I  Nomor 1', '-6.258924', '106.75766', '7356087', '', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('155', 'Kramat Jati', 'Jalan  Raya Inpres  Nomor 48', '-6.28674', '106.862251', '87791152', ' 87793604', null, null, 'rs');
INSERT INTO `mst_puskesmas` VALUES ('156', 'Ciracas', 'Jalan  Raya Lapangan Tembak', '-6.25801', '106.905167', '8718995', '', null, null, 'rs');

-- ----------------------------
-- Table structure for ramah_diffabel
-- ----------------------------
DROP TABLE IF EXISTS `ramah_diffabel`;
CREATE TABLE `ramah_diffabel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ramah_diffabel
-- ----------------------------
INSERT INTO `ramah_diffabel` VALUES ('1', '-6.181258', '106.828986', 'toilet', 'di lantai 1 ada toilet yang bisa digunakan oleh para difabel');
INSERT INTO `ramah_diffabel` VALUES ('2', '-6.180299', '106.827432', 'halte', 'halte monas bisa digunakan oleh para difabel');
INSERT INTO `ramah_diffabel` VALUES ('3', '-6.176947', '106.830937', 'stasiun', 'stasiun gambir bisa digunakan oleh para difabel');
