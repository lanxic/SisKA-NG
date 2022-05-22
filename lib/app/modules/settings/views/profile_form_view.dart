import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:siskang/app/global/utils/custom_default_button.dart';
import 'package:siskang/app/global/utils/custom_inputemailform.dart';
import 'package:siskang/app/global/utils/custom_inputnumberform.dart';
import 'package:siskang/app/global/utils/custom_inputpasswdnumberform.dart';
import 'package:siskang/app/global/utils/custom_inputstringform.dart';

class ProfileFormView extends StatefulWidget {
  final imageUrl;
  final name;
  final nim;
  final email;
  final smtr;
  final prodi;
  final fakultas;

  ProfileFormView(
      {Key? key,
      this.imageUrl,
      this.name,
      this.nim,
      this.email,
      this.smtr,
      this.prodi,
      this.fakultas})
      : super(key: key);

  @override
  _ProfileFormViewState createState() => _ProfileFormViewState();
}

class _ProfileFormViewState extends State<ProfileFormView> {
  final storage = new FlutterSecureStorage();

  TextEditingController nameController = TextEditingController();
  TextEditingController nimController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController smtrController = TextEditingController();
  TextEditingController prodiController = TextEditingController();
  TextEditingController fakultasController = TextEditingController();

  @override
  void initState() {
    nameController.text = widget.name;
    nimController.text = widget.nim;
    emailController.text = widget.email;
    smtrController.text = widget.smtr;
    prodiController.text = widget.prodi;
    fakultasController.text = widget.fakultas;

    super.initState();
    _clearCache();
  }

  void _clearCache() async {
    await storage.deleteAll();
  }

  Future<void> _save() async {
    print("simpan data Profile");
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          SizedBox(
            width: 160,
            height: 160,
            child: AvatarGlow(
              glowColor: Color.fromARGB(255, 15, 233, 106),
              endRadius: 90.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: Center(
                child: SizedBox(
                  width: 130,
                  height: 130,
                  child: CircleAvatar(
                    foregroundImage: NetworkImage(widget.imageUrl),
                    radius: 10,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          DataTable(
            sortColumnIndex: 0,
            columnSpacing: 20.0,
            horizontalMargin: 0,
            columns: [
              DataColumn(
                  label: Text(
                'Biodata',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
              DataColumn(
                  label: Text(
                '',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
            ],
            rows: <DataRow>[
              DataRow(cells: [
                DataCell(Text('Nama Lengkap')),
                DataCell(Text(widget.name)),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text('NIM')),
                DataCell(Text(widget.nim)),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text('Email Undiksha')),
                DataCell(Text(widget.email)),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text('Semester Sekarang')),
                DataCell(Text(widget.smtr)),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text('Jurusan/Prodi')),
                DataCell(Text(widget.prodi)),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text('Fakultas')),
                DataCell(Text(widget.fakultas)),
              ]),
            ],
          ),
          Divider(
            height: 50,
            thickness: 2,
            color: kPrimaryColor,
          ),
          DataTable(
            columnSpacing: 40.0,
            horizontalMargin: 0,
            columns: [
              DataColumn(
                label: Text(
                  'Pembimbing\nAkademik',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(label: Container()),
            ],
            rows: <DataRow>[
              DataRow(cells: [
                DataCell(Text('Nama Lengkap')),
                DataCell(
                    Text("Kadek Yota Ernanda Aryanto, S.Kom., M.T., Ph.D.")),
              ]),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Telepon/HP')),
                  DataCell(Text("081803XXXXX")),
                ],
              ),
            ],
          ),
          // CustomInputStringForm(
          //   inputController: nameController,
          //   label: "Nama Lengkap",
          //   isValidate: true,
          //   readOnly: false,
          //   isEnable: false,
          // ),
          // SizedBox(height: getProportionateScreenHeight(20)),
          // CustomInputNumberForm(
          //   inputController: nimController,
          //   label: "NIM",
          //   isValidate: true,
          //   readOnly: false,
          //   isEnable: false,
          // ),
          // SizedBox(height: getProportionateScreenHeight(20)),
          // CustomInputEmailForm(
          //   inputController: emailController,
          //   label: "Email Undiksha",
          //   isValidate: true,
          //   readOnly: false,
          //   isEnable: false,
          // ),
          // SizedBox(height: getProportionateScreenHeight(20)),
          // CustomInputStringForm(
          //   inputController: smtrController,
          //   label: "Semester Sekarang",
          //   isValidate: true,
          //   readOnly: false,
          //   isEnable: false,
          // ),
          // SizedBox(height: getProportionateScreenHeight(20)),
          // CustomInputStringForm(
          //   inputController: prodiController,
          //   label: "Jurusan/Prodi",
          //   isValidate: true,
          //   readOnly: false,
          //   isEnable: false,
          // ),
          // SizedBox(height: getProportionateScreenHeight(20)),
          // CustomInputStringForm(
          //   inputController: fakultasController,
          //   label: "Fakultas",
          //   isValidate: true,
          //   readOnly: false,
          //   isEnable: false,
          // ),
          // SizedBox(height: getProportionateScreenHeight(20)),
          // CustomInputPasswdNumberForm(
          //   inputPWController: passwordController,
          //   inputRPWController: confirmPasswordController,
          //   isValidate: true,
          // ),
          // SizedBox(height: getProportionateScreenHeight(40)),
          // CustomDefaultButton(
          //   isActive: true,
          //   text: "Simpan",
          //   onpress: () => _save(),
          // ),
        ],
      ),
    );
  }
}
