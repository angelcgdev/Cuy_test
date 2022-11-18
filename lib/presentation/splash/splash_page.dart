import 'package:cuy_test/main_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplasgPage extends StatefulWidget {
  const SplasgPage({Key? key}) : super(key: key);

  @override
  State<SplasgPage> createState() => _SplasgPageState();
}

class _SplasgPageState extends State<SplasgPage> {
  late MainNotifier mainNotifier;

  @override
  void initState() {
    mainNotifier = context.read<MainNotifier>();
    getCredentials();
    super.initState();
  }

  void getCredentials() async {
    final isLogged = await mainNotifier.basicAuth();
    if (isLogged && mounted) {
      Navigator.pushReplacementNamed(context, 'login');
    } else {
      final snackBar = SnackBar(
        content: Text(mainNotifier.getErrorMsg),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: FlutterLogo(size: size.width * .2),
      ),
    );
  }
}
