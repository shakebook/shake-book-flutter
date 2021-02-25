import 'dart:ui';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
//import 'package:http_parser/http_parser.dart';
import 'package:students/common/shared.dart';
import 'package:students/pages/edit/edit.dart';
import 'package:students/pages/focus/focus_page.dart';
import 'package:students/pages/my/model/my_model.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:http/http.dart' as http;
// import 'package:students/api/v1/api.dart';

class PersonWidget extends StatefulWidget {
  final MyModel myModel;

  PersonWidget({@required this.myModel});
  @override
  _PersonWidget createState() => _PersonWidget();
}

class _PersonWidget extends State<PersonWidget> {
  File _image;
  String _imageURL;
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    print("yes");
    _imageURL = widget.myModel.imageUrl;
  }

  Future getImageWithCamera(BuildContext ctx) async {
    Navigator.pop(ctx);
    final pickedFile = await picker.getImage(
      source: ImageSource.camera,
    );

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        print(_image);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageWithGallery(BuildContext ctx) async {
    Navigator.pop(ctx);
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      File f = File(pickedFile.path);
      setState(() {
        _image = f;
      });
      //_uploadFile(f.path);
    } else {
      EasyLoading.showInfo('没有选择图片');
    }
  }

  // _uploadFile(String filepath) async {
  //   var req = http.MultipartRequest(
  //     'POST',
  //     Uri.parse(RequestURL.upload),
  //   );
  //   req.headers['Grpc-metadata-token'] = "BEARER " + await Shared.getToken();
  //   req.files.add(
  //     await http.MultipartFile.fromPath(
  //       'file',
  //       filepath,
  //       contentType: MediaType('application', 'image/jpeg'),
  //     ),
  //   );

  //   var response = await req.send();
  //   print(response.statusCode);
  //   if (response.statusCode == 200) print('Uploaded!');
  // }

  Widget _showAvtarImage() {
    if (_image != null) {
      return Image.file(
        _image,
        cacheWidth: 88,
        cacheHeight: 88,
      );
    } else {
      return Image.asset(_imageURL, width: 88);
    }
  }

  _showModalBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(10)),
      builder: (BuildContext context) {
        //构建弹框中的内容

        return SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey[300],
                          width: 0.4,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: FlatButton(
                      height: 60,
                      onPressed: () => getImageWithCamera(context),
                      child: Center(
                        child: Text(
                          "拍一张",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey[300],
                          width: 0.4,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: FlatButton(
                      height: 60,
                      onPressed: () => getImageWithGallery(context),
                      child: Center(
                        child: Text(
                          "从相册选择一张",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.grey[200],
                          width: 6,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: FlatButton(
                      height: 60,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Center(
                        child: Text(
                          "取消",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        );
      },
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey[100],
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(14, 16, 14, 16),
          child: Text(Shared.getPrefs()?.getString(Shared.accountDesc),
              style: TextStyle(
                color: Colors.black54,
              )),
        ),
        Container(
          padding: EdgeInsets.only(left: 14, top: 14),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  _showModalBottomSheet();
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: _showAvtarImage()),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.fromLTRB(14, 10, 14, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Shared.getPrefs()
                                ?.getString(Shared?.accountNickname),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              await Shared.navigaTo(context, EditPage());
                              setState(() {
                                print("sldkfjslkdfj");
                              });
                            },
                            child: Icon(
                              Icons.edit_sharp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '抖书号：',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            Shared.getPrefs()?.getString(Shared?.accountName),
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '2342w',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            ' 获赞',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FocusPage(
                                    userName: widget.myModel.userName,
                                    focusNumber: widget.myModel.focusNumber,
                                    fansNumber: widget.myModel.fansNumber,
                                    id: widget.myModel.id,
                                  ),
                                ),
                              );
                            },
                            child: Wrap(
                              children: [
                                Text(
                                  '23',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  ' 关注',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  '234w',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  ' 粉丝',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
