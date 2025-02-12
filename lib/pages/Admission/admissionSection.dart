import 'package:flutter/material.dart';

class admissionSection extends StatelessWidget {
  const admissionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text('Add'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('View'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Update'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Delete'),
        )
      ],
    );
  }
}
