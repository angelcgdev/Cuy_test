import 'package:cuy_test/main_notifier.dart';
import 'package:cuy_test/presentation/home/home_page.dart';
import 'package:cuy_test/presentation/login/login_notifier.dart';
import 'package:cuy_test/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _cuser = TextEditingController();
  final _cpassword = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _cuser.dispose();
    _cpassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Default.padding),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const Center(
                child: FlutterLogo(
                  size: 100,
                ),
              ),
              const SizedBox(
                height: Default.padding,
              ),
              TextFormField(
                controller: _cuser,
                decoration: InputDecoration(
                  border: const UnderlineInputBorder(),
                  labelText: AppLocalizations.of(context).lpUser,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppLocalizations.of(context).lpUserEmpty;
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: Default.padding,
              ),
              TextFormField(
                controller: _cpassword,
                decoration: InputDecoration(
                  border: const UnderlineInputBorder(),
                  labelText: AppLocalizations.of(context).lpPassword,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppLocalizations.of(context).lpPasswordEmpty;
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: Default.padding,
              ),
              Selector<LoginNotifier, bool>(
                selector: (_, model) => model.getLoading,
                builder: (context, isLoading, _) => ElevatedButton(
                  onPressed: !isLoading
                      ? () async {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            final token =
                                context.read<MainNotifier>().getBasicToken;
                            final succesLogin = await context
                                .read<LoginNotifier>()
                                .login(
                                    user: _cuser.text,
                                    password: _cpassword.text,
                                    token: token);
                            if (!succesLogin && mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(context
                                        .read<LoginNotifier>()
                                        .getErrorMsg)),
                              );
                            }
                            if (succesLogin && mounted) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const HomePage(),
                                  ));
                            }
                          }
                        }
                      : null,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(AppLocalizations.of(context).lpBtnLogin),
                      if (isLoading) ...[
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox.square(
                          dimension: 15,
                          child: CircularProgressIndicator(
                            color: Theme.of(context).disabledColor,
                          ),
                        )
                      ]
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
