import 'package:flutter/material.dart';
import 'package:goodliving/widgets/common_image.dart';

class SearchBar extends StatefulWidget {
  final bool? shouLoaction;
  final void Function()? goBackCallback;
  final String? inputValue;
  final String? defaultInputValue;
  final void Function()? onCancel;
  final bool? showMap;
  final void Function()? onSearch;
  final ValueChanged<String>? onSearchSubmit;

  const SearchBar(
      {Key? key,
      this.shouLoaction,
      this.goBackCallback,
      this.inputValue = '',
      this.defaultInputValue = '请输入搜索词',
      this.onCancel,
      this.showMap,
      this.onSearch,
      this.onSearchSubmit})
      : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  FocusNode? _focus;
  String _searchWord = '';
  TextEditingController? _controller;

  _onClean() {
    _controller?.clear();    //将值设置为空
    setState(() {
      _searchWord = '';
    });
  }

  @override
  void initState() {
    _focus = FocusNode();
    _controller = TextEditingController(text: widget.inputValue);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if (widget.shouLoaction !=
              null) //在有状态组件中，通过widget.shouLoaction才能拿到上面的值
            Padding(
              padding: EdgeInsets.only(
                right: 10.0,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.room,
                      color: Colors.green,
                      size: 16,
                    ),
                    Text(
                      '北京',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          if (widget.goBackCallback != null)
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: widget.goBackCallback,
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.black87,
                ),
              ),
            ),
          Expanded(
              child: Container(
            height: 34.0,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(17.0)),
            margin: EdgeInsets.only(right: 8.0),
            child: TextField(
              focusNode: _focus,
              onTap: () {
                if (null == widget.onSearchSubmit) {
                  _focus?.unfocus();
                }
                widget.onSearch!();
              },
              onSubmitted: widget.onSearchSubmit,
              textInputAction: TextInputAction.search,
              controller: _controller,
              style: TextStyle(fontSize: 14.0),
              onChanged: (String value) {
                setState(() {
                  _searchWord = value;
                });
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '请输入搜索词',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                  contentPadding: EdgeInsets.only(top: 2.0, left: -10.0),
                  suffixIcon: GestureDetector(
                      onTap: () {
                        _onClean();
                      },
                      child: Icon(
                        Icons.clear,
                        size: 18.0,
                        color:
                            _searchWord == '' ? Colors.grey[200] : Colors.grey,
                      )),
                  icon: Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Icon(
                      Icons.search,
                      size: 18.0,
                      color: Colors.grey,
                    ),
                  )),
            ),
          )),
          if (widget.onCancel != null)
            Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                  onTap: widget.onCancel,
                  child: Text(
                    '取消',
                    style: TextStyle(fontSize: 14.0, color: Colors.black87),
                  ),
                )),
          if (widget.showMap != null)
            CommonImage(
              src: 'static/icons/widget_search_bar_map.png',
              height: 23,
              width: 23,
            ),
        ],
      ),
    );
  }
}
