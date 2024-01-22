import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  DateTime _date = DateTime.now();

  void increment() {
    setState(() {
      _date = _date.add(const Duration(days: 1));
    });
  }

  void decrement() {
    setState(() {
      _date = _date.subtract(const Duration(days: 1));
    });
  }

  String toFormatedString(DateTime date) {
    String formatedDate = DateFormat('EEEE, d').format(date);

    switch (date.day % 10) {
      case 1:
        return '${formatedDate}st';
      case 2:
        return '${formatedDate}nd';
      case 3:
        return '${formatedDate}rd';
      default:
        return '${formatedDate}th';
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
          onPressed: () => decrement(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0x66666666),
          )),
      actions: [
        IconButton(
            onPressed: () => increment(),
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0x66666666),
            )),
      ],
      backgroundColor: const Color(0xeeeeeeee),
      title: Text(
        toFormatedString(_date),
        style: const TextStyle(color: Color(0x66666666)),
      ),
    );
  }
}
