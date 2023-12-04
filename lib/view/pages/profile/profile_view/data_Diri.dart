import 'package:flutter/material.dart';
import 'package:mobile/view/pages/profile/componen_profile/card_field_item_text_profile.dart';
import 'package:mobile/view/pages/profile/componen_profile/card_field_item_text_profile_bank.dart';
import 'package:mobile/widget/compenent/badges_notifikasi.dart';
import 'package:mobile/widget/compenent/card_field_item_text.dart';
import 'package:mobile/widget/compenent/card_list.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';

class DataDiri extends StatefulWidget {
  const DataDiri({super.key});

  @override
  State<DataDiri> createState() => _DataDiriState();
}

class _DataDiriState extends State<DataDiri> {
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            color: kProfileBanner,
            height: _screen.height * 0.30,
            child: Center(
                child: Stack(
              children: [
                Container(
                  width: getProportionateScreenWidth(150),
                  height: getProportionateScreenHeight(150),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/564x/a5/70/3e/a5703ea8ff2210d22ed4b21008c60267.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 0.0,
                  bottom: 0.0,
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    )),
                  ),
                ),
              ],
            )),
          ),
          SizedBox(height: getProportionateScreenHeight(15)),
          Column(
            children: <Widget>[
              Text(
                "Data Diri",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              CardFieldItemTextProfile(
                label: "Nama Lengkap",
                contentData: "I Wayan Agus Juniartha",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Kewarganegaraan",
                contentData: "WNI",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Jenis Identitas",
                contentData: "KTP",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Jenis Kelamin",
                contentData: "Laki-Laki",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Tempat Lahir",
                contentData: "Denpasar",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Tanggal Lahir",
                contentData: "01/01/2002",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Agama",
                contentData: "Hindu",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Status Perkawinan",
                contentData: "Belum Kawin",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Provinsi",
                contentData: "Bali",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Kabupaten",
                contentData: "Denpasar",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Kecamatan",
                contentData: "Denpasar Timur",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Desa",
                contentData: "Kesiman Petilan",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Kode Pos",
                contentData: "80237",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Alamat",
                contentData: "Jalanin aja dulu",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Column(
            children: <Widget>[
              Text(
                "Data Kontak",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              CardFieldItemTextProfile(
                label: "Telepon",
                contentData: "089786756576",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Email",
                contentData: "hello.world@gmail.com",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Website",
                contentData: "hello-world.company.com",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Media Sosial",
                contentData: "instagram.com/hello-world",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Column(
            children: <Widget>[
              Text(
                "Data Bank",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              CardFieldItemTextProfileBank(
                label: "BCA",
                contentData: "Andi",
                contentData2: "0123456789",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfileBank(
                label: "BNI",
                contentData2: "0123456789",
                contentData: "Budi",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfileBank(
                label: "BRI",
                contentData: "Rian",
                contentData2: "0123456789",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfileBank(
                label: "Mandiri",
                contentData: "Surya",
                contentData2: "0123456789",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
        ],
      ),
    );
  }
}
