import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  EmailField({super.key, required TextEditingController controller});

  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black26, blurRadius: 10, offset: Offset(2, 2))
          ]),
      child: Row(
        children: [
          Container(
            width: 50,
            child: const Icon(Icons.person),
          ),
          Expanded(
            child: TextFormField(
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 20),
                border: InputBorder.none,
                hintText: "Input your email",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
