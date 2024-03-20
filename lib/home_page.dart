import 'package:a/image_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _store = HomePageStore();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _store.fetchImages();
    _scrollController.addListener(_loadMore);
  }

  void _loadMore() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      _store.fetchImages();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image List of Api'),
      ),
      body: Observer(
        builder: (context) {

          if (_store.isLoading && _store.images.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              controller: _scrollController,
              itemCount: _store.images.length + (_store.hasMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index < _store.images.length) {
                  var photo = _store.images[index];
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'albumId: ${photo.albumId}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Id: ${photo.id}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Title: ${photo.title}',
                          maxLines: 1,
                          style: const TextStyle(fontSize: 18),
                        ),
                        const Text(
                          'Url: ',
                          style: TextStyle(fontSize: 18),
                        ),
                        Image.network(
                          "${photo.url}",
                          height: 60,
                          width: 60,
                        ),
                        const Text(
                          'ThumbnailUrl: ',
                          style: TextStyle(fontSize: 18),
                        ),
                        Image.network(
                          "${photo.thumbnailUrl}",
                          width: 120,
                          height: 120,
                        ),
                      ],
                    ),
                  );
                } else if (_store.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    alignment: Alignment.center,
                    child: const Text('End of List'),
                  );
                }
              },
            );
          }
        },
      ),
    );
  }
}
