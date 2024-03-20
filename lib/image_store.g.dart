// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageStore on _HomePageStore, Store {
  late final _$imagesAtom =
      Atom(name: '_HomePageStore.images', context: context);

  @override
  List<SamplePosts> get images {
    _$imagesAtom.reportRead();
    return super.images;
  }

  @override
  set images(List<SamplePosts> value) {
    _$imagesAtom.reportWrite(value, super.images, () {
      super.images = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_HomePageStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$hasMoreAtom =
      Atom(name: '_HomePageStore.hasMore', context: context);

  @override
  bool get hasMore {
    _$hasMoreAtom.reportRead();
    return super.hasMore;
  }

  @override
  set hasMore(bool value) {
    _$hasMoreAtom.reportWrite(value, super.hasMore, () {
      super.hasMore = value;
    });
  }

  late final _$pageAtom = Atom(name: '_HomePageStore.page', context: context);

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  late final _$maxPagesAtom =
      Atom(name: '_HomePageStore.maxPages', context: context);

  @override
  int get maxPages {
    _$maxPagesAtom.reportRead();
    return super.maxPages;
  }

  @override
  set maxPages(int value) {
    _$maxPagesAtom.reportWrite(value, super.maxPages, () {
      super.maxPages = value;
    });
  }

  late final _$fetchImagesAsyncAction =
      AsyncAction('_HomePageStore.fetchImages', context: context);

  @override
  Future<void> fetchImages() {
    return _$fetchImagesAsyncAction.run(() => super.fetchImages());
  }

  @override
  String toString() {
    return '''
images: ${images},
isLoading: ${isLoading},
hasMore: ${hasMore},
page: ${page},
maxPages: ${maxPages}
    ''';
  }
}
