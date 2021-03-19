import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:master_polyplastic/utils/screen_size_helper.dart';

class FilePickerDemo extends StatefulWidget {
  @override
  _FilePickerDemoState createState() => _FilePickerDemoState();
}

class _FilePickerDemoState extends State<FilePickerDemo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String _fileName;
  List<PlatformFile> _paths;
  String _directoryPath;
  String _extension;
  bool _loadingPath = false;
  bool _multiPick = false;
  FileType _pickingType = FileType.any;
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => _extension = _controller.text);
  }

  void _openFileExplorer() async {
    setState(() => _loadingPath = true);
    try {
      _directoryPath = null;
      _paths = (await FilePicker.platform.pickFiles(
        type: _pickingType,
        allowMultiple: _multiPick,
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '')?.split(',')
            : null,
      ))
          ?.files;
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    } catch (ex) {
      print(ex);
    }
    if (!mounted) return;
    setState(() {
      _loadingPath = false;
      _fileName = _paths != null ? _paths.map((e) => e.name).toString() : '...';
    });
  }

  void _clearCachedFiles() {
    FilePicker.platform.clearTemporaryFiles().then((result) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: result ? Colors.green : Colors.red,
          content: Text((result
              ? 'Temporary files removed with success.'
              : 'Failed to clean temporary files')),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Builder(
                  builder: (BuildContext context) => _loadingPath
                      ? const CircularProgressIndicator()
                      : _directoryPath != null
                          ? ListTile(
                              title: const Text('Directory path'),
                              subtitle: Text(_directoryPath),
                            )
                          : _paths != null
                              ? Container(
                                  padding: EdgeInsets.only(
                                      top: 1 * SizeConfig.heightMultiplier),
                                  // color: Colors.indigo,
                                  height: 59 * SizeConfig.heightMultiplier,
                                  child: Scrollbar(
                                    child: ListView.separated(
                                      itemCount:
                                          _paths != null && _paths.isNotEmpty ? _paths.length : 1,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        final bool isMultiPath =
                                            _paths != null && _paths.isNotEmpty;
                                        final String name = 'File $index: ' +
                                            (isMultiPath
                                                ? _paths
                                                    .map((e) => e.name)
                                                    .toList()[index]
                                                : _fileName ?? '...');
                                        final path = _paths
                                            .map((e) => e.path)
                                            .toList()[index]
                                            .toString();

                                        return ListTile(
                                          title: Text(
                                            name,
                                          ),
                                          subtitle: Text(path),
                                        );
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) =>
                                              const Divider(),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 9 * SizeConfig.heightMultiplier),
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () => _openFileExplorer(),
                    child: const Icon(Icons.add_sharp,
                        color: Colors.white, size: 25),
                  ),
                ),
                SwitchListTile.adaptive(
                  title: Text('Multiple files', textAlign: TextAlign.right),
                  onChanged: (bool value) => setState(() => _multiPick = value),
                  value: _multiPick,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
