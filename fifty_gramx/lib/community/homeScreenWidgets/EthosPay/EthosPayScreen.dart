import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/two/ethos/pay/AccountFirstNameEditorPage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/pushHorizontalPage.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EthosPayScreen extends StatelessWidget {
  const EthosPayScreen();

  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: '50GRAMX - Ethos Pay',
      themeMode: ThemeMode.dark,
      // comment to adapt on system theme
      theme: NeumorphicThemeData(
        intensity: 0.6,
        baseColor: AppColors.lightPrimaryB,
        lightSource: LightSource.topLeft,
        depth: 5,
        accentColor: AppColors.darkPrimaryA,
      ),
      darkTheme: NeumorphicThemeData(
        intensity: 0.6,
        baseColor: AppColors.darkPrimaryB,
        lightSource: LightSource.top,
        depth: 5,
        accentColor: AppColors.lightPrimaryA,
      ),
      routes: {
        '/': (context) => const EthosPayPage(),
      },
    );
  }
}

class EthosPayPage extends StatelessWidget {
  const EthosPayPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundPrimary(context),
        body: CustomScrollView(
          slivers: <Widget>[
            CustomSliverAppBar(
              labelText: "Ethos Pay",
              actionLabelText: "",
              isBackEnabled: false,
              isActionEnabled: false,
              trailingButtonCallback: () {},
              onStretchTriggerCallback: () {},
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              // -----------------------------------------
              // ABOUT First Name Last Name
              // -----------------------------------------
              Container(
                  margin:
                      EdgeInsets.only(top: 16, bottom: 4, right: 16, left: 16),
                  child: FormInfoText("ABOUT").build(context)),
              FutureBuilder<String>(
                future: AccountData().readAccountId(),
                builder: (context, snap) {
                  if (snap.connectionState == ConnectionState.waiting) {
                    return AppProgressIndeterminateWidget();
                  } else {
                    if (snap.data == "") {
                      return FutureBuilder<Account>(
                          future: AccountData().readAccount(),
                          builder: (context, snap) {
                            if (snap.connectionState ==
                                ConnectionState.waiting) {
                              return AppProgressIndeterminateWidget();
                            } else {
                              if (snap.data!.accountFirstName != "" ||
                                  snap.data!.accountLastName != "") {
                                return SelectorConfigurationItem(
                                    titleText: snap.data!.accountFirstName,
                                    subtitleText: snap.data!.accountLastName,
                                    selectorCallback: () {
                                      AppPushPage().pushHorizontalPage(
                                          context,
                                          AccountFirstNameEditorPage(
                                            firstNameLabel:
                                                snap.data!.accountFirstName,
                                            lastNameLabel:
                                                snap.data!.accountLastName,
                                          ));
                                    });
                              } else {
                                return SelectorConfigurationItem(
                                    titleText: "First Name",
                                    subtitleText: "Last Name",
                                    selectorCallback: () {
                                      AppPushPage().pushHorizontalPage(context,
                                          AccountFirstNameEditorPage());
                                    });
                              }
                            }
                          });
                    } else {
                      return FutureBuilder<Account>(
                          future: AccountData().readAccount(),
                          builder: (context, snap) {
                            if (snap.connectionState ==
                                ConnectionState.waiting) {
                              return AppProgressIndeterminateWidget();
                            } else {
                              return SelectorConfigurationItem(
                                  titleText: snap.data!.accountFirstName,
                                  subtitleText: snap.data!.accountLastName,
                                  selectorCallback: () {
                                    AppPushPage().pushHorizontalPage(
                                        context,
                                        AccountFirstNameEditorPage(
                                            firstNameLabel:
                                                snap.data!.accountFirstName,
                                            lastNameLabel:
                                                snap.data!.accountLastName));
                                  });
                            }
                          });
                    }
                  }
                },
              ),
            ]))
          ],
        ));
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm();

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _usernameTextController = TextEditingController();

  double _formProgress = 0;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinearProgressIndicator(value: _formProgress),
          Text('Sign up', style: Theme.of(context).textTheme.headline4),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _firstNameTextController,
              decoration: const InputDecoration(hintText: 'First name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _lastNameTextController,
              decoration: const InputDecoration(hintText: 'Last name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _usernameTextController,
              decoration: const InputDecoration(hintText: 'Username'),
            ),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                return states.contains(MaterialState.disabled)
                    ? null
                    : Colors.white;
              }),
              backgroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                return states.contains(MaterialState.disabled)
                    ? null
                    : Colors.blue;
              }),
            ),
            onPressed: null,
            child: const Text('Sign up'),
          ),
        ],
      ),
    );
  }
}
