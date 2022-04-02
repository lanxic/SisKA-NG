import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class CustomVersionView extends StatefulWidget {
  const CustomVersionView({Key? key}) : super(key: key);

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
      child: Text(
        "version : ${_packageInfo.version}",
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
    );
  }
}
