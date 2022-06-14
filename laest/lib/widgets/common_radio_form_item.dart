import 'package:flutter/material.dart';
import 'package:goodliving/widgets/common_form_item.dart';

class CommonRadioFormItem extends StatelessWidget {
  final String? label;
  final List<String>? options;
  final int value;
  final ValueChanged<int?>? onChange;

  const CommonRadioFormItem(
      {Key? key, this.label, this.options, this.value=3, this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonFormItem(
      label: label,
      contenBuilder: (context) {
        return Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              ...List.generate(
                  options!.length,
                  (index) => Row(children: [
                        Radio(
                            value: index,
                            groupValue: value,
                            onChanged: onChange),
                        Text(options![index]),
                      ])),
            ]));
      },
    );
  }
}
