import 'package:cuy_test/domain/model/plans.dart';
import 'package:cuy_test/main_notifier.dart';
import 'package:cuy_test/presentation/home/home_notifier.dart';
import 'package:cuy_test/presentation/theme.dart';
import 'package:cuy_test/presentation/widgets/drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final token = context.read<MainNotifier>().getBasicToken;
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).hmTitle),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
            future: context.read<HomeNotifier>().getAllPlans(token),
            builder: (context, AsyncSnapshot<List<Plan>> snapshot) {
              if (snapshot.hasData) {
                final data = snapshot.data!;
                return GridView.builder(
                    padding: const EdgeInsets.all(Default.padding),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int i) {
                      return _PlanItem(
                        plan: data[i],
                      );
                    });
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return const Center(child: CircularProgressIndicator());
            },
          ))
        ],
      ),
    );
  }
}

class _PlanItem extends StatelessWidget {
  const _PlanItem({Key? key, required this.plan}) : super(key: key);
  final Plan plan;
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Default.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
                child: FlutterLogo(
              size: 300,
            )),
            Text("${localizations.hmPlanName} : ${plan.name}"),
            Text("${localizations.hmPlanPrice} : ${plan.price}"),
            Text("${localizations.hmPlanDuration} : ${plan.duration}")
          ],
        ),
      ),
    );
  }
}
