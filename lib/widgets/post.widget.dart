import 'package:flutter/material.dart';
import 'package:recriando_linkedin/models/user.model.dart';
import 'package:recriando_linkedin/widgets/action.post.widget.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SliverList(
      delegate: SliverChildBuilderDelegate((_, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: size.height * .8),
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopWidgets(index),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      userData[index].description,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Expanded(
                    child: Image.network(
                      userData[index].urlPost,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  buildInformations(index),
                  buildActions()
                ],
              ),
            ),
          ),
        );
      }, childCount: userData.length),
    );
  }

  Row buildActions() {
    return Row(
      children: [
        Expanded(
          child: ActionPost(
            icon: Icons.thumb_up_alt_outlined,
            label: 'Like',
          ),
        ),
        Expanded(
          child: ActionPost(
            icon: Icons.insert_comment_outlined,
            label: 'Comment',
          ),
        ),
        Expanded(
          child: ActionPost(
            icon: Icons.share,
            label: 'Share',
          ),
        ),
        Expanded(
          child: ActionPost(
            icon: Icons.send,
            label: 'Send',
          ),
        ),
      ],
    );
  }

  Widget buildInformations(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        children: [
          Text(
            '👍❤👏 ${userData[index].reactions}',
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
          Spacer(),
          Text(
            userData[index].actions,
            style: TextStyle(color: Colors.grey, fontSize: 13),
          )
        ],
      ),
    );
  }

  Widget buildTopWidgets(int index) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(userData[index].urlProfile),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userData[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(userData[index].occupation),
                    Text(userData[index].datePost),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
