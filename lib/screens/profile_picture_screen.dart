import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfilePictureScreen extends StatefulWidget {
  const ProfilePictureScreen({super.key});

  @override
  State<ProfilePictureScreen> createState() => _ProfilePictureScreenState();
}

class _ProfilePictureScreenState extends State<ProfilePictureScreen> {
  File? _imageFile;
  final TextEditingController _nameController = TextEditingController();

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF131418),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Image.asset('assets/images/logo_create.png', height: 40),
              const SizedBox(height: 24),
              const Text(
                "Tell us more!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Complete your profile",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0x73FFFFFF),
                  fontFamily: 'Montserrat',
                ),
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: _pickImage,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3E1C4B),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child:
                      _imageFile == null
                          ? const Icon(
                            Icons.camera_alt,
                            size: 40,
                            color: Colors.white,
                          )
                          : ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Image.file(_imageFile!, fit: BoxFit.cover),
                          ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'CHOOSE IMAGE\nA square .jpg, .gif,\nor .png image\n200x200 or larger',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              const SizedBox(height: 32),
              TextField(
                controller: _nameController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFF23252C),
                  hintText: "Your name",
                  hintStyle: const TextStyle(color: Colors.grey),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xFF6C6D7A)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xFF6C6D7A)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xFFAA73F0)),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Container(
                width: 207,
                decoration: BoxDecoration(
                  color: const Color(0x33BC4CF1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFAA73F0)),
                ),
                child: TextButton(
                  onPressed: () {
                    // Navegar para próxima etapa
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      color: Color(0xFFAA73F0),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Back",
                  style: TextStyle(
                    color: Color(0xFFAA73F0),
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
