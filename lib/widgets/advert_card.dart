import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myband_flutter/models/user.dart';
import 'package:myband_flutter/providers/user_provider.dart';
import 'package:myband_flutter/resources/firestore_methods.dart';
import 'package:myband_flutter/utils/colors.dart';
import 'package:myband_flutter/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:myband_flutter/screens/comment_screen.dart';

class AdvertCard extends StatefulWidget {
  const AdvertCard({super.key});

  @override
  State<AdvertCard> createState() => _AdvertCardState();
}

class _AdvertCardState extends State<AdvertCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //     border: Border(
      //   top: BorderSide(color: Color(0xFFFFFFFF)),
      //   left: BorderSide(color: Color(0xFFFFFFFF)),
      // )),
      color: mobileBackgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          //Header Section
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 16,
            ).copyWith(right: 0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1643310873627-d4e8f21ce75a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG11c2NpYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " Yavuz Çetin",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      useRootNavigator: false,
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: ListView(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shrinkWrap: true,
                              children: [
                                'Delete',
                              ]
                                  .map(
                                    (e) => InkWell(onTap: () {}),
                                  )
                                  .toList()),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.more_vert),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        "Yeni kuracağım blues grubu için bas gitarist arıyorum",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Image Section

          Row(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.handshake_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send_rounded),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.star),
                  ),
                ),
              ),
            ],
          ),

          //Description adn number of comments
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    "16/01/2023",
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
