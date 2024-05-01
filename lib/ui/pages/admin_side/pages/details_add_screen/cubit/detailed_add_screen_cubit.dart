import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../details_show_screen/details_show_screen.dart';

part 'detailed_add_screen_state.dart';

class DetailedAddScreenCubit extends Cubit<DetailedAddScreenState> {
  DetailedAddScreenCubit(this.context) : super(DetailedAddScreenInitial());
  BuildContext context;
  final formKey = GlobalKey<FormState>();
  final TextEditingController construcationName = TextEditingController();
  final TextEditingController squrefitController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('construction_details');

  bool isLoading = false;
  String uniqueFileName = DateTime.now().millisecondsSinceEpoch.toString();
  String imageUrl = '';

  construcationNameValidator(String value) {
    if (value.isEmpty) {
      return 'enter vaild construction name';
    }
  }

  squreFitValidator(String value) {
    if (value.isEmpty) {
      return 'enter vaild  squre fit';
    }
  }

  priceValidator(String value) {
    if (value.isEmpty) {
      return 'enter vaild  price';
    }
  }

  addressValidator(String value) {
    if (value.isEmpty) {
      return 'enter vaild  address';
    }
  }

Future<void> pickImageFromGallery() async {
  ImagePicker imagePicker = ImagePicker();
  XFile? file = await imagePicker.pickImage(source: ImageSource.camera);

  print('----------path === ${file?.path}----------');

  if (file == null) return;

  try {
    // Get the reference to storage root
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('images');

    // Generate a unique file name or use existing logic
    String uniqueFileName = 'image_${DateTime.now().millisecondsSinceEpoch}';

    // Create a reference for the image to be stored
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);

    // Store the file
    await referenceImageToUpload.putFile(File(file.path));

    // Get the download URL
    String imageUrl = await referenceImageToUpload.getDownloadURL();

    // Ensure imageUrl is not empty
    if (imageUrl.isNotEmpty) {
      // Success: do something with the imageUrl
      print('Download URL: $imageUrl');
      // Now you can use the imageUrl as needed
    } else {
      // Handle the case where imageUrl is empty
      print('Error: Image URL is empty.');
    }
  } catch (e) {
    // Handle errors
    print('Error uploading image: $e');
  }
}


  buttonClick() async {
    if (formKey.currentState!.validate()) {
      isLoading = true;
      String name = construcationName.text;
      String squareFit = squrefitController.text;
      String price = priceController.text;
      String address = addressController.text;

      Map<String, String> dataToSend = {
        'construction_name': name,
        'squre_fit': squareFit,
        'price': price,
        'address': address,
        'image': imageUrl,
      };
      await collectionReference.add(dataToSend);

      isLoading = false;
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DetailedShowScreen(),
      ));
    }
  }
}
