import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class CameraScreen extends StatefulWidget {
  static String id = "CameraScreen";
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late Future<void> _initializeCameraController;

  @override
  void initState() {
    super.initState();
    _initializeCameraController = _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _controller = CameraController(
      firstCamera,
      ResolutionPreset.medium,
    );

    await _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<void>(
        future: _initializeCameraController,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: CameraPreview(_controller),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Colors.black,
        onPressed: () async {
          try {
            final XFile? image = await _controller.takePicture();
            if (image != null) {
              // Convert XFile to File
              File imageFile = File(image.path);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Center(
                      child: Image.file(
                        imageFile,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              );
            }
          } catch (e) {
            print('Error taking picture: $e');
          }
        },
        child: const Icon(
          Icons.camera,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
