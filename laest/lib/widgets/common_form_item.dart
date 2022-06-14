import 'package:flutter/material.dart';

class CommonFormItem extends StatelessWidget {
  final String? label;
  final Widget Function(BuildContext context)? contenBuilder;
  final Widget? suffix;
  final String? suffixText;

  final String? hintText;
  final ValueChanged? onchanged;
  final TextEditingController? controller;

  const CommonFormItem(
      {Key? key,
      this.label,
      this.contenBuilder,
      this.suffix,
      this.suffixText,
      this.hintText,
      this.onchanged,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14.0, right: 14.0),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 1.0, color: Theme.of(context).dividerColor))),
      child: Row(
        children: [
          Container(
            width: 100.0,
            child: Text(
              label ?? '',
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
          ),

          Expanded(
              child: contenBuilder != null
                  ? contenBuilder!(context)
                  : TextField(
                      controller: controller,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: hintText),
                    )),
          if(suffix != null)  suffix ?? const SizedBox(),  //这里当suffix为空的时候，会显示一个空白的小部件

          if (suffix == null && suffixText != null) Text(suffixText ?? ''),
        ],
      ),
    );
  }
}
