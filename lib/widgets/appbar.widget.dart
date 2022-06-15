import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      floating: true,
      delegate: SliverAppBar(),
    );
  }
}

class SliverAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/eu.jpg'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue[50],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Search',
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.qr_code_scanner,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.chat,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => kToolbarHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
