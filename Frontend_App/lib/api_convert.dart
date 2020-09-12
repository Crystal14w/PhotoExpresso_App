/*/*
import 'dart:convert';
//import 'package:PhotoExpressoApp/api_response.dart';

Post postFromJson(String str) {
  final jsonData = json.decode(str);
  return Post.fromJson(jsonData);
}

String postToJson(Post data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}


List<Post> allPostsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Post>.from(jsonData.map((x) => Post.fromJson(x)));
}

String allPostsToJson(List<Post> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class Post {
  final int id;
  final String title;
  //final List<Image> imgUploaded;
  final String createdAt;
  final String updatedAt;
  
  Post({
    this.id,
    this.title,
    //this.imgUpload,
    this.createdAt,
    this.updatedAt,

  });
  factory Post.fromJson(Map<String, dynamic> json) => new Post(
    id: json['id'],
    title: json['title'],
    //imgUploaded: json['imgUploaded'],
    createdAt: json['createdAt'],
    updatedAt: json['updatedAt'],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    //"imgUpload": imgUploaded,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
  };
}*/



//I messed up 500 error-------------------------------will try this UI one more time----------------------------
/*import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';

class Photo {
  int id;
  String title;
  String imgUploaded;
  String createdAt;
  String updatedAt;

  Photo(
      {this.id, this.title, this.imgUploaded, this.createdAt, this.updatedAt});

  Photo.fromJson(Map<String, dynamic> json) {
    Photo(
      id: json['id'] as int,
      title: json['title'] as String,
      imgUploaded: json['imgUploaded'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );
  }
}

void main() => runApp(PhotoExpressoApp());

class PhotoExpressoApp extends StatefulWidget {
  PhotoExpressoApp({Key key}) : super(key: key);

  @override
  MyHomePage createState() => MyHomePage();
}

class MyHomePage extends State<PhotoExpressoApp> {
  final TextEditingController _controller = TextEditingController();
  String title;
  Future<Photo> futureAlbum;

  Future<Photo> createPhoto(String title) async {
    final http.Response response = await http.post(
      'http://127.0.0.1:8001/items',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );
    if (response.statusCode == 201 || response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return Photo.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    futureAlbum = createPhoto(title);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Images',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Create Image Post'),
        ),
        body: new Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: (futureAlbum == null)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      controller: _controller,
                      decoration: InputDecoration(hintText: 'Enter Title'),
                    ),
                    RaisedButton(
                      child: Text('Create Data'),
                      onPressed: () {
                        setState(() {
                          futureAlbum = createPhoto(_controller.text);
                        });
                      },
                    ),
                  ],
                )
              : FutureBuilder<Photo>(
                  future: futureAlbum,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(snapshot.data.title);
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }

                    return CircularProgressIndicator();
                  },
                ),
        ),
      ),
    );
  }
}
//I messed up 500 error-------------------------------will try this UI one more time----------------------------
*/*/