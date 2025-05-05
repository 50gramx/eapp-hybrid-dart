import 'dart:typed_data';

import 'package:eapp_dart_domain/ethos/elint/collars/DC499999994.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge_domain_file.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/knowledge/space_knowledge_domain/discover_space_knowledge_domain.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/knowledge/space_knowledge_domain_file/create_space_knowledge_domain_file.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/knowledge/space_knowledge_domain_file/discover_space_knowledge_domain_file.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/services/collars/DC499999994EPME5000Capabilities.dart';
import 'package:fifty_gramx/services/product/knowledge/domain/accessSpaceKnowledgeDomainService.dart';
import 'package:fifty_gramx/services/product/knowledge/domain/discoverSpaceKnowledgeDomainService.dart';
import 'package:fifty_gramx/services/product/knowledge/file/createSpaceKnowledgeDomainFileService.dart';
import 'package:fifty_gramx/services/product/knowledge/file/discoverSpaceKnowledgeDomainFileService.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class DC499999994EAIP1003 extends StatefulWidget {
  const DC499999994EAIP1003({
    Key? key,
    required this.domainId,
    required this.pageIdentifiers,
  }) : super(key: key);

  final String domainId;
  final Map<String, String> pageIdentifiers;

  @override
  _DC499999994EAIP1003State createState() => _DC499999994EAIP1003State();
}

class _DC499999994EAIP1003State extends State<DC499999994EAIP1003> {
  late String collar_id;
  late String product_id;
  SkincareProduct skincare_product = SkincareProduct();
  SpaceKnowledgeDomain productImagesDomain = SpaceKnowledgeDomain();
  bool isLoading = true;
  List<String> uploadedFiles = [];
  bool isUploading = false;

  Future<void> updateProduct() async {
    print("updateProduct");
    try {
      var p =
          await DC499999994EPME5000Capabilities.get(widget.domainId, collar_id);
      print("DC499999994EAIP1003:p: ${p}");
      setState(() {
        skincare_product = p.skincareProduct;
        productImagesDomain = p.productImagesDomain;
        isLoading = false;
      });
    } catch (error) {
      // Handle error if product fetching fails
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    collar_id = widget.pageIdentifiers['collar_id']!;
    product_id = widget.pageIdentifiers['product_id']!;
    updateProduct();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<Uint8List> downloadImageData(SpaceKnowledgeDomainFile file) async {
    print("downloadImageData,init");
    var skdAuth = (await AccessSpaceKnowledgeDomainService
            .spaceKnowledgeDomainAccessToken(productImagesDomain))
        .spaceKnowledgeDomainServicesAccessAuthDetails;

    print("downloadImageData, got skdAuth");

    var req = DownloadRequest()
      ..file = file
      ..skdAuth = skdAuth;

    final call = (await DiscoverSpaceKnowledgeDomainFileService.serviceClient)
        .download(req);
    print("downloadImageData, call set");

    // Collect the chunks into a byte array
    List<int> imageData = [];
    await for (var response in call) {
      print("downloadImageData, received res");
      imageData.addAll(response.fileBuffer);
    }
    return Uint8List.fromList(imageData);
  }

  // File Picker to select and upload a PDF file
  Future<void> pickPdfFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpeg', 'jpg', 'png', 'svg', 'webp'],
        withReadStream: true);

    if (result != null) {
      List<PlatformFile> files = result.files;
      if (files.length == 1) {
        setState(() => isUploading = true);
        await uploadSpaceKnowledgeDomainFile(files.first);
        setState(() {
          uploadedFiles.add(files.first.name);
          isUploading = false;
        });
      }
    } else {
      // User canceled the picker
    }
  }

  Future<void> uploadSpaceKnowledgeDomainFile(PlatformFile file) async {
    var spaceKnowledgeDomainServicesAccessAuthDetails =
        (await AccessSpaceKnowledgeDomainService
                .spaceKnowledgeDomainAccessToken(productImagesDomain))
            .spaceKnowledgeDomainServicesAccessAuthDetails;

    Stream<UploadSpaceKnowledgeDomainFileRequest> outgoingResponse() async* {
      await for (List<int> fileListInt in file.readStream!) {
        yield UploadSpaceKnowledgeDomainFileRequest()
          ..spaceKnowledgeDomainServicesAccessAuthDetails =
              spaceKnowledgeDomainServicesAccessAuthDetails
          ..spaceKnowledgeDomainFileName = file.name
          ..spaceKnowledgeDomainFileSize = file.size
          ..spaceKnowledgeDomainFileExtensionType = ExtentionType.JPEG
          ..fileBuffer = fileListInt;
      }
    }

    final call = (await CreateSpaceKnowledgeDomainFileService.serviceClient)
        .uploadSpaceKnowledgeDomainFile(outgoingResponse());
    await for (var note in call) {
      print("${note.length}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundPrimary(context),
        title: Text('Product Details: $product_id'),
      ),
      body: isLoading
          ? Center(
              child: Text("Loading"),
            )
          : skincare_product.name.isEmpty
              ? Center(child: Text("Product not found!"))
              : Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    children: [
                      // Product Name
                      NeumorphicText(
                        skincare_product.name,
                        style: NeumorphicStyle(
                          depth: 2,
                          color: AppColors.contentPrimary(context),
                        ),
                        textStyle: NeumorphicTextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Brand
                      buildDetailRow("Brand", skincare_product.brandId),

                      // Price and MRP
                      buildDetailRow(
                        "Price",
                        "₹${skincare_product.price} (MRP: ₹${skincare_product.mrp})",
                      ),

                      // Stock Availability
                      buildDetailRow(
                        "Stock Status",
                        skincare_product.isInStock
                            ? "In Stock"
                            : "Out of Stock",
                      ),
                      buildImagesRow(),

                      Text(
                        "Upload Product Images",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton.icon(
                        onPressed: isUploading ? null : pickPdfFiles,
                        icon: Icon(Icons.upload_file),
                        label:
                            Text(isUploading ? "Uploading..." : "Pick Image"),
                      ),
                      const SizedBox(height: 20),
                      if (uploadedFiles.isNotEmpty)
                        Text(
                          "Uploaded Files:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      for (var file in uploadedFiles)
                        ListTile(
                          leading: Icon(Icons.picture_as_pdf),
                          title: Text(file),
                          trailing: Icon(Icons.check, color: Colors.green),
                        ),
                    ],
                  ),
                ),
    );
  }

  Widget buildImagesRow() {
    return FutureBuilder<GetAllDomainFilesResponse>(
      future: DiscoverSpaceKnowledgeDomainService.getAllDomainFiles(
          productImagesDomain),
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return AppProgressIndeterminateWidget();
        } else if (!snap.hasData || snap.data!.files.isEmpty) {
          return SizedBox(); // Show nothing if there are no files
        } else {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Adjust this for the number of columns
              crossAxisSpacing: 8.0, // Spacing between columns
              mainAxisSpacing: 8.0, // Spacing between rows
              childAspectRatio: 1.0, // Adjust this for proper aspect ratios
            ),
            physics:
                NeverScrollableScrollPhysics(), // Prevent scrolling inside grid
            shrinkWrap: true, // Allow the GridView to adjust to its content
            itemCount: snap.data!.files.length,
            itemBuilder: (context, position) {
              return FutureBuilder<Uint8List>(
                future: downloadImageData(snap.data!.files[position]),
                builder: (context, imageSnap) {
                  if (imageSnap.connectionState == ConnectionState.waiting) {
                    return AppProgressIndeterminateWidget(); // Loading indicator
                  } else if (!imageSnap.hasData) {
                    return Container(
                      color: Colors.grey[300], // Placeholder for missing image
                      child: Icon(Icons.broken_image),
                    );
                  } else {
                    return ClipRRect(
                      borderRadius:
                          BorderRadius.circular(8.0), // Rounded corners
                      child: Image.memory(
                        imageSnap.data!,
                        fit: BoxFit.cover, // Ensures proper aspect ratio
                      ),
                    );
                  }
                },
              );
            },
          );
        }
      },
    );
  }

  Widget buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              "$label:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.contentPrimary(context),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.contentPrimary(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
