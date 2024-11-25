import 'dart:convert';

import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/notification_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/connections_notification_tray.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/conversations_notification_tray.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/identity_notification_tray.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/machines_notification_tray.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/pay_notification_tray.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/pods_notification_tray.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/spaces_notification_tray.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/connections/LocalConnectionsService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/LocalConversationsService.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/services/identity/account/payInAccountService.dart';
import 'package:fifty_gramx/services/identity/accountAssistant/discoverAccountAssistantService.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/receiveAccountMessageService.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/sendAccountMessageService.dart';
import 'package:fifty_gramx/services/product/knowledge/space/discoverSpaceKnowledgeService.dart';
import 'package:fifty_gramx/services/product/service/space/discoverSpaceServiceService.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:http/http.dart' as http;

/// A widget that displays a pane with various tiles of information.
///
/// The pane can be dynamically shown or hidden based on notifications received.
class OpenTilesPane extends StatefulWidget {
  /// Callback function that gets triggered when a section item is selected.
  final Function(int) selectPressedSectionItem;

  /// Determines if the pane is navigating left.
  final bool isNavigatingLeft;
  final bool isVisible;
  final String focusPaneKey;
  final ValueChanged<String> focusPaneShift;

  /// Creates an [OpenTilesPane] widget.
  const OpenTilesPane({
    required this.selectPressedSectionItem,
    required this.isNavigatingLeft,
    required this.isVisible,
    required this.focusPaneKey,
    required this.focusPaneShift,
    Key? key,
  }) : super(key: key);

  @override
  _OpenTilesPaneState createState() => _OpenTilesPaneState();
}

class _OpenTilesPaneState extends State<OpenTilesPane> {
  @override
  void initState() {
    super.initState();
    getTilesData();
  }

  Account account = Account();
  double walletBalance = 0.0;
  Map<String, int> podNPageDeployed = {};
  List<Map<String, dynamic>> nodeData = [];
  List<Conversation> conversationsData = [];

  void openIdentityApp() {
    if (widget.focusPaneKey != "Open Pages") {
      widget.focusPaneShift("Open Pages");
    }
    AppFlowManager.instance.sendOpenAppNotification(
        communityCode: 50, orgName: "ethos", appName: "identity");
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
        disableDepth: true,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.backgroundPrimary(context),
        border: NeumorphicBorder(
          isEnabled: false,
          color: AppColors.backgroundSecondary(context),
          width: 2,
        ),
      ),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return _buildAccountTile(context);
            case 1:
              return _buildPayTile(context);
            case 2:
              return _buildConnectionsTile(context);
            case 3:
              return _buildConversationsTile(context);
            case 4:
              return SizedBox.shrink(); // _buildSpacesTile(context);
            case 5:
              return _buildPodsTile(context);
            case 6:
              return _buildMachinesTile(context);
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

  getTilesData() async {
    Account ac = await AccountData().readAccount();
    setState(() {
      account = ac;
    });
    var balResponse = await PayInAccountService.accountEthosCoinBalance();
    setState(() {
      walletBalance = balResponse.balance;
    });
    var pnpd = await _fetchTotalPodsNPagesDeployed();
    setState(() {
      podNPageDeployed = pnpd;
    });
    var nd = await _fetchNodeDetails();
    setState(() {
      nodeData = nd;
    });
    var cd = _buildRecentConversationsData();
    setState(() {
      conversationsData = cd;
    });
  }

  /// Builds an account tile to be displayed as a tile.
  Widget _buildAccountTile(BuildContext context) {
    return IdentityNotificationTray(
      '${account.accountFirstName} ${account.accountLastName}',
      'https://example.com/profile.jpg',
      account.accountBillingActive,
      'Milky Way',
      'Andromeda',
      'Open Galaxy',
      notifications: NotificationManager.instance.getPageNotifications(
          communityCode: "50",
          orgName: "ethos",
          appName: "identity",
          pageNameCode: "EAIP-1001"),
      onViewDetails: () {
        openIdentityApp();
      },
      onClearAppNotifications: () => NotificationManager.instance
          .clearPageNotifications(
              communityCode: "50",
              orgName: "ethos",
              appName: "identity",
              pageNameCode: "EAIP-1001"),
    );
  }

  _buildPayTile(BuildContext context) {
    return PayNotificationTray(
        notifications: NotificationManager.instance.getPageNotifications(
            communityCode: "50",
            orgName: "ethos",
            appName: "pay",
            pageNameCode: "EAIP-1001"),
        onViewDetails: () {
          if (widget.focusPaneKey != "Open Pages") {
            widget.focusPaneShift("Open Pages");
          }
          AppFlowManager.instance.sendOpenAppNotification(
              communityCode: 52, orgName: "ethos", appName: "pay");
        },
        onClearAppNotifications: () => NotificationManager.instance
            .clearPageNotifications(
                communityCode: "52",
                orgName: "ethos",
                appName: "pay",
                pageNameCode: "EAIP-1001"),
        walletBalance: walletBalance);
  }

  _buildConnectionsTile(BuildContext context) {
    return ConnectionsNotificationTray(
      notifications: NotificationManager.instance.getPageNotifications(
          communityCode: "50",
          orgName: "ethos",
          appName: "connections",
          pageNameCode: "EAIP-1001"),
      onViewDetails: () {
        if (widget.focusPaneKey != "Open Pages") {
          widget.focusPaneShift("Open Pages");
        }
        AppFlowManager.instance.sendOpenAppNotification(
            communityCode: 50, orgName: "ethos", appName: "connections");
      },
      onClearAppNotifications: () => NotificationManager.instance
          .clearPageNotifications(
              communityCode: "50",
              orgName: "ethos",
              appName: "connections",
              pageNameCode: "EAIP-1001"),
      activeConnections:
          LocalConnectionsService.fullyConnectedAccounts.keys.toList().length +
              LocalConnectionsService.fullyConnectedAccountAssistants.keys
                  .toList()
                  .length,
      pendingConnections: LocalConnectionsService
              .interestedPartiallyConnectedAccounts.keys
              .toList()
              .length +
          LocalConnectionsService.notInterestedPartiallyConnectedAccounts.keys
              .toList()
              .length,
      trustedAccounts:
          LocalConnectionsService.fullyConnectedAccounts.keys.toList().length,
      trustedCollars: LocalConnectionsService
              .fullyConnectedAccountAssistants.keys
              .toList()
              .length +
          1,
      trustedSpaces:
          LocalConnectionsService.fullyConnectedAccounts.keys.toList().length +
              1,
    );
  }

  List<Conversation> _buildRecentConversationsData() {
    // Get the list of the three most recent conversations
    final recentConversations =
        LocalConversationsService.conversedEntityWithLastConversationMessages
            .take(3) // Take only the first three conversations
            .toList();

    List<Conversation> recentConvo = [];

    recentConversations
        .asMap()
        .forEach((index, conversedEntityWithLastConversationMessage) {
      String centerTitleText;
      String centerSubtitleText;
      var heroTag;

      if (conversedEntityWithLastConversationMessage
          .lastConversationMessage.isMessageEntityAccountAssistant) {
        var assistantName = conversedEntityWithLastConversationMessage
            .conversedAccountAssistant.accountAssistantName;
        heroTag = conversedEntityWithLastConversationMessage
            .conversedAccountAssistant.accountAssistantId;
        centerTitleText =
            "${assistantName[0].toUpperCase()}${assistantName.substring(1)}";
        var lastMessage =
            conversedEntityWithLastConversationMessage.lastConversationMessage;
        centerSubtitleText = lastMessage.isMessageSent
            ? (lastMessage.isMessageEntityAccountAssistant
                ? lastMessage.accountAssistantSentMessage.message
                : lastMessage.accountSentMessage.message)
            : (lastMessage.isMessageEntityAccountAssistant
                ? lastMessage.accountAssistantReceivedMessage.message
                : lastMessage.accountReceivedMessage.message);
      } else {
        var firstName =
            "${conversedEntityWithLastConversationMessage.conversedAccount.accountFirstName[0].toUpperCase()}${conversedEntityWithLastConversationMessage.conversedAccount.accountFirstName.substring(1)}";
        var lastName =
            "${conversedEntityWithLastConversationMessage.conversedAccount.accountLastName[0].toUpperCase()}${conversedEntityWithLastConversationMessage.conversedAccount.accountLastName.substring(1)}";
        heroTag = conversedEntityWithLastConversationMessage
            .conversedAccount.accountId;
        centerTitleText = "$firstName $lastName";
        var lastMessage =
            conversedEntityWithLastConversationMessage.lastConversationMessage;
        centerSubtitleText = lastMessage.isMessageSent
            ? (lastMessage.isMessageEntityAccountAssistant
                ? lastMessage.accountAssistantSentMessage.message
                : lastMessage.accountSentMessage.message)
            : (lastMessage.isMessageEntityAccountAssistant
                ? lastMessage.accountAssistantReceivedMessage.message
                : lastMessage.accountReceivedMessage.message);
      }

      recentConvo.add(
          Conversation(name: centerTitleText, lastMessage: centerSubtitleText));
      // Render each conversation row
      // buildConversationRow(
      //     heroTag, centerTitleText, centerSubtitleText, animation);
    });

    return recentConvo;
  }

  _buildConversationsTile(BuildContext context) {
    return ConversationsNotificationTray(
      conversationsData,
      notifications: NotificationManager.instance.getPageNotifications(
          communityCode: "50",
          orgName: "ethos",
          appName: "conversations",
          pageNameCode: "EAIP-1001"),
      onViewDetails: () {
        if (widget.focusPaneKey != "Open Pages") {
          widget.focusPaneShift("Open Pages");
        }
        AppFlowManager.instance.sendOpenAppNotification(
            communityCode: 50, orgName: "ethos", appName: "conversations");
      },
      onClearAppNotifications: () => NotificationManager.instance
          .clearPageNotifications(
              communityCode: "50",
              orgName: "ethos",
              appName: "conversations",
              pageNameCode: "EAIP-1001"),
    );
  }

  _buildSpacesTile(BuildContext context) {
    return FutureBuilder<Account>(
      future: AccountData().readAccount(),
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
        } else {
          return FutureBuilder<AccountAssistant>(
              future:
                  DiscoverAccountAssistantService.getAccountAssistantByAccount(
                      snapshot.data!),
              builder: (context, assistantSnap) {
                if (assistantSnap.connectionState == ConnectionState.waiting) {
                  return Text(
                    "Loading...",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  );
                } else if (assistantSnap.connectionState ==
                        ConnectionState.done &&
                    assistantSnap.hasData) {
                  return SpacesNotificationTray(
                    notifications: NotificationManager.instance
                        .getPageNotifications(
                            communityCode: "50",
                            orgName: "ethos",
                            appName: "knowledge_spaces",
                            pageNameCode: "EAIP-1001"),
                    onViewDetails: () {
                      if (widget.focusPaneKey != "Space Domains") {
                        widget.focusPaneShift("Space Domains");
                      }
                      // AppFlowManager.instance.sendOpenAppNotification(
                      //     communityCode: 50,
                      //     orgName: "ethos",
                      //     appName: "knowledge_spaces");
                    },
                    onClearAppNotifications: () => NotificationManager.instance
                        .clearPageNotifications(
                            communityCode: "50",
                            orgName: "ethos",
                            appName: "knowledge_spaces",
                            pageNameCode: "EAIP-1001"),
                  );
                } else {
                  return Text(
                    "Error",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                    ),
                  );
                }
              });
        }
      },
    );
  }

  Future<List<Map<String, dynamic>>> _fetchNodeDetails() async {
    try {
      final response = await http.get(
        Uri.parse('https://causal-regular-ladybug.ngrok-free.app/get_nodes'),
        headers: {'ngrok-skip-browser-warning': '69420'},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return List<Map<String, dynamic>>.from(data['nodes']);
      } else {
        // Handle error response
        print('Failed to load GPU details: ${response.statusCode}');
        return [];
      }
    } catch (error) {
      // Handle network error
      print('Error fetching GPU details: $error');
      return [];
    }
  }

  Future<MachinesTileData> _fetchMachinesTileData() async {
    try {
      // Fetch account data
      List<Map<String, dynamic>> nodeDetails = await _fetchNodeDetails();

      // Fetch account assistant data
      print("nodeDetails: ${nodeDetails}");

      // Assuming you have methods to calculate these aggregated details
      // var aggregatedCpu = calculateAggregatedCpu(nodeDetails);
      // var aggregatedMemory = calculateAggregatedMemory(nodeDetails);
      // var aggregatedSsdStorage = calculateAggregatedSsdStorage(nodeDetails);
      // var aggregatedHddStorage = calculateAggregatedHddStorage(nodeDetails);
      // var aggregatedGpuMemory = calculateAggregatedGpuMemory(nodeDetails);
      // var aggregatedGpuCores = calculateAggregatedGpuCores(nodeDetails);
      // var aggregatedGpuFlops = calculateAggregatedGpuFlops(nodeDetails);
      // var numberOfRegions = calculateNumberOfRegions(nodeDetails);
      // var numberOfNodes = calculateNumberOfNodes(nodeDetails);

      var aggregatedCpu = 1.0;
      var aggregatedMemory = 1.9;
      var aggregatedSsdStorage = 1.0;
      var aggregatedHddStorage = 1.9;
      var aggregatedGpuMemory = 1.0;
      var aggregatedGpuCores = 1;
      var aggregatedGpuFlops = 1.0;
      var numberOfRegions = 1;
      var numberOfNodes = 1;

      return MachinesTileData(
        aggregatedCpu: aggregatedCpu,
        aggregatedMemory: aggregatedMemory,
        aggregatedSsdStorage: aggregatedSsdStorage,
        aggregatedHddStorage: aggregatedHddStorage,
        aggregatedGpuMemory: aggregatedGpuMemory,
        aggregatedGpuCores: aggregatedGpuCores,
        aggregatedGpuFlops: aggregatedGpuFlops,
        numberOfRegions: numberOfRegions,
        numberOfNodes: numberOfNodes,
      );
    } catch (e) {
      throw Exception("Error fetching data");
    }
  }

  _buildMachinesTile(BuildContext context) {
    return MachinesNotificationTray(
      nodeData: nodeData,
      notifications: NotificationManager.instance.getPageNotifications(
          communityCode: "70",
          orgName: "ethos",
          appName: "pods-gpu-pricing",
          pageNameCode: "EAIP-1001"),
      onViewDetails: () {
        if (widget.focusPaneKey != "Open Pages") {
          widget.focusPaneShift("Open Pages");
        }
        AppFlowManager.instance.sendOpenAppNotification(
            communityCode: 70, orgName: "ethos", appName: "pods-gpu-pricing");
      },
      onClearAppNotifications: () => NotificationManager.instance
          .clearPageNotifications(
              communityCode: "70",
              orgName: "ethos",
              appName: "pods-gpu-pricing",
              pageNameCode: "EAIP-1001"),
    );
  }

  Future<Map<String, int>> _fetchTotalPodsNPagesDeployed() async {
    int totalPods = 2;
    int totalPages = 0;

    var knowledgeDomains =
        await DiscoverSpaceKnowledgeService.getSpaceKnowledgeDomains();
    totalPods += knowledgeDomains.spaceKnowledgeDomains.length;
    var serviceDomains =
        await DiscoverSpaceServiceService.getSpaceServiceDomains();
    totalPods += serviceDomains.spaceServiceDomains.length;

    var sentAcMsg =
        await SendAccountMessageService.getAccountSentMessagesCount();
    totalPages += sentAcMsg.accountSentMessagesCount;
    var recAcMs =
        await ReceiveAccountMessageService.getAccountReceivedMessagesCount();
    totalPages += recAcMs.accountReceivedMessagesCount;
    var sentAsMsg =
        await SendAccountMessageService.getAccountAssistantSentMessagesCount();
    totalPages += sentAsMsg.accountAssistantSentMessagesCount;
    var reAsMsg = await ReceiveAccountMessageService
        .getAccountAssistantReceivedMessagesCount();
    totalPages += reAsMsg.accountAssistantReceivedMessagesCount;

    return {
      "pods": totalPods,
      "pages": totalPages,
    };
  }

  _buildPodsTile(BuildContext context) {
    return PodsNotificationTray(
      podNPageDeployed["pods"] ?? 0,
      podNPageDeployed["pages"] ?? 0,
      notifications: NotificationManager.instance.getPageNotifications(
          communityCode: "70",
          orgName: "ethos",
          appName: "pods",
          pageNameCode: "EAIP-1001"),
      onViewDetails: () {
        if (widget.focusPaneKey != "Open Pages") {
          widget.focusPaneShift("Open Pages");
        }
        AppFlowManager.instance.sendOpenAppNotification(
            communityCode: 70, orgName: "ethos", appName: "pods");
      },
      onClearAppNotifications: () => NotificationManager.instance
          .clearPageNotifications(
              communityCode: "70",
              orgName: "ethos",
              appName: "pods",
              pageNameCode: "EAIP-1001"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.isVisible,
      child: Container(
        width: 322,
        child: _buildTiles(context),
      ),
    );
  }
}

class MachinesTileData {
  final double aggregatedCpu;
  final double aggregatedMemory;
  final double aggregatedSsdStorage;
  final double aggregatedHddStorage;
  final double aggregatedGpuMemory;
  final int aggregatedGpuCores;
  final double aggregatedGpuFlops;
  final int numberOfRegions;
  final int numberOfNodes;

  MachinesTileData({
    required this.aggregatedCpu,
    required this.aggregatedMemory,
    required this.aggregatedSsdStorage,
    required this.aggregatedHddStorage,
    required this.aggregatedGpuMemory,
    required this.aggregatedGpuCores,
    required this.aggregatedGpuFlops,
    required this.numberOfRegions,
    required this.numberOfNodes,
  });
}
