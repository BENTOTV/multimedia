import 'package:flutter/material.dart';
import 'package:mobile/widget/shared/theme_color.dart';

class TextFormFieldProfile extends StatefulWidget {
  const TextFormFieldProfile({super.key});

  @override
  State<TextFormFieldProfile> createState() => _TextFormFieldProfileState();
}

class _TextFormFieldProfileState extends State<TextFormFieldProfile> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: _usernameTextController,
      keyboardType: TextInputType.text,
      style: const TextStyle(
        fontSize: 14,
      ),
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     setState(() {
      //       usernameError = false;
      //     });
      //   }
      //   return;
      // },
      // validator: (value) {
      //   if (value!.isEmpty) {
      //     setState(() {
      //       usernameError = true;
      //     });
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        hintText: "Nama",
        hintStyle: const TextStyle(
            fontSize: 14, color: Color.fromRGBO(217, 217, 217, 1)),
        filled: true,
        fillColor: colorCardItem,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.transparent),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.transparent),
          gapPadding: 10,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.transparent),
          gapPadding: 10,
        ),
      ),
    );
  }
}
