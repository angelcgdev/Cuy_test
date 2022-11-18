import 'package:cuy_test/presentation/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      backgroundColor: Colors.white,
      width: size.width > 300 ? 300 : size.width,
      child: Column(
        children: [
          Container(
            height: 200,
            color: Theme.of(context).colorScheme.surface,
            child: const Center(
              child: FlutterLogo(
                size: 90,
              ),
            ),
          ),
          const Divider(
            height: 0,
          ),
          _ItemDrawer(
            name: AppLocalizations.of(context).apTitle,
            path: 'about',
          ),
        ],
      ),
    );
  }
}

class _ItemDrawer extends StatelessWidget {
  const _ItemDrawer({Key? key, required this.name, required this.path})
      : super(key: key);
  final String path;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, path);
      },
      child: Container(
        padding: const EdgeInsets.all(Default.padding),
        color: Theme.of(context).colorScheme.surface,
        width: double.infinity,
        child: Text(name),
      ),
    );
  }
}
