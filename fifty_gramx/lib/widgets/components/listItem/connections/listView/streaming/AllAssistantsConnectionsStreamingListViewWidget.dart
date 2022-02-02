/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/connect_account.pb.dart';
import 'package:fifty_gramx/services/identity/account/connectAccountService.dart';
import 'package:fifty_gramx/widgets/components/Box/AppBoxDecoration.dart';
import 'package:fifty_gramx/widgets/components/listItem/compact/artworknone/chevronWithLabelTrailing.dart';
import 'package:fifty_gramx/widgets/components/listItem/connections/listItem/AccountConnectedAccountAssistantListItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// This is the stateful widget that the main application instantiates.
class AllAssistantsConnectionsStreamingListViewWidget extends StatefulWidget {
  const AllAssistantsConnectionsStreamingListViewWidget({
    Key? key,
    required this.pushAccountAssistantConversationPage,
    required this.allConnectedAssistantsWithBelongingEntity,
  }) : super(key: key);

  final Function(ConnectedAssistantWithBelongingEntity)
      pushAccountAssistantConversationPage;
  final List<ConnectedAssistantsWithBelongingEntity>
      allConnectedAssistantsWithBelongingEntity;

  @override
  State<AllAssistantsConnectionsStreamingListViewWidget> createState() {
    print("AllAssistantsConnectionsStreamingListViewWidget:createState");
    return _AllAssistantsConnectionsStreamingListViewWidgetState();
  }
}

class _AllAssistantsConnectionsStreamingListViewWidgetState
    extends State<AllAssistantsConnectionsStreamingListViewWidget> {
  // final List<ConnectedAssistantsWithBelongingEntity> getAllConnectedAssistantsWithBelongingEntityStream

  @override
  void initState() {
    super.initState();
    print("_AllAssistantsConnectionsStreamingListViewWidgetState:initState");
  }

  @override
  Widget build(BuildContext context) {
    print("_AllAssistantsConnectionsStreamingListViewWidgetState:build");
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Neumorphic(
        style: NeumorphicStyle(
          color: AppColors.backgroundPrimary(context),
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          border: NeumorphicBorder(
              color: AppColors.backgroundPrimary(context), width: 2),
        ),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChevronWithLabelTrailing(
                  labelText: 'I AM CONNECTED TO',
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:
                      widget.allConnectedAssistantsWithBelongingEntity.length,
                  itemBuilder: (_, int index) {
                    var connectedAssistantWithBelongingEntity = widget
                        .allConnectedAssistantsWithBelongingEntity[index]
                        .connectedAssistantWithBelongingEntity;
                    if (connectedAssistantWithBelongingEntity
                            .connectedAssistantBelongsTo.value ==
                        0) {
                      return AccountConnectedAccountAssistantListItem(
                          connectedAssistantWithBelongingEntity, () {
                        print(
                            "callback AllAssistantsConnectionsStreamingListViewWidget");
                        widget.pushAccountAssistantConversationPage(
                            connectedAssistantWithBelongingEntity);
                      });
                    } else {
                      return SizedBox();
                    }
                  },
                ),
              ],
            )),
      ),
    );
  }
}

/*
StreamBuilder<List<GeneratedMessage>>(
            stream: streamConversationMessages(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(AppColors.secondaryColor),
                  ),
                );
              } else {
                return ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, int index) {
                    var message = snapshot.data![index];
                    if (widget.isAccountConnected) {
                      if (message.runtimeType ==
                          SyncAccountConnectedAccountSentMessagesResponse) {
                        var accountSentMessage =
                            SyncAccountConnectedAccountSentMessagesResponse
                                    .fromJson(message.writeToJson())
                                .accountSentMessage;
                        return AccountConversationsMessagesSentListItem(
                                accountSentMessage)
                            .buildAccountConversationsSentMessage(context);
                      } else if (message.runtimeType ==
                          SyncAccountConnectedAccountReceivedMessagesResponse) {
                        var accountReceivedMessage =
                            SyncAccountConnectedAccountReceivedMessagesResponse
                                    .fromJson(message.writeToJson())
                                .accountReceivedMessage;
                        return AccountConversationsMessagesReceivedListItem(
                                accountReceivedMessage)
                            .buildAccountConversationsReceivedMessage(context);
                      } else if (message.runtimeType ==
                          SyncAccountConnectedAccountAssistantSentMessagesResponse) {
                        var accountAssistantSentMessage =
                            SyncAccountConnectedAccountAssistantSentMessagesResponse
                                    .fromJson(message.writeToJson())
                                .accountAssistantSentMessage;
                        return AccountAssistantConversationsMessagesSentListItem(
                                accountAssistantSentMessage)
                            .buildAccountAssistantConversationsSentMessage(
                                context);
                      } else {
                        var accountAssistantReceivedMessage =
                            SyncAccountConnectedAccountAssistantReceivedMessagesResponse
                                    .fromJson(message.writeToJson())
                                .accountAssistantReceivedMessage;
                        return AccountAssistantConversationsMessagesReceivedListItem(
                                accountAssistantReceivedMessage)
                            .buildAccountAssistantConversationsReceivedMessage(
                                context);
                      }
                    } else {
                      if (message.runtimeType ==
                          SyncAccountConnectedAccountAssistantSentMessagesResponse) {
                        var accountAssistantSentMessage =
                            SyncAccountConnectedAccountAssistantSentMessagesResponse
                                    .fromJson(message.writeToJson())
                                .accountAssistantSentMessage;
                        return AccountAssistantConversationsMessagesSentListItem(
                                accountAssistantSentMessage)
                            .buildAccountAssistantConversationsSentMessage(
                                context);
                      } else {
                        var accountAssistantReceivedMessage =
                            SyncAccountConnectedAccountAssistantReceivedMessagesResponse
                                    .fromJson(message.writeToJson())
                                .accountAssistantReceivedMessage;
                        return AccountAssistantConversationsMessagesReceivedListItem(
                                accountAssistantReceivedMessage)
                            .buildAccountAssistantConversationsReceivedMessage(
                                context);
                      }
                    }
                  },
                );
              }
            },
          )),
 */
