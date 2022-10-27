import 'package:flutter/material.dart';

import '../utils/colors.dart';

class WebChatAppbarr extends StatelessWidget {
  const WebChatAppbarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        children: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
          ),
          SizedBox(
            width: 10,
          ),
          Text("Dummy name"),
          Spacer(),
          Icon(
            Icons.search,
            color: greyColor,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.more_vert,
              color: greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
