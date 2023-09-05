import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: const Icon(
            Icons.language,
          ),
          actions: [
            const FaIcon(
              FontAwesomeIcons.instagram,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.segment,
              ),
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Moon',
                          style: TextStyle(
                              fontSize: Sizes.size20,
                              fontWeight: FontWeight.w800),
                        ),
                        Row(
                          children: [
                            const Text(
                              'Moon_Pooh',
                              style: TextStyle(
                                fontSize: Sizes.size16,
                              ),
                            ),
                            Gaps.h10,
                            Container(
                              width: Sizes.size96,
                              height: Sizes.size32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  30,
                                ),
                                color: Colors.grey.shade300,
                              ),
                              child: const Center(
                                child: Text(
                                  'threads.net',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 40,
                      foregroundImage: NetworkImage(
                          "https://static.coupangcdn.com/image/retail/images/2020/03/30/11/0/db9fcced-6f33-4308-9f57-515b8af5882d.jpg"),
                    ),
                  ],
                ),
                const Text(
                  'professional golfer!',
                  style: TextStyle(
                    fontSize: Sizes.size16,
                  ),
                ),
                Gaps.v16,
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      foregroundImage: NetworkImage(
                          "https://img1.daumcdn.net/thumb/R1280x0.fjpg/?fname=http://t1.daumcdn.net/brunch/service/user/cnoC/image/miYOGzMhLBhD57RMB-fYDKIkD_A.jpg"),
                    ),
                    CircleAvatar(
                      radius: 15,
                      foregroundImage: NetworkImage(
                          "https://i.namu.wiki/i/gvyqsyyuohV1T4KHJds8eRVQNvrVxEPOtRncouhSkMxY1edavrjN8PC-aaGjs38pq7Pk1-ghU_Ezh8GPLyMvAA.webp"),
                    ),
                    Gaps.h12,
                    Text(
                      '2 followers',
                      style: TextStyle(
                        fontSize: Sizes.size16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Gaps.v12,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text(
                          'Edit profile',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text(
                          'Edit profile',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
