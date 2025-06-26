import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class appInput extends StatefulWidget {
  final String? label;
  final TextInputType keyboardtype;
  final BorderRadius borderradius;
  final Key? key;
  final bool isPassword;
  final TextDirection textDirection;
  const appInput({
    this.keyboardtype = TextInputType.name,
    this.borderradius= const BorderRadius.all(Radius.circular(0)),
    this.key,
    this.label,
     this.isPassword=false,
    this.textDirection=TextDirection.ltr,
  }) :super(key: key);

  @override
  State<appInput> createState() => _appInputState();
}

class _appInputState extends State<appInput> {
  bool isHidden =true;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: widget.textDirection,
      child: TextFormField(
        onTapOutside:(event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        key: widget.key,
        obscureText: isHidden&&widget.isPassword,
        keyboardType:widget.keyboardtype,
        decoration: InputDecoration(
          labelText: widget.label,
          focusedBorder:OutlineInputBorder(
            borderRadius: widget.borderradius,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: widget.borderradius,
          ),
          suffixIcon: widget.isPassword?IconButton(
            icon:Icon(isHidden?Icons.visibility_off:Icons.visibility),
            onPressed: (){
              isHidden=!isHidden;
              setState(() {});
            },
          ):null
        ),
      ),
    );
  }
}
