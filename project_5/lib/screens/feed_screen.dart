import 'package:flutter/material.dart';
import 'package:project_5/screens/add_story_screen.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<FeedScreen> {
  final List<Map<String, String>> stories = [
    {
      'id': 'assets/images/Inner Oval.png',
      'name': 'Төгөлдөр',
      'image': 'assets/images/Inner Oval.png'
    },
    {
      'id': 'assets/images/Inner Oval.png',
      'name': 'Сарнай',
      'image': 'assets/images/Inner Oval.png'
    },
    {
      'id': 'assets/images/Inner Oval.png',
      'name': 'Ханхүү',
      'image': 'assets/images/Inner Oval.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff000000),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 12, bottom: 12),
                child: Image.asset("assets/images/Logo.png"),
              ),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: stories.length + 1,
                  separatorBuilder: (_, __) => const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return _AddStoryButton(
                        onTap: () {
                          // TODO: Add story logic
                        },
                      );
                    }
                    final data = stories[index - 1];
                    return StoryBubble(
                      name: data["name"]!,
                      imagePath: data["image"]!,
                      onTap: () {
                        // TODO: Open story logic
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Column(children: [
                Postcard(
                  ProfileImage: "assets/images/Inner Oval.png",
                  UserName: 'Төгөлдөр',
                  PostImage: "assets/images/shibuya.png",
                  CommentUsername: 'joshua_I',
                  Comment: 'Have a nice day',
                  LikeCount: 12,
                ),
                const SizedBox(height: 20),
                Postcard(
                  ProfileImage: "assets/images/profile_pic.png",
                  UserName: 'Сарнай',
                  PostImage: "assets/images/coffee.png",
                  CommentUsername: 'sarnai_I',
                  Comment: 'Have a nice day',
                  LikeCount: 5,
                ),
                const SizedBox(height: 20),
                Postcard(
                  ProfileImage: "assets/images/Inner Oval.png",
                  UserName: 'Ханхүү',
                  PostImage: "assets/images/shibuya.png",
                  CommentUsername: 'prince_I',
                  Comment: 'Have a nice day',
                  LikeCount: 8,
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}

class StoryBubble extends StatelessWidget {
  final String name;
  final String imagePath;
  final VoidCallback? onTap;

  const StoryBubble({
    super.key,
    required this.name,
    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFFFF8A00),
                width: 2,
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 90,
            child: Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AddStoryButton extends StatelessWidget {
  final VoidCallback? onTap;

  const _AddStoryButton({this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white.withOpacity(0.6),
                width: 3,
              ),
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddStoryScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.add, color: Colors.white, size: 32)),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 90,
            child: Text(
              "Нэмэх",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class Postcard extends StatefulWidget {
  final String ProfileImage;

  final String UserName;

  final String PostImage;

  final String CommentUsername;

  final String Comment;

  int LikeCount = 0;
  bool isLiked = false;

  Postcard({
    super.key,
    required this.ProfileImage,
    required this.UserName,
    required this.PostImage,
    required this.CommentUsername,
    required this.Comment,
    required this.LikeCount,
  });

  @override
  State<Postcard> createState() => _PostcardState();
}

class _PostcardState extends State<Postcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(width: 15),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(widget.ProfileImage),
              ),
              const SizedBox(width: 10),
              Text(
                widget.UserName,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Image.asset(
            widget.PostImage,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          SizedBox(height: 1),
          Row(
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {
                  setState(() {
                    widget.isLiked = !widget.isLiked;
                    if (widget.isLiked) {
                      widget.LikeCount++;
                    } else {
                      widget.LikeCount--;
                    }
                  });
                },
                icon: widget.isLiked
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
              ),
              Text(
                '${widget.LikeCount}',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(children: [
            SizedBox(
              width: 15,
            ),
            Text(
              widget.CommentUsername,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              widget.Comment,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ])
        ],
      ),
    );
  }
}
