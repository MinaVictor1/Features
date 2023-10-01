import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../utils/app_router.dart';
import '../../utils/bottomnavbar.dart';
import 'widgets/homepagebody.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.titleHome),
      ),
      bottomNavigationBar: BottomNavbar(
        onTap: (value) {
          if (value == 1) {
            GoRouter.of(context).push(Approute.kSetting);
          }
        },
      ),
      body: const SafeArea(child: HomePageBody()),
    );
  }
}
