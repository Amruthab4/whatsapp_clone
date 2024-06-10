
import 'dart:convert';
import 'dart:io';

import '../utils/exports.dart';

class Cameraview extends StatefulWidget {
  
  const Cameraview({super.key});

  @override
  State<Cameraview> createState() => _CameraviewState();
}

class _CameraviewState extends State<Cameraview> {
  bool isLoading = false;
  File? selectedImage;
  String base64Image = "";

  Future<void> chooseImage(String type) async {
    setState(() {
      isLoading = true;
    });
    XFile? image;
    if (type == "camera") {
      image = await ImagePicker().pickImage(source: ImageSource.camera, imageQuality: 10);
    } else {
      image = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 25);
    }
    if (image != null) {
      setState(() {
        selectedImage = File(image!.path);
        base64Image = base64Encode(selectedImage?.readAsBytesSync() ?? []);
        // After selecting the image, display it as a story
        // userStories["Your Story"] = [
        //   StoryItem.pageImage(
        //     url: selectedImage!.path,
        //     imageFit: BoxFit.cover,
        //     controller: StoryController(),
        //   ),
        // ];
        // openStory("Your Story");
      });
    }
    setState(() {
      isLoading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      chooseImage("gallery");
    }, icon: Icon(Icons.abc));
  }
}