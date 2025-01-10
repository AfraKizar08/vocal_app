import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:provider/provider.dart';
import '../services/audio_processing_service.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  String? filePath;

  Future<void> selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.audio,
    );

    if (result != null) {
      setState(() {
        filePath = result.files.single.path!;
      });

      // Process file to extract vocals
      await Provider.of<AudioProcessingService>(context, listen: false)
          .extractVocals(filePath!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Music'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: selectFile,
              child: Text('Select a Music File'),
            ),
            if (filePath != null) Text('File Selected: $filePath'),
          ],
        ),
      ),
    );
  }
}
