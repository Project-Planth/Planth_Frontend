import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plant_h/Utils/appTheme.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              ListView(
        children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://i1.sndcdn.com/avatars-lIjHNeHZwk2i4wmx-RbFNcw-t500x500.jpg"),
                                radius: 30,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sigma Chad"),
                                Text(
                                    DateTime.now().toUtc().toString().split(' ')[0])
                              ],
                            )
                          ],
                        ),
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        color: AppTheme.darkColorScheme.primary),
                                text: "#growplant",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    //on tap code here, you can navigate to other page or URL
                                  })),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.thumb_up_sharp)),
                                    Text("20")
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.message)),
                                    Text("10")
                                  ],
                                ),
                              ],
                            ),
                            IconButton(onPressed: (){}, icon: Icon(Icons.send_rounded))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
        ],
      ),
              Column(mainAxisAlignment: MainAxisAlignment.end,children: [
                Card(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://i1.sndcdn.com/avatars-lIjHNeHZwk2i4wmx-RbFNcw-t500x500.jpg"),
                            radius: 30,
                          ),
                        ),
                        Expanded(child: TextField(controller: TextEditingController(),decoration: InputDecoration(
                          filled: true,
                          hintText: "Say Something",
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),)),
                      ],
                    ),
                  ),
                )
              ],)
            ],
          )),
    );
  }
}
