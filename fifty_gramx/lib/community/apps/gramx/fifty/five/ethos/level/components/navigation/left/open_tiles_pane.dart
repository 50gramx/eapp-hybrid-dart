import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold_backup.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class OpenTilesPane extends StatefulWidget {
  const OpenTilesPane({
    required this.selectPressedSectionItem,
    required this.isNavigatingLeft,
    Key? key,
  });
  final Function(int) selectPressedSectionItem;

  final bool isNavigatingLeft;

  @override
  _OpenTilesPaneState createState() => _OpenTilesPaneState();
}

class _OpenTilesPaneState extends State<OpenTilesPane> {
  /// internal instance of LocalNotifications
  static Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  late bool isVisible;

  /// handler invoked inside localNotifications, which listens to new messages
  /// when the device receives a push notification based on metadata
  handleListeningMessages(LocalNotification message) async {
    if (message.type == "OpenTilesPane") {
      if (message.data.containsKey("state")) {
        _handleVisualStates(message);
      }
    }
  }

  _handleVisualStates(LocalNotification message) {
    if (message.data["state"] == "toggle") {
      if (isVisible) {
        setState(() {
          isVisible = false;
        });
        NotificationsBloc.instance.newNotification(
            LocalNotification("OpenTilesPane", {"isVisible": false}));
      } else {
        setState(() {
          isVisible = true;
        });
        NotificationsBloc.instance.newNotification(
            LocalNotification("OpenTilesPane", {"isVisible": true}));
      }
    }
  }

  @override
  void initState() {
    isVisible = true;
    _notificationsStream.listen((notification) {
      handleListeningMessages(notification);
    });
    super.initState();
  }

  Widget buildCard() {
    return Center(
      child: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          depth: 10,
          intensity: 0.7,
          color: Colors.white,
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Open Ethos Domain Information',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Domain Name: Patel',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                'Updated At: 10/10/2024',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              SizedBox(height: 10),
              Text(
                'Community Information:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Community Code: 88',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                'Community Name: Education',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Domain Location Information:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Universe: Ethosverse India',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                'Galaxy: 50GRAMx Ethos',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                'Space: Study India',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Domain Licence Information:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Licenced At: 02/10/2024',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                'Licenced Till: 01/10/2025',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Space Information:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Space Kind: Knowledge',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                'Space Access: Open',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                'Space Type: Team',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                'Space Isolation: Non-Isolated',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget tiles = Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        depth: 6,
        boxShape:
            NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(24))),
        color: AppColors.backgroundInverseTertiary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundInverseTertiary(context),
          width: 2,
        ),
      ),
      margin: EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 8),
      child: Container(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 2,
          itemBuilder: (BuildContext context, int subIndex) {
            if (subIndex == 0) {
              return Container(
                child: NeumorphicText(
                  "COMMUNITY TILES",
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(
                        topRight: Radius.circular(24),
                        bottomRight: Radius.circular(24))),
                    color: AppColors.backgroundTertiary(context),
                    border: NeumorphicBorder(
                      isEnabled: true,
                      color: AppColors.backgroundTertiary(context),
                      width: 1,
                    ),
                  ),
                  textAlign: TextAlign.left,
                  textStyle: NeumorphicTextStyle(
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400),
                ),
                margin:
                    EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 16),
              );
            } else {
              Widget box = SizedBox(
                height: 120,
                width: MediaQuery.of(context).size.width - 12,
              );
              Widget container = Neumorphic(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                style: NeumorphicStyle(
                  lightSource: NeumorphicTheme.isUsingDark(context)
                      ? LightSource.bottomRight
                      : LightSource.topLeft,
                  shadowLightColor: NeumorphicTheme.isUsingDark(context)
                      ? AppColors.gray600
                      : AppColors.backgroundSecondary(context),
                  shape: NeumorphicShape.flat,
                  depth: 6,
                  boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.all(Radius.circular(24))),
                  color: AppColors.backgroundTertiary(context),
                  border: NeumorphicBorder(
                    isEnabled: true,
                    color: AppColors.backgroundTertiary(context),
                    width: 2,
                  ),
                ),
                child: box,
              );
              return build(context);
              // return Text("${EthosAppFlowBob.eutopiaNavigationBarSectionalItems[subIndex - 1].leftNavigationBarSectionalItem.label}");
              // return buildAppPageButton(
              //     context, subIndex - 1, selectPressedSectionItem);
            }
          },
        ),
      ),
    );

    Widget expandedTiles = Expanded(
        flex: LayoutBreakpoint().getBreakpoint(context) <= 4 ? 6 : 4,
        child: Container(
          child: ListView(
            children: [tiles],
          ),
        ));
    return Visibility(
      child: expandedTiles,
      visible: isVisible,
    );
  }
}
