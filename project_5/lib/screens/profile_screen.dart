// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
//
// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({Key? key}) : super(key: key);
//
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   bool _isLoading = false;
//
//   // Fetch user data
//   Future<Map<String, dynamic>?> _fetchUserData(String uid) async {
//     try {
//       final userDoc = await FirebaseFirestore.instance.collection('users').doc(uid).get();
//       return userDoc.data();
//     } catch (e) {
//       print('Failed to fetch user data: $e');
//       return null;
//     }
//   }
//
//   // Fetch user posts
//   Future<List<Map<String, dynamic>>> _fetchUserPosts(String uid) async {
//     try {
//       final postsSnapshot = await FirebaseFirestore.instance
//           .collection('posts')
//           .where('uid', isEqualTo: uid)
//           .get();
//       return postsSnapshot.docs.map((doc) => doc.data()).toList();
//     } catch (e) {
//       print('Failed to fetch user posts: $e');
//       return [];
//     }
//   }
//
//   // Change profile image
//   Future<void> _changeProfileImage() async {
//     final currentUser = FirebaseAuth.instance.currentUser;
//     if (currentUser == null) return;
//
//     final picker = ImagePicker();
//     final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);
//
//     if (pickedFile != null) {
//       setState(() {
//         _isLoading = true;
//       });
//
//       try {
//         final File imageFile = File(pickedFile.path);
//         final storageRef = FirebaseStorage.instance
//             .ref()
//             .child('profile_pictures')
//             .child(currentUser.uid);
//         await storageRef.putFile(imageFile);
//         final String newImageUrl = await storageRef.getDownloadURL();
//
//         await FirebaseFirestore.instance.collection('users').doc(currentUser.uid).update({
//           'profileImageUrl': newImageUrl,
//         });
//
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Profile image updated successfully.')),
//         );
//       } catch (e) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error: $e')),
//         );
//       } finally {
//         setState(() {
//           _isLoading = false;
//         });
//       }
//     }
//   }
//
//   // Build stat column
//   Widget _buildStatColumn(int num, String label) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           num.toString(),
//           style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//         ),
//         Container(
//           margin: const EdgeInsets.only(top: 4),
//           child: Text(
//             label,
//             style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),
//           ),
//         ),
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final currentUser = FirebaseAuth.instance.currentUser;
//     if (currentUser == null) {
//       return const Center(child: Text('Not logged in.'));
//     }
//
//     return StreamBuilder<DocumentSnapshot>(
//       stream: FirebaseFirestore.instance.collection('users').doc(currentUser.uid).snapshots(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(child: CircularProgressIndicator());
//         }
//         if (snapshot.hasError) {
//           return Center(child: Text('Error: ${snapshot.error}'));
//         }
//
//         final userData = snapshot.data?.data() as Map<String, dynamic>?;
//
//         if (userData == null) {
//           return const Center(child: Text('User data not found.'));
//         }
//
//         return FutureBuilder(
//           future: _fetchUserPosts(currentUser.uid),
//           builder: (context, AsyncSnapshot<List<Map<String, dynamic>>> postSnapshot) {
//             if (postSnapshot.connectionState == ConnectionState.waiting) {
//               return const Center(child: CircularProgressIndicator());
//             }
//
//             final userPosts = postSnapshot.data ?? [];
//             return SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Row(
//                       children: [
//                         _isLoading
//                             ? const CircleAvatar(
//                           radius: 40,
//                           child: CircularProgressIndicator(),
//                         )
//                             : GestureDetector(
//                           onTap: _changeProfileImage,
//                           child: CircleAvatar(
//                             radius: 40,
//                             backgroundImage: NetworkImage(
//                               userData['profileImageUrl'] ?? 'https://via.placeholder.com/150',
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               _buildStatColumn(userPosts.length, 'Posts'),
//                               _buildStatColumn(0, 'Followers'),
//                               _buildStatColumn(0, 'Following'),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: Text(
//                       userData['username'] ?? 'Username',
//                       style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: Text(userData['bio'] ?? 'Add a bio'),
//                   ),
//                   const SizedBox(height: 16),
//                 ],
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }
//
// class PostTile extends StatelessWidget {
//   final Map<String, dynamic> post;
//   const PostTile({Key? key, required this.post}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Image.network(
//       post['imageUrl'] ?? 'https://via.placeholder.com/150',
//       fit: BoxFit.cover,
//       loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
//         if (loadingProgress == null) return child;
//         return Center(
//           child: CircularProgressIndicator(
//             value: loadingProgress.expectedTotalBytes != null
//                 ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
//                 : null,
//           ),
//         );
//       },
//       errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  'assets/images/Logo.png',
                ),
              ),
              IconButton(
                icon: const Icon(Icons.logout,
                color: Colors.white,),
                onPressed: _signOut,
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/Oval.png',
                ),
                SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Сарнай',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Rubik",
                        fontSize: 16,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '0 ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Дагагчтай'),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '0 ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Пост нийтлэсэн'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: 343,
            height: 35,
            padding: const EdgeInsets.symmetric(vertical: 13),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: const Color(0xFF262626),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Профайл засах',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.15,
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: 375,
            height: 35,
            padding: const EdgeInsets.only(left: 16),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: const Color(0xFF262626),
                ),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 15,
              children: [
                Image.asset('assets/images/Shape.png'),
                Text(
                  'Постууд',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 13,
            children: [
              Container(
                width: 38,
                height: 38,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: SvgPicture.asset('assets/images/no-image.svg'),
              ),
              SizedBox(
                width: 191,
                child: Text(
                  'Танд одоогоор зураг байхгүй байна.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFA0A0A0),
                    fontSize: 14,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.10,
                  ),
                ),
              ),
            ],
          )

        ],
    );
  }
}

Future<void> _signOut() async {
  await FirebaseAuth.instance.signOut();
}
