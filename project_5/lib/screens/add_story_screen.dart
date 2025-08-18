import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddStoryScreen extends StatefulWidget {
  const AddStoryScreen({Key? key}) : super(key: key);

  @override
  State<AddStoryScreen> createState() => _AddStoryScreenState();
}

class _AddStoryScreenState extends State<AddStoryScreen> {
  final ImagePicker _picker = ImagePicker();
  File? _selectedImage;
  bool _isUploading = false;

  // Pick image from gallery
  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  // Upload story to Firebase
  Future<void> _uploadStory() async {
    if (_selectedImage == null) return;

    setState(() => _isUploading = true);

    try {
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('stories/${DateTime.now().millisecondsSinceEpoch}.jpg');
      final snapshot = await storageRef.putFile(_selectedImage!);
      final downloadUrl = await snapshot.ref.getDownloadURL();

      await FirebaseFirestore.instance.collection('stories').add({
        'url': downloadUrl,
        'uploadedAt': FieldValue.serverTimestamp(),
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Story uploaded successfully!')),
        );
      }

      // FeedScreen рүү буцаахдаа downloadUrl ашиглах
      Navigator.pop(context, {
        'name': 'Миний стори', // эсвэл хэрэглэгчийн нэр
        'image': downloadUrl,     // 🔹 Firebase URL
      });

    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Upload failed: $e')),
        );
      }
    } finally {
      setState(() => _isUploading = false);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Add Story'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Preview
            _selectedImage != null
                ? Image.file(
              _selectedImage!,
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            )
                : const Text(
              'No story selected',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: _pickImage,
              child: const Text('Pick Story'),
            ),
            const SizedBox(height: 20),

            _isUploading
                ? const CircularProgressIndicator()
                : ElevatedButton(
              onPressed: _uploadStory,
              child: const Text('Upload Story'),
            ),
          ],
        ),
      ),
    );
  }
}
