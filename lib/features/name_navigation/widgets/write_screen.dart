import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/videos/video_recording_screen.dart';

class WriteScreen extends StatefulWidget {
  const WriteScreen({super.key});

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  void _cancelTap() {
    Navigator.of(context).pop();
  }

  void _onRecordingTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const VideoRecordingScreen(),
      ),
    );
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                CircleAvatar(
                  radius: Sizes.size24,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqanvbMaSXKOKtAR51_yX57oliEniGHqgeMKbxzxF6pGi5gVNZ_n9pxf_h1b546_G7DY&usqp=CAU'),
                ),
                SizedBox(
                  height: 120,
                  child: VerticalDivider(
                    color: Colors.red,
                  ),
                ),
                CircleAvatar(
                  radius: Sizes.size14,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqanvbMaSXKOKtAR51_yX57oliEniGHqgeMKbxzxF6pGi5gVNZ_n9pxf_h1b546_G7DY&usqp=CAU'),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Pooh'),
                Gaps.v8,
                const SizedBox(
                  width: 250,
                  child: Text(
                      'Pooh chi pooh pooh chi pooh pooh chi pooh pooh chi Pooh chi pooh pooh chi pooh pooh chi pooh pooh chi'),
                ),
                Gaps.v8,
                GestureDetector(
                  onTap: _onRecordingTap,
                  child: const FaIcon(
                    FontAwesomeIcons.paperclip,
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.close,
            ),
          ],
        ),
      ),
    );
  }
}
