import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:students/common/shared.dart';
import 'package:students/pages/home/components/comments.dart';
import 'package:students/pages/home/data/video_comments.dart';
import 'package:students/pages/home/model/video_comments_model.dart';
import 'package:students/pages/home/components/comments_btn.dart';
import 'package:students/pages/home/components/description.dart';
import 'package:students/pages/home/components/favorite_btn.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final String userName;
  final String videoUrl;
  final String title;
  final String desc;
  final int thumbsUp;
  final bool favorite;
  VideoWidget({
    @required this.userName,
    @required this.videoUrl,
    @required this.title,
    @required this.desc,
    this.thumbsUp,
    @required this.favorite,
  });
  @override
  _VideoWidget createState() => _VideoWidget();
}

class _VideoWidget extends State<VideoWidget> {
  VideoPlayerController _controller;

  ScrollController _scrollController = ScrollController();
  bool _play = true;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.play();
        });
      });
    _controller.setLooping(true);
  }

  Future<CommentsListModel> getCommentsData() async {
    return CommentsListModel.fromJson(commentsJson);
  }

  void _showComments() async {
    bool login = await Shared.checkLogin(context);
    if (login) {
      CommentsListModel comments = await getCommentsData();
      List<ListElement> list = comments.list;
      showModalBottomSheet(
        //isScrollControlled: true,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(10)),
        builder: (BuildContext context) {
          //构建弹框中的内容

          return Container(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    '249' + '条评论',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(Icons.close),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(14, 0, 14, 50),
                    child: MediaQuery.removePadding(
                      context: context,
                      child: ListView(
                        controller: _scrollController,
                        children: list.map((item) {
                          return CommentWidget(item: item);
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        context: context,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.initialized
          ? GestureDetector(
              onTap: () {
                setState(() {
                  _play = !_play;
                  if (_play) {
                    _controller.play();
                  } else {
                    _controller.pause();
                  }
                });
              },
              child: Stack(
                children: [
                  Container(
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(
                            _controller,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    transform: Matrix4.translationValues(0, -60, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          color: Color.fromRGBO(0, 0, 0, 0),
                          padding: EdgeInsets.fromLTRB(14, 0, 14, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //video favorite btn
                              FavoriteBtnWidget(
                                favorite: widget.favorite,
                                thumbsUp: widget.thumbsUp,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              //video comments btn
                              CommentsBtnWidget(
                                showComments: _showComments,
                                thumbsUp: widget.thumbsUp,
                              ),
                              //video description
                              DescriptionWidget(
                                userName: widget.userName,
                                title: widget.title,
                                desc: widget.desc,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
          : Container(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
