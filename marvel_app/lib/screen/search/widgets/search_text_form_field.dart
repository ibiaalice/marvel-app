import 'package:flutter/material.dart';

class SearchTextFormField extends StatelessWidget {
  final Function onChanged;

  const SearchTextFormField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.5, color: Colors.blueGrey),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      width: MediaQuery.of(context).size.width - 20,
      child: TextFormField(
        keyboardType: TextInputType.text,
        cursorColor: Colors.black87,
        maxLines: 1,
        style: const TextStyle(fontWeight: FontWeight.w300),
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          border: InputBorder.none,
        ),
        onChanged: (String value) {
          onChanged(value);
        },
      ),
    );
  }
}
