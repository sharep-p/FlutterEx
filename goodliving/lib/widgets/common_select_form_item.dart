
import 'package:flutter/material.dart';
import 'package:goodliving/utils/common_picker/index.dart';
import 'package:goodliving/widgets/common_form_item.dart';

class CommonSelectFormIte extends StatelessWidget {

  final String? label;
  final int? value;
  final List<String>? options;
  final Function(int)? onChange;

  const CommonSelectFormIte({Key? key, this.label, this.value, this.options, this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonFormItem(
      label: label,
      contenBuilder: (context){
        return GestureDetector(
          onTap: ()
        {
          var result = CommonPicker().showPicker(
            context: context,
            options: options,
              value: value
          );
          result!.then((selectedValue) {
            if(value != selectedValue && selectedValue != null && onChange != null){
              onChange!(selectedValue);
            }
          });
        }
          ,
          child: Container(
            height: 40,
            child: Row(
              children: [
                Text(options![value ?? 0],style: TextStyle(fontSize: 16.0),),
                Icon(Icons.keyboard_arrow_right)
              ],
            ),
          ),
        );
      },
    );
  }
}
