import 'package:flutter/material.dart';

import '../utils/assets.dart';

class HeaderBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Function() onTapMenu;
  final Function() onTapUser;
  final Function() onTapSearch;
  const HeaderBarWidget(
      {super.key,
      required this.onTapMenu,
      required this.onTapUser,
      required this.onTapSearch});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff032541),
      centerTitle: true,
      leading: IconButton(
        onPressed: onTapMenu,
        highlightColor: Colors.white10,
        icon: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      title: SizedBox(
        width: 55,
        height: 40,
        child: Image.asset(
          Assets.tLogoMovieDb,
          fit: BoxFit.fill,
        ),
      ),
      actions: [
        IconButton(
          onPressed: onTapUser,
          highlightColor: Colors.white10,
          icon: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: onTapSearch,
          highlightColor: Colors.white10,
          icon: Icon(
            Icons.search_rounded,
            color: Colors.lightBlue,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
