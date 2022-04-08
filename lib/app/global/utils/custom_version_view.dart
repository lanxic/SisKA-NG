import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:siskang/app/global/utils/constants.dart';

class CustomVersionView extends StatefulWidget {
  final double position;
  const CustomVersionView({Key? key, required this.position}) : super(key: key);

  @override
  State<CustomVersionView> createState() => _CustomVersionViewState();
}

class _CustomVersionViewState extends State<CustomVersionView> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
  );

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          top: getProportionateScreenHeight(widget.position),
        ),
        child: Text(
          "version : ${_packageInfo.version}",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
