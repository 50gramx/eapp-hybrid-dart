import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain_file.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge_domain/discover_space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge_domain_file/create_space_knowledge_domain_file.pb.dart';
import 'package:fifty_gramx/services/product/knowledge/domain/accessSpaceKnowledgeDomainService.dart';
import 'package:fifty_gramx/services/product/knowledge/domain/discoverSpaceKnowledgeDomainService.dart';
import 'package:fifty_gramx/services/product/knowledge/file/createSpaceKnowledgeDomainFileService.dart';
import 'package:fifty_gramx/services/product/knowledge/file/deleteSpaceKnowledgeDomainFileService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/screen/appTabBar.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// This is the stateful widget that the main application instantiates.
class DiscoverSpaceKnowledgeDomainFilesPage extends StatefulWidget {
  const DiscoverSpaceKnowledgeDomainFilesPage({
    Key? key,
    required this.spaceKnowledgeDomain,
  }) : super(key: key);

  final SpaceKnowledgeDomain spaceKnowledgeDomain;

  @override
  State<DiscoverSpaceKnowledgeDomainFilesPage> createState() =>
      _DiscoverSpaceKnowledgeDomainFilesPageState();
}

class _DiscoverSpaceKnowledgeDomainFilesPageState
    extends State<DiscoverSpaceKnowledgeDomainFilesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundSecondary(context),
      appBar: CustomAppBar(
          labelText: "${widget.spaceKnowledgeDomain.spaceKnowledgeDomainName}",
          actionLabelText: "",
          isBackEnabled: true,
          isActionEnabled: false,
          trailingButtonCallback: () {}),
      body: Column(children: [
        SelectorConfigurationItem(
          titleText: "Pick Files",
          subtitleText: "PDF",
          selectorCallback: () {
            pickPdfFiles();
          },
        ),
        FutureBuilder<GetAllDomainFilesResponse>(
          future: DiscoverSpaceKnowledgeDomainService.getAllDomainFiles(
              widget.spaceKnowledgeDomain),
          builder: (context, snap) {
            if (snap.connectionState == ConnectionState.waiting) {
              return AppProgressIndeterminateWidget();
            } else {
              if (!snap.hasData) {
                return SizedBox();
              } else {
                print(snap.data);
                if (snap.data!.files.length > 0) {
                  return Container(
                    height: snap.data!.files.length * 62,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: snap.data!.files.length,
                        itemBuilder: (context, position) {
                          return SelectorConfigurationItem(
                            titleText:
                                "${snap.data!.files[position].spaceKnowledgeDomainFileName}",
                            subtitleText:
                                "${snap.data!.files[position].spaceKnowledgeDomainFileExtensionType}",
                            selectorCallback: () {
                              deleteSpaceKnowledgeDomainFile(
                                  snap.data!.files[position]);
                            },
                          );
                        }),
                  );
                } else {
                  return SizedBox();
                }
              }
            }
          },
        ),
      ]),
    );
  }

  deleteSpaceKnowledgeDomainFile(
      SpaceKnowledgeDomainFile spaceKnowledgeDomainFile) async {
    await DeleteSpaceKnowledgeDomainFileService.deleteSpaceKnowledgeDomainFile(
        widget.spaceKnowledgeDomain, spaceKnowledgeDomainFile);
    setState(() {});
  }

  pickPdfFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
        withReadStream: true);

    if (result != null) {
      // result.files.map((path) => File(path!)).toList();
      List<PlatformFile> files = result.files;
      print("files: $files");
      if (files.length == 1) {
        await uploadSpaceKnowledgeDomainFile(files.first);
        setState(() {});
      }
    } else {
      // User canceled the picker
    }
  }

  uploadSpaceKnowledgeDomainFile(PlatformFile file) async {
    var spaceKnowledgeDomainServicesAccessAuthDetails =
        (await AccessSpaceKnowledgeDomainService
                .spaceKnowledgeDomainAccessToken(widget.spaceKnowledgeDomain))
            .spaceKnowledgeDomainServicesAccessAuthDetails;
    Stream<UploadSpaceKnowledgeDomainFileRequest> outgoingResponse() async* {
      await for (List<int> fileListInt in file.readStream!) {
        yield UploadSpaceKnowledgeDomainFileRequest()
          ..spaceKnowledgeDomainServicesAccessAuthDetails =
              spaceKnowledgeDomainServicesAccessAuthDetails
          ..spaceKnowledgeDomainFileName = file.name
          ..spaceKnowledgeDomainFileSize = file.size
          ..spaceKnowledgeDomainFileExtensionType = ExtentionType.PDF
          ..fileBuffer = fileListInt;
      }
    }

    final call = (await CreateSpaceKnowledgeDomainFileService.serviceClient)
        .uploadSpaceKnowledgeDomainFile(outgoingResponse());
    await for (var note in call) {
      print("${note.length}");
    }
  }
}
