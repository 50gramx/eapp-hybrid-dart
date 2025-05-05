import 'package:eapp_dart_domain/ethos/elint/collars/DC499999994.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/services/collars/DC499999994EPME5000Capabilities.dart';
import 'package:fifty_gramx/services/datetime/DateTimeService.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class DC499999994EAIP1001 extends StatefulWidget {
  const DC499999994EAIP1001({
    Key? key,
    required this.domainId,
  }) : super(key: key);

  final String domainId;

  @override
  _DC499999994EAIP1001State createState() => _DC499999994EAIP1001State();
}

class _DC499999994EAIP1001State extends State<DC499999994EAIP1001> {
  List<DC499999994> skincare_product_collars = [];

  Future<List<DC499999994>> updateCollars() async {
    print("updateCollars");
    skincare_product_collars =
        await DC499999994EPME5000Capabilities.list(widget.domainId);
    print(
        "updateCollars: skincare_product_collars, ${skincare_product_collars.length}");
    return skincare_product_collars;
  }

  @override
  void initState() {
    super.initState();
  }

  loadSkincareProductManagePage(DC499999994 collar) async {
    await AppFlowManager.instance.loadAppOnTheGo(
      appName: "pods",
      orgName: "ethos",
      communityCode: 70,
      appIndex: 0,
      collarNameCode: "DC499999994",
      pageNameCode: "EAIP1003",
      domainIdentifier: widget.domainId,
      pageIdentifiers: {
        "collar_id": "${collar.id}",
        "product_id": "${collar.skincareProduct.id}"
      },
    );
    AppFlowManager.instance.sendOpenDynamicAppNotification(
      appName: "pods",
      orgName: "ethos",
      communityCode: 70,
      appIndex: 0,
      collarNameCode: "DC499999994",
      pageNameCode: "EAIP1003",
      domainIdentifier: widget.domainId,
      pageIdentifiers: {
        "collar_id": "${collar.id}",
        "product_id": "${collar.skincareProduct.id}"
      },
    );
  }

  loadSkincareProductCreatePage() async {
    await AppFlowManager.instance.loadAppOnTheGo(
      appName: "pods",
      orgName: "ethos",
      communityCode: 70,
      appIndex: 0,
      collarNameCode: "DC499999994",
      pageNameCode: "EAIP1002",
      domainIdentifier: widget.domainId,
    );
    AppFlowManager.instance.sendOpenDynamicAppNotification(
      appName: "pods",
      orgName: "ethos",
      communityCode: 70,
      appIndex: 0,
      collarNameCode: "DC499999994",
      pageNameCode: "EAIP1002",
      domainIdentifier: widget.domainId,
    );
  }

  Widget buildProductList() {
    return FutureBuilder<List<DC499999994>>(
      future: updateCollars(),
      builder: (context, snapshot) {
        print("updateCollars: inside the builder");
        if (snapshot.connectionState == ConnectionState.waiting) {
          print("updateCollars: waiting");
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          print("updateCollars: hasError");
          return Center(
            child: Text(
              'updateCollars: Error: ${snapshot.error}',
              style: const TextStyle(
                color: Colors.red,
                fontFamily: "Montserrat",
              ),
            ),
          );
        } else if (!snapshot.hasData || skincare_product_collars.isEmpty) {
          print("updateCollars: doesn't have Data or empty");
          return const Center(
            child: Text(
              'updateCollars: No SkincareProducts found.',
              style: TextStyle(fontFamily: "Montserrat"),
            ),
          );
        } else {
          print("updateCollars: hasData");
          print(
              "updateCollars: skincare_product_collars: ${skincare_product_collars.first}");
          return Container(
              height: 600,
              child: ListView.builder(
                itemCount: skincare_product_collars.length,
                itemBuilder: (context, index) {
                  final skincare_product_collar =
                      skincare_product_collars[index];
                  print(
                      "updateCollars: skincare_product: ${skincare_product_collar}");
                  return Neumorphic(
                    margin: const EdgeInsets.all(8.0),
                    style: NeumorphicStyle(
                      lightSource: NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor: NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(context),
                      shape: NeumorphicShape.flat,
                      disableDepth: true,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(24)),
                      color: AppColors.backgroundPrimary(context),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color: AppColors.backgroundSecondary(context),
                        width: 2,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        loadSkincareProductManagePage(skincare_product_collar);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // SkincareProducts Name
                            Text(
                              skincare_product_collar.skincareProduct.name,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat",
                              ),
                            ),
                            const SizedBox(height: 8.0),

                            // Namespace and Status
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${skincare_product_collar.skincareProduct.description}',
                                  style: const TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Last Updated: ${DateTimeService().getFormattedTimeOrDate(skincare_product_collar.updatedAt)}',
                                  style:
                                      const TextStyle(fontFamily: "Montserrat"),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8.0),

                            // Button to View More Details
                            Align(
                              alignment: Alignment.centerRight,
                              child: NeumorphicButton(
                                  provideHapticFeedback: true,
                                  onPressed: () {
                                    loadSkincareProductManagePage(
                                        skincare_product_collar);
                                  },
                                  style: NeumorphicStyle(
                                    lightSource:
                                        NeumorphicTheme.isUsingDark(context)
                                            ? LightSource.bottomRight
                                            : LightSource.topLeft,
                                    shadowLightColor:
                                        NeumorphicTheme.isUsingDark(context)
                                            ? AppColors.gray600
                                            : AppColors.backgroundSecondary(
                                                context),
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(24)),
                                    color:
                                        AppColors.backgroundSecondary(context),
                                    border: NeumorphicBorder(
                                      isEnabled: true,
                                      color:
                                          AppColors.backgroundPrimary(context),
                                      width: 2,
                                    ),
                                    disableDepth: true,
                                  ),
                                  padding: const EdgeInsets.all(12.0),
                                  margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                                  child: Text(
                                    "View Details",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color:
                                            AppColors.contentPrimary(context),
                                        fontSize: 14,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w500),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(
            labelText: "DC499999994EAIP1001: Domain ID: ${widget.domainId}",
            actionLabelText: "Add Skincare Product",
            isBackEnabled: false,
            isActionEnabled: true,
            trailingButtonCallback: () {
              loadSkincareProductCreatePage();
            },
            onStretchTriggerCallback: () {},
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            // Dynamically generate sections
            buildProductList(),
          ]))
        ],
      ),
    );
  }
}
