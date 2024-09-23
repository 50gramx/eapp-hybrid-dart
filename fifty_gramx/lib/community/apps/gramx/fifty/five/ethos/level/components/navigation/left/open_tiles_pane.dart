import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/identity/account/pay_in_account.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold_backup.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/services/identity/account/payInAccountService.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// A widget that displays a pane with various tiles of information.
///
/// The pane can be dynamically shown or hidden based on notifications received.
class OpenTilesPane extends StatefulWidget {
  /// Callback function that gets triggered when a section item is selected.
  final Function(int) selectPressedSectionItem;

  /// Determines if the pane is navigating left.
  final bool isNavigatingLeft;

  /// Creates an [OpenTilesPane] widget.
  const OpenTilesPane({
    required this.selectPressedSectionItem,
    required this.isNavigatingLeft,
    Key? key,
  }) : super(key: key);

  @override
  _OpenTilesPaneState createState() => _OpenTilesPaneState();
}

class _OpenTilesPaneState extends State<OpenTilesPane> {
  /// Stream of notifications for this widget.
  static final Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  /// Visibility state of the pane.
  late bool isVisible;

  @override
  void initState() {
    super.initState();
    isVisible = true;
    _notificationsStream.listen(_handleIncomingNotifications);
  }

  /// Handles incoming notifications and updates the visibility state if required.
  void _handleIncomingNotifications(LocalNotification notification) {
    if (notification.type == "OpenTilesPane" &&
        notification.data.containsKey("state")) {
      _toggleVisibility(notification.data["state"]);
    }
  }

  /// Toggles the visibility state of the pane based on the notification data.
  void _toggleVisibility(String state) {
    setState(() {
      isVisible = (state == "toggle") ? !isVisible : isVisible;
    });

    // Notify other components about the visibility state change.
    NotificationsBloc.instance.newNotification(
      LocalNotification("OpenTilesPane", {"isVisible": isVisible}),
    );
  }

  /// Builds the card widget displaying detailed information.
  Widget _buildInformationCard() {
    return Center(
      child: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          depth: 10,
          intensity: 0.7,
          color: Colors.white,
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCardSectionTitle('Open Ethos Domain Information'),
              _buildCardRow('Domain Name', 'Patel'),
              _buildCardRow('Updated At', '10/10/2024'),
              _buildCardSectionTitle('Community Information'),
              _buildCardRow('Community Code', '88'),
              _buildCardRow('Community Name', 'Education'),
              _buildCardSectionTitle('Domain Location Information'),
              _buildCardRow('Universe', 'Ethosverse India'),
              _buildCardRow('Galaxy', '50GRAMx Ethos'),
              _buildCardRow('Space', 'Study India'),
              _buildCardSectionTitle('Domain Licence Information'),
              _buildCardRow('Licenced At', '02/10/2024'),
              _buildCardRow('Licenced Till', '01/10/2025'),
              _buildCardSectionTitle('Space Information'),
              _buildCardRow('Space Kind', 'Knowledge'),
              _buildCardRow('Space Access', 'Open'),
              _buildCardRow('Space Type', 'Team'),
              _buildCardRow('Space Isolation', 'Non-Isolated'),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds a section title for the card.
  Widget _buildCardSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  /// Builds a row in the card with a label and its corresponding value.
  Widget _buildCardRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '$label:',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the widget displaying the tiles.
  Widget _buildTiles(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        depth: 6,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.backgroundInverseTertiary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundInverseTertiary(context),
          width: 2,
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return _buildTileHeader(context);
            case 1:
              return _buildAccountTile(context);
            case 2:
              return _buildPayTile(context);
            default:
              return _buildColoredBox(
                  context, AppColors.backgroundTertiary(context));
          }
        },
      ),
    );
  }

  /// Builds the header tile with a title.
  Widget _buildTileHeader(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
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
            bottomRight: Radius.circular(24),
          )),
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
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  /// Builds a colored box to be displayed as a tile.
  Widget _buildColoredBox(BuildContext context, Color color) {
    return Neumorphic(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        depth: 6,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: color,
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundTertiary(context),
          width: 2,
        ),
      ),
      child: SizedBox(
        height: 120,
        width: MediaQuery.of(context).size.width - 12,
      ),
    );
  }

  Widget _buildNeuTile(BuildContext context, Widget childWidget) {
    return Neumorphic(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        depth: 6,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.backgroundTertiary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundTertiary(context),
          width: 2,
        ),
      ),
      child: SizedBox(
        height: 120,
        child: childWidget,
      ),
    );
  }

  /// Builds an account tile to be displayed as a tile.
  Widget _buildAccountTile(BuildContext context) {
    return FutureBuilder<Account>(
      future: AccountData().readAccount(), // Fetch account data
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Show a loading spinner while the data is being fetched
          return _buildColoredBox(context, Colors.orange.shade100);
        } else if (snapshot.hasError) {
          // Handle errors if the data fetching failed
          return _buildColoredBox(
            context,
            Colors.red.shade100,
          );
        } else if (!snapshot.hasData || snapshot.data == Account.getDefault()) {
          // Show a default tile if no account data is available
          return _buildColoredBox(
            context,
            Colors.grey.shade200,
          );
        } else {
          // Display account information in a tile
          Account account = snapshot.data!;
          Widget accountInfoWidget = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account Details",
              ),
              const SizedBox(height: 8),
              Text(
                "Account ID: ${account.accountId}",
              ),
              Text(
                "Name: ${account.accountFirstName}",
              ),
              Text(
                "Email: ${account.accountPersonalEmailId}",
              ),
              Text(
                "Billing Active: ${account.accountBillingActive ? 'Yes' : 'No'}",
              ),
            ],
          );
          return _buildNeuTile(context, accountInfoWidget);
        }
      },
    );
  }

  _buildPayTile(BuildContext context) {
    Widget accountPayWidget = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ethos Coin Balance",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: AppColors.contentPrimary(context),
              ),
            ),
            SizedBox(height: 4),
            FutureBuilder<AccountEthosCoinBalanceResponse>(
              future: PayInAccountService.accountEthosCoinBalance(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text(
                    "Loading...",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text(
                    "Error",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                    ),
                  );
                } else if (snapshot.data == null ||
                    snapshot.data!.responseMeta.metaDone == false) {
                  return Text(
                    "0.00",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.contentPrimary(context),
                    ),
                  );
                } else {
                  return Text(
                    "${snapshot.data!.balance.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.contentPrimary(context),
                    ),
                  );
                }
              },
            ),
          ],
        ),
        Icon(
          Icons.monetization_on,
          color: Colors.green,
          size: 24,
        ),
      ],
    );
    return _buildNeuTile(context, accountPayWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Expanded(
        flex: LayoutBreakpoint().getBreakpoint(context) <= 4 ? 6 : 4,
        child: ListView(
          children: [_buildTiles(context)],
        ),
      ),
    );
  }
}
