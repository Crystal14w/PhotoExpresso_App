////import 'package:http/http.dart' as http;
//import 'dart:async';
//import 'package:PhotoExpressoApp/api_convert.dart';
//import 'dart:io';


/*Future<List> createPost(String post) async {
  final response = await http.post('http://127.0.0.1:8001/items',
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.authorizationHeader: ''
      },
      body: postToJson(post));
  return response;
}*/

/*Future<Post> createPostPost(Post post) async {
  final response = await http.post('http://127.0.0.1:8001/items',
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      body: postToJson(post));

  return postFromJson(response.body);
}
*/
//import 'dart:html';

//--------lets copy this
/*
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

//class SearchService {
Future<http.Response> fetchAlbum() async {
  var uri = Uri.parse("http://127.0.0.1:8001/items");
  http.Request response = new http.Request('POST', uri);
  final responseJson = json.decode(response.body);

  //return http.fromJson(responseJson);
  return responseJson;
}*/

/*static Future<bool> multipart({
    String item_id,
    String method = "POST",
    String title,
    List<File> files,
}) async {
    // I have a method to generate headers
    var headers = await _generateHeaders();
    Uri uri = Uri.parse('http://127.0.0.1:8001/items');
    var request = http.MultipartRequest(method, uri);
    files.forEach((file) => {
          request.files.add(http.MultipartFile.fromBytes(
            fieldName,
            file.readAsBytesSync(),
            filename: file.path.split('/').last,
          ))
        });
    request.headers.addAll(headers);
    http.StreamedResponse res = await request.send();
    return res.statusCode >= 200 && res.statusCode < 300;
}*/
/*Future uploadmultipleimage(List images) async {
  var uri = Uri.parse("http://127.0.0.1:8001/items");
  http.MultipartRequest request = new http.MultipartRequest('POST', uri);
  request.headers[''] = '';
  request.fields['title'] = '1';
  request.fields['img_uploaded'] = 'http://127.0.0.1:8000/images/test_star_pic_1.jpg';
  //multipartFile = new http.MultipartFile("imagefile", stream, length, filename: basename(imageFile.path));
  List<MultipartFile> newList = new List<MultipartFile>();
  for (int i = 0; i < images.length; i++) {
    File imageFile = File(images[i].toString());
    var stream =
        new http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
    var length = await imageFile.length();
    var multipartFile = new http.MultipartFile("imagefile", stream, length,
        filename: basename(imageFile.path));
    newList.add(multipartFile);
  }
  request.files.addAll(newList);
  var response = await request.send();
  if (response.statusCode == 200) {
    print("Image Uploaded");
  } else {
    print("Upload Failed");
  }
  response.stream.transform(utf8.decoder).listen((value) {
    print(value);
  });
}*/

//Future getUploadImg(List _image) async {

//String url = 'http://127.0.0.1:8001/items';
//final length = await _image.length();
//var request = new http.MultipartRequest('POST', Uri.parse(url));
//resquest.files.add(await http.MultipartFile.fromPath('picture', title));
//var res = await request.send();
//new http.MultipartFile('image', _image.openRead(), length));
//http.Response response =
// await http.Response.fromStream(await request.send());
//print("Result: ${response.body}");
//if (response.statusCode == 200) print('Uploaded!');
//return JSON.decode(response.body);
//}

//class SearchService {
// static Future<String> searchDjangoApi(String query) async {
//  String url = 'http://127.0.0.1:8001/items';
//  var request = http.MultipartRequest('POST', Uri.parse(url));
// request.fields['key'] = 'value';
// request.files.add(await http.MultipartFile.fromPath('picture', filename));
// var res = await request.send();

//}

//http.Response response = await http.get(Uri.encodeFull(url));

// print("search_service.dart: searchDjangoApi: ${response.body}");

//return response.body;

//}

/*import 'package:flutter/material.dart';
//import 'package:PhotoExpressoApp/api_response.dart';
//import 'package:PhotoExpressoApp/api_page.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<List<Album>> fetchAlbum() async {
  http.Response response = await http.get('http://127.0.0.1:8001/items');
  final responseJson = json.decode(response.body);

  return Album.fromJson(responseJson[0]);
}

class Album {
  int id;
  String title;
  String imgUploaded;
  String createdAt;
  String updatedAt;

  Album(
      {this.id, this.title, this.imgUploaded, this.createdAt, this.updatedAt});

  Album.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    imgUploaded = json['img_uploaded'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['img_uploaded'] = this.imgUploaded;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

//This really works but only for 1 response
/*if (response.statusCode == 200) {
    print(response.statusCode);
    print(json.decode(response.body));
  } else {
    print(response.statusCode);
  }
  return Album.fromJson(responseJson[0]);
  //return responseJson;*/
//__________
//var url = Url.parse("http://127.0.0.1:8001/items");
//http.Request response = new http.Request('POST', uri);
//final
/*http.Response response = await http.get(http://127.0.0.1:8001/items);
  responseJson = json.decode(response.body);

  String jsonsDataString = response.body.toString(); // toString of Response's body is assigned to jsonDataString
  _data = jsonDecode(jsonsDataString);
  return print(_data.toString());*/
//if (response.body.isNotEmpty) {
// json.decode(response.body);
//}

//return http.fromJson(responseJson);
//return responseJson;
//}
//Found new way to do JSON to Dart--------------
/*class Album {
  final int id;
  final String title;

  Album({this.id, this.title});

  factory Album.fromJson(Map json) {
    return Album(
      id: json['id'],
      title: json['title'],
    );
  }
}*/

void main() {
  runApp(PhotoExpressoApp());
}

class PhotoExpressoApp extends StatefulWidget {
  PhotoExpressoApp({Key key}) : super(key: key);

  @override
  _PhotoExpressoAppState createState() => _PhotoExpressoAppState();
}

class _PhotoExpressoAppState extends State<PhotoExpressoApp> {
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.title);
              } else if (snapshot.hasData) {
                return Text(snapshot.data.imgUploaded);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}*/

//again
//class PhotoExpressoApp extends StatefulWidget {
//  @override
// _PictureState createState() => _PictureState();
//}

//class _PictureState extends State<PhotoExpressoApp> {
// const String _title;
// const Image(image: NetworkImage('http://127.0.0.1:8001/items'),
//)

/*
class _FlutterSearchState extends State<PhotoExpressoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: SearchPage(),
    );
  }*/
//}


//Clean before interview main.dart page
//class Api {
/* Future<List<Photo>> fetchAlbumData() async {
    final url = 'http://127.0.0.1:8001/items';
    final response = await http.get(url);

    // Use the compute function to run parsePhotos in a separate isolate.
     //return compute(parsePhotos, response.body);
    //return(response);
    var responseBodyJson = json.decode(response);
    var parsedJson = jsonDecode(responseBodyJson);
    var photo = Photo.Photo(parsedJson);
    return photo;*/
//('${$this.id}' , '${this.title}', '${this.imgUploaded}', {'${this.createdAt}', '${this.updatedAt)}');
// }
/*
  List<Photo> parsePhotos(String responseBody) {
    //final parsed = json.decode(responseBody).cast<Map<Photo, dynamic>>();
    //return parsed.map<Photo>((json) => new Photo.fromJson(json)).toList();
    var responseBodyJson = json.decode(responseBody);
    var parsedJson = jsonDecode(responseBodyJson);
    var phote = Photo(parsedJson);
    print('${$this.id}' , '${this.title}', '${this.imgUploaded}', {'${this.createdAt}', '${this.updatedAt)}');
  //}
}*/

 /*Future<List<Photo>> fetchAlbumData() async {
    final url = 'http://127.0.0.1:8001/items';
    final client = http.Client();
    final response = new http.Request('GET', Uri.parse(url)).followRedirects = false;
   //var response = await http.get(url);
    var responseBodyJson = json.decode(response);
    //var parsedJson = jsonDecode(responseBodyJson);
    var photo = Photo(responseBodyJson);
    return photo;

    // Use the compute function to run parsePhotos in a separate isolate.
     //return compute(parsePhotos, response.body);
    //return(response);
}*/

/*@override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbumData();
  }*/
//String url = 'http://127.0.0.1:8001/items';
//String response;

/*Future<List<String>> fetchAlbumData() async {
    final response = await http
        .get('http://127.0.0.1:8001/items')
        .timeout(Duration(seconds: 5));

    if (response.statusCode == 200) {
      return compute(parseAlbumData, response.body);
    } else {
      throw Exception('Failed to load');
    }
  }

  List<String> parseAlbumData(String responseBody) {
    final parsed = List<String>.from(json.decode(responseBody));
    return parsed;
  }*/
/*ok--
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<Photo>>(
        future: futureAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? PhotosList(photos: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class PhotosList extends StatelessWidget {
  final List<Photo> photos;

  PhotosList({Key key, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 0,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Image.network(photos[index].imgUploaded);
      },
    );
  }
}

/*Future<List<Post>> getAllPosts() async {
  final response = await http.get(url);
  print(response.body);
  return allPostsFromJson(response.body);
}*/

/* @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Gallery Example"),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: responseBody,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.title);
              } else if (snapshot.hasData) {
                return Text(snapshot.data.imgUploaded);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
                    });
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        ));
  }
}*/
/*
Future loadImage() async {
  String jsonString = await http
      .get('http://127.0.0.1:8001/items');
  final jsonResponse = json.decode(jsonString);
  Album album = new Album.fromJson(jsonResponse);
  print(album.title);
}*/
/*FutureBuilder<List<String>> fetchAlbumData() async {
  final response = await http
      .get('http://127.0.0.1:8001/items')
      .timeout(Duration(seconds: 5));

  if (response.statusCode == 200) {
    return compute(parseAlbumData, response.body);
  } else {
    throw Exception('Failed to load');
  }
}*/
/*
List<String> parseAlbumData(String responseBody) {
  final parsed = List<String>.from(json.decode(responseBody));
  return parsed;
}*/
*/