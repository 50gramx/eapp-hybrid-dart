import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// Dropdown Component
///
/// Dropdowns present a list of options from which a user can
/// select one option. A selected option can represent a value as a String.
///
/// needs [listOfEntities] as List<dynamic>
/// needs [entityValueProperty] as String
/// needs [onSelectEntity] as Function(dynamic)
class EIC1013 extends StatefulWidget {
  const EIC1013(
      {Key? key,
      required this.listOfEntities,
      required this.entityValueProperty,
      required this.onSelectEntity})
      : super(key: key);

  final List<dynamic> listOfEntities;
  final String entityValueProperty;
  final Function(dynamic) onSelectEntity;

  @override
  State<EIC1013> createState() => _EIC1013State();
}

class _EIC1013State extends State<EIC1013> {
  late String selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = _getEntityValue(entity: widget.listOfEntities.first);
  }

  @override
  void dispose() {
    super.dispose();
  }

  /// returns the value of the entity based on the
  /// value property defined during class initialisation
  ///
  /// return empty string, if no value property found
  ///
  /// needs [entity] as dynamic
  ///
  /// returns [value] as String
  String _getEntityValue({required dynamic entity}) {
    try {
      // TODO: test these changes
      return entity[widget.entityValueProperty];
    } catch (e) {
      // TODO: handle exception
      return '';
    }
  }

  /// returns the first matched entity from the list of entities
  /// which has the same value as passed value
  ///
  /// returns null if no entity matched with the passed value
  ///
  /// needs [value] as String
  ///
  /// returns [entity] as dynamic
  dynamic _getEntityFromValue({required String value}) {
    // loop through all the entities
    dynamic entity = null;
    for (int entityIndex = 0;
        entityIndex < widget.listOfEntities.length;
        entityIndex++) {
      // check if the entity parameter has the same value
      entity = widget.listOfEntities[entityIndex];
      if (entity[widget.entityValueProperty] == value) {
        // return the entity
      }
    }
    // TODO: handle the edge cases
    return entity;
  }

  /// sets the dropdown value as passed value and
  /// calls the onSelectEntity passed during class initialisation
  ///
  /// needs [newValue] as String
  ///
  /// returns void
  _setValue({required String newValue}) {
    // get the entity from the value
    dynamic entity = _getEntityFromValue(value: newValue);
    setState(() {
      // set the dropdown value
      selectedValue = newValue;
      // call the on select entity
      widget.onSelectEntity(entity);
    });
  }

  /// used to build the each dropdown item
  DropdownMenuItem<String> _buildItem({required dynamic entity}) {
    String value = _getEntityValue(entity: entity);
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value,
          style: TextStyle(
              color: value == "No Invitations"
                  ? AppColors.contentTertiary(context)
                  : AppColors.contentPrimary(context),
              fontSize: 16,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w400,
              height: 1.25)),
    );
  }

  @override
  Widget build(BuildContext context) {
    /// used to store the margin of the component
    EdgeInsets standardVerticalMargin = EdgeInsets.symmetric(vertical: 8);

    /// used to store the level style of the component
    NeumorphicStyle standardStyle = NeumorphicStyle(
      lightSource: NeumorphicTheme.isUsingDark(context)
          ? LightSource.bottomRight
          : LightSource.topLeft,
      shadowLightColor: NeumorphicTheme.isUsingDark(context)
          ? AppColors.gray600
          : AppColors.backgroundSecondary(context),
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
    );

    /// used to store the boundary decoration of each dropdown item
    BoxDecoration standardBoxDecoration = BoxDecoration(
      color: AppColors.backgroundPrimary(context),
      borderRadius: BorderRadius.all(Radius.circular(24)),
    );

    /// used to build the overall dropdown
    Widget dropdown = DropdownButton<String>(
      dropdownColor: AppColors.backgroundPrimary(context),
      value: selectedValue,
      style: AppTextStyle.themePrimaryButtonTextStyle(context),
      onChanged: (String? newValue) {
        _setValue(newValue: newValue ?? '');
      },
      isDense: true,
      items:
          widget.listOfEntities.map<DropdownMenuItem<String>>((dynamic entity) {
        return _buildItem(entity: entity);
      }).toList(),
    );

    /// used to store the container of the component
    Widget standardContainer = Container(
        decoration: standardBoxDecoration,
        child: ListTile(
          title: DropdownButtonHideUnderline(
            child: dropdown,
          ),
        ));

    /// return the built component
    return Neumorphic(
      margin: standardVerticalMargin,
      style: standardStyle,
      child: standardContainer,
    );
  }
}
