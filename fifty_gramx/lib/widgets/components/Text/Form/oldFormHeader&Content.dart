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

/*
ProgressHeadingListTile(
                        isHeadingActive: isCreatingGalaxyPod,
                        isProgressed: isGalaxyPodCreated,
                        headingTitle: "Choose your Galaxe Pod"),
                    ProgressContentListTile(
                        primaryButtonOnPressed: () => {},
                        secondaryButtonOnPressed: () => {},
                        isContentActive: isCreatingGalaxyPod,
                        isPrimaryButtonActive: false,
                        contentWidget: Column(
                          children: [
                            Expanded(
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                  lightSource:
                                      NeumorphicTheme.isUsingDark(context)
                                          ? LightSource.bottomRight
                                          : LightSource.topLeft,
                                  shadowLightColor: NeumorphicTheme.isUsingDark(
                                          context)
                                      ? AppColors.gray600
                                      : AppColors.backgroundSecondary(context),
                                  border: NeumorphicBorder(
                                      color:
                                          NeumorphicTheme.isUsingDark(context)
                                              ? AppColors.gray600
                                              : AppColors.backgroundSecondary(
                                                  context),
                                      width: 0.5),
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(16)),
                                ),
                                child: NeumorphicToggle(
                                  style: NeumorphicToggleStyle(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      _podModeToggleSelectedIndex = value;
                                      print("_firstSelected: $value");
                                    });
                                  },
                                  selectedIndex: _podModeToggleSelectedIndex,
                                  thumb: SizedBox(),
                                  displayForegroundOnlyIfSelected: true,
                                  children: [
                                    ToggleElement(
                                      background: Center(
                                          child: Text("Controlled",
                                              style: AppTextStyle
                                                  .toggleBackgroundTextStyle(
                                                      context))),
                                      foreground: Center(
                                          child: Text("Controlled",
                                              style: AppTextStyle
                                                  .toggleForegroundTextStyle(
                                                      context))),
                                    ),
                                    ToggleElement(
                                      background: Center(
                                          child: Text("Shared",
                                              style: AppTextStyle
                                                  .toggleBackgroundTextStyle(
                                                      context))),
                                      foreground: Center(
                                          child: Text("Shared",
                                              style: AppTextStyle
                                                  .toggleForegroundTextStyle(
                                                      context))),
                                    ),
                                    ToggleElement(
                                      background: Center(
                                          child: Text("Host",
                                              style: AppTextStyle
                                                  .toggleBackgroundTextStyle(
                                                      context))),
                                      foreground: Center(
                                          child: Text("Host",
                                              style: AppTextStyle
                                                  .toggleForegroundTextStyle(
                                                      context))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                                visible: _podModeToggleSelectedIndex == 0,
                                child: Column(
                                  children: [
                                    ProgressSubContentListTile(
                                      podMode: _podModeToggleSelectedIndex,
                                      selected: 1,
                                      totalAdjacent: 3,
                                      podType: "nano",
                                      cpuCores: 2,
                                      memorySize: 0.5,
                                      netSpeed: 5,
                                      sharingCapacity: 1,
                                      freeStorage: false,
                                      freeArchiveStorage: "0 GB",
                                      freeFrequentStorage: "0 GB",
                                      podPrice: 366,
                                      podSelectedCallback: () {
                                        continueSelectingGalaxyPod(0, false);
                                      },
                                    ).build(context),
                                    ProgressSubContentListTile(
                                      podMode: _podModeToggleSelectedIndex,
                                      selected: 2,
                                      totalAdjacent: 3,
                                      podType: "micro",
                                      cpuCores: 2,
                                      memorySize: 1,
                                      netSpeed: 5,
                                      sharingCapacity: 3,
                                      freeStorage: false,
                                      freeArchiveStorage: "0 GB",
                                      freeFrequentStorage: "0 GB",
                                      podPrice: 489,
                                      podSelectedCallback: () {
                                        continueSelectingGalaxyPod(1, false);
                                      },
                                    ).build(context),
                                    ProgressSubContentListTile(
                                      podMode: _podModeToggleSelectedIndex,
                                      selected: 3,
                                      totalAdjacent: 3,
                                      podType: "small",
                                      cpuCores: 2,
                                      memorySize: 2,
                                      netSpeed: 5,
                                      sharingCapacity: 5,
                                      freeStorage: false,
                                      freeArchiveStorage: "0 GB",
                                      freeFrequentStorage: "0 GB",
                                      podPrice: 587,
                                      podSelectedCallback: () {
                                        continueSelectingGalaxyPod(2, false);
                                      },
                                    ).build(context),
                                  ],
                                )),
                            Visibility(
                                visible: _podModeToggleSelectedIndex == 1,
                                child: Column(
                                  children: [
                                    ProgressSubContentListTile(
                                      podMode: _podModeToggleSelectedIndex,
                                      selected: 1,
                                      totalAdjacent: 4,
                                      podType: "medium",
                                      cpuCores: 2,
                                      memorySize: 4,
                                      netSpeed: 5,
                                      sharingCapacity: 1,
                                      freeStorage: true,
                                      freeArchiveStorage: "13 GB",
                                      freeFrequentStorage: "158 GB",
                                      podPrice: 234,
                                      podSelectedCallback: () {
                                        continueSelectingGalaxyPod(3, true);
                                      },
                                    ).build(context),
                                    ProgressSubContentListTile(
                                      podMode: _podModeToggleSelectedIndex,
                                      selected: 2,
                                      totalAdjacent: 4,
                                      podType: "large",
                                      cpuCores: 2,
                                      memorySize: 8,
                                      netSpeed: 5,
                                      sharingCapacity: 1,
                                      freeStorage: true,
                                      freeArchiveStorage: "25 GB",
                                      freeFrequentStorage: "316 GB",
                                      podPrice: 469,
                                      podSelectedCallback: () {
                                        continueSelectingGalaxyPod(4, true);
                                      },
                                    ).build(context),
                                    ProgressSubContentListTile(
                                      podMode: _podModeToggleSelectedIndex,
                                      selected: 3,
                                      totalAdjacent: 4,
                                      podType: "xlarge",
                                      cpuCores: 4,
                                      memorySize: 16,
                                      netSpeed: 5,
                                      sharingCapacity: 1,
                                      freeStorage: true,
                                      freeArchiveStorage: "76 GB",
                                      freeFrequentStorage: "948 GB",
                                      podPrice: 1408,
                                      podSelectedCallback: () {
                                        continueSelectingGalaxyPod(5, true);
                                      },
                                    ).build(context),
                                    ProgressSubContentListTile(
                                      podMode: _podModeToggleSelectedIndex,
                                      selected: 4,
                                      totalAdjacent: 4,
                                      podType: "xxlarge",
                                      cpuCores: 8,
                                      memorySize: 32,
                                      netSpeed: 5,
                                      sharingCapacity: 1,
                                      freeStorage: true,
                                      freeArchiveStorage: "152 GB",
                                      freeFrequentStorage: "1897 GB",
                                      podPrice: 2817,
                                      podSelectedCallback: () {
                                        continueSelectingGalaxyPod(6, true);
                                      },
                                    ).build(context),
                                  ],
                                )),
                            Visibility(
                                visible: _podModeToggleSelectedIndex == 2,
                                child: Column(
                                  children: [
                                    ProgressSubContentListTile(
                                      podMode: _podModeToggleSelectedIndex,
                                      selected: 1,
                                      totalAdjacent: 4,
                                      podType: "medium",
                                      cpuCores: 2,
                                      memorySize: 4,
                                      netSpeed: 5,
                                      sharingCapacity: 50,
                                      freeStorage: true,
                                      freeArchiveStorage: "1 TB",
                                      freeFrequentStorage: "8 TB",
                                      podPrice: 35223,
                                      podSelectedCallback: () {
                                        continueSelectingGalaxyPod(3, false);
                                      },
                                    ).build(context),
                                    ProgressSubContentListTile(
                                      podMode: _podModeToggleSelectedIndex,
                                      selected: 2,
                                      totalAdjacent: 4,
                                      podType: "large",
                                      cpuCores: 2,
                                      memorySize: 8,
                                      netSpeed: 5,
                                      sharingCapacity: 50,
                                      freeStorage: true,
                                      freeArchiveStorage: "1 TB",
                                      freeFrequentStorage: "15 TB",
                                      podPrice: 70447,
                                      podSelectedCallback: () {
                                        continueSelectingGalaxyPod(4, false);
                                      },
                                    ).build(context),
                                    ProgressSubContentListTile(
                                      podMode: _podModeToggleSelectedIndex,
                                      selected: 3,
                                      totalAdjacent: 4,
                                      podType: "xlarge",
                                      cpuCores: 4,
                                      memorySize: 16,
                                      netSpeed: 5,
                                      sharingCapacity: 50,
                                      freeStorage: true,
                                      freeArchiveStorage: "4 TB",
                                      freeFrequentStorage: "46 TB",
                                      podPrice: 140894,
                                      podSelectedCallback: () {
                                        continueSelectingGalaxyPod(5, false);
                                      },
                                    ).build(context),
                                    ProgressSubContentListTile(
                                      podMode: _podModeToggleSelectedIndex,
                                      selected: 4,
                                      totalAdjacent: 4,
                                      podType: "xxlarge",
                                      cpuCores: 8,
                                      memorySize: 32,
                                      netSpeed: 5,
                                      sharingCapacity: 50,
                                      freeStorage: true,
                                      freeArchiveStorage: "7 TB",
                                      freeFrequentStorage: "93 TB",
                                      podPrice: 281788,
                                      podSelectedCallback: () {
                                        continueSelectingGalaxyPod(6, false);
                                      },
                                    ).build(context),
                                  ],
                                )),
                          ],
                        ),
                        contentActionButtonTitle: "Confirm Pod Configuration"),
 */