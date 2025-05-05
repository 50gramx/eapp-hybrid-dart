import 'package:eapp_dart_domain/ethos/elint/collars/DC499999994.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/services/collars/DC499999994EPME5000Capabilities.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class DC499999994EAIP1002 extends StatefulWidget {
  const DC499999994EAIP1002({
    Key? key,
    required this.domainId,
  }) : super(key: key);

  final String domainId;

  @override
  _DC499999994EAIP1002State createState() => _DC499999994EAIP1002State();
}

class _DC499999994EAIP1002State extends State<DC499999994EAIP1002> {
  List<DC499999994> skincare_product_collars = [];

  final _formKey = GlobalKey<FormState>();

  // Controllers for basic information
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _brandController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _subCategoryController = TextEditingController();

  // Pricing and availability
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _mrpController = TextEditingController();
  final TextEditingController _stockQuantityController =
      TextEditingController();
  bool _isInStock = true;

  // Other contextual fields
  final TextEditingController _batchNumberController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();

  // Dynamic fields
  List<String> _sellerLocations = [];

  Future<List<DC499999994>> updateCollars() async {
    print("updateCollars");
    skincare_product_collars =
        await DC499999994EPME5000Capabilities.list(widget.domainId);
    print(
        "updateCollars: skincare_product_collars, ${skincare_product_collars.length}");
    return skincare_product_collars;
  }

  Future<ResponseMeta> createSkincareProduct(SkincareProduct sp) async {
    var res = await DC499999994EPME5000Capabilities.create(widget.domainId, sp);
    print("updateCollars: res, ${res}");
    return res;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _brandController.dispose();
    _categoryController.dispose();
    _subCategoryController.dispose();
    _priceController.dispose();
    _mrpController.dispose();
    _stockQuantityController.dispose();
    _batchNumberController.dispose();
    _expiryDateController.dispose();
    _countryController.dispose();
    super.dispose();
  }

  void _addSellerLocation(String location) {
    setState(() {
      _sellerLocations.add(location);
    });
  }

  loadSkincareProductManagePage(deployment) async {
    await AppFlowManager.instance.loadAppOnTheGo(
      appName: "pods",
      orgName: "ethos",
      communityCode: 70,
      appIndex: 0,
      collarNameCode: "DC499999994",
      pageNameCode: "EAIP1002",
      domainIdentifier: widget.domainId,
      pageIdentifiers: {
        "collar_id": "${deployment.id}",
        "deployment_id": "${deployment.deployment.id}",
      },
    );
    AppFlowManager.instance.sendOpenDynamicAppNotification(
      appName: "pods",
      orgName: "ethos",
      communityCode: 70,
      appIndex: 0,
      collarNameCode: "DC499999994",
      pageNameCode: "EAIP1002",
      domainIdentifier: widget.domainId,
      pageIdentifiers: {
        "collar_id": "${deployment.id}",
        "deployment_id": "${deployment.deployment.id}",
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            // Basic Information
            _buildSectionTitle("Basic Information"),
            _buildTextField("Product Name", _nameController),
            _buildTextField("Brand ID", _brandController),
            _buildTextField("Category ID", _categoryController),
            _buildTextField("Sub-Category ID", _subCategoryController),

            // Pricing and Availability
            _buildSectionTitle("Pricing and Availability"),
            _buildTextField("Price", _priceController, isNumber: true),
            _buildTextField("MRP (Optional)", _mrpController, isNumber: true),
            _buildCheckboxField("In Stock", _isInStock, (value) {
              setState(() {
                _isInStock = value!;
              });
            }),
            if (_isInStock)
              _buildTextField("Stock Quantity", _stockQuantityController,
                  isNumber: true),

            // Seller Locations
            _buildSectionTitle("Seller Locations"),
            Wrap(
              children: _sellerLocations
                  .map((location) => Chip(
                        label: Text(location),
                        onDeleted: () => setState(() {
                          _sellerLocations.remove(location);
                        }),
                      ))
                  .toList(),
            ),
            ElevatedButton(
              onPressed: () => _showAddLocationDialog(),
              child: Text("Add Seller Location"),
            ),

            // Batch Details
            _buildSectionTitle("Batch Details"),
            _buildTextField("Batch Number", _batchNumberController),
            _buildTextField("Expiry Date (YYYY-MM-DD)", _expiryDateController),
            _buildTextField("Country of Origin", _countryController),

            // Submit Button
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _submitForm();
                }
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller,
      {bool isNumber = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "$label is required";
          }
          return null;
        },
      ),
    );
  }

  Widget _buildCheckboxField(
      String label, bool value, ValueChanged<bool?> onChanged) {
    return Row(
      children: [
        Checkbox(value: value, onChanged: onChanged),
        Text(label),
      ],
    );
  }

  void _showAddLocationDialog() {
    final locationController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add Seller Location"),
          content: TextField(
            controller: locationController,
            decoration: InputDecoration(
              labelText: "Location",
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                if (locationController.text.isNotEmpty) {
                  _addSellerLocation(locationController.text);
                }
                Navigator.of(context).pop();
              },
              child: Text("Add"),
            ),
          ],
        );
      },
    );
  }

  void _submitForm() async {
    final formData = {
      "name": _nameController.text,
      "brand_id": _brandController.text,
      "category_id": _categoryController.text,
      "sub_category_id": _subCategoryController.text,
      "price": double.tryParse(_priceController.text),
      "mrp": double.tryParse(_mrpController.text),
      "is_in_stock": _isInStock,
      "stock_quantity": int.tryParse(_stockQuantityController.text),
      "seller_locations": _sellerLocations,
      "batch_number": _batchNumberController.text,
      "expiry_date": _expiryDateController.text,
      "country_of_origin": _countryController.text,
    };

    print("Form Data: $formData");
    SkincareProduct sp = SkincareProduct(
      name: _nameController.text,
      brandId: _brandController.text,
      categoryId: _categoryController.text,
      subCategoryId: _subCategoryController.text,
      price: double.tryParse(_priceController.text),
      mrp: double.tryParse(_mrpController.text),
      isInStock: _isInStock,
      stockQuantity: int.tryParse(_stockQuantityController.text),
      sellerLocations: _sellerLocations,
      batchNumber: _batchNumberController.text,
      expiryDate: _expiryDateController.text,
      countryOfOrigin: _countryController.text,
    );
    var res = await createSkincareProduct(sp);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Form submitted successfully!")),
    );
  }
}
