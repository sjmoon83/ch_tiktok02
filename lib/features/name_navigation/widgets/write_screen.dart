import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class WriteScreen extends StatefulWidget {
  const WriteScreen({super.key});

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  void _cancelTap() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New thread'),
        leadingWidth: 100.0,
        centerTitle: true,
        leading: TextButton(
          onPressed: _cancelTap,
          child: const Text(
            'Cancel',
            style: TextStyle(
              color: Colors.black,
              fontSize: Sizes.size16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/3612017?v=4'),
                    ),
                    Gaps.h10,
                    SizedBox(
                      width: 310,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('data'),
                              Row(
                                children: [
                                  Text('2m'),
                                  Gaps.h5,
                                  Icon(
                                    Icons.more_horiz,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text('data'),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.size6,
                      ),
                    ),
                    const Text(
                      '|',
                      style: TextStyle(
                        backgroundColor: Colors.grey,
                        color: Colors.grey,
                        fontSize: 100,
                      ),
                    ),
                    Gaps.h28,
                    Container(
                      width: 250,
                      decoration: const BoxDecoration(),
                      child: Image.network(
                        'https://i.namu.wiki/i/oU0avPQmlPv0p13BPnuEqyzmtGl9SoTArdKVYpb1r5CYXrpUjEqtiurvlFDjpXdOMyDXwIFYpz0x3PgtS92_8A.webp',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
