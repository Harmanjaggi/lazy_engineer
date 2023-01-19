import 'package:flutter/material.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/books/data/datasources/local/books_local_datasource.dart';
import 'package:lazy_engineer/features/books/data/datasources/remote/books_remote_datasource.dart';
import 'package:lazy_engineer/features/books/data/models/books_detail_response/books_detail_response.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/book_response.dart';
import 'package:lazy_engineer/features/books/domain/repositories/books_repository.dart';

class BooksRepositoryImpl extends BooksRepository {
  final BooksRemoteDatasource _remoteDataSource = BooksRemoteDatasource();
  final BooksLocalDatasource _localDataSource = BooksLocalDatasource();

  @override
  Future<List<BookDetail>?> getBooksData() async {
    try {
      final BaseResponse<BookResponse> listBooks =
          await _remoteDataSource.getBooks();
      return listBooks.data.result;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<List<BookDetail>?> searchBooks(String query) async {
    try {
      final BaseResponse<BookResponse> listBooks =
          await _remoteDataSource.searchBooks(query);
      return listBooks.data.result;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  List<String>? removeNullList(List<String>? list) {
    if (list == null) return null;
    final List<String> ans = [];
    String ele;
    for (ele in list) {
      if (ele != '') ans.add(ele);
    }
    return ans;
  }

  String? removeNull(String? element) {
    if (element == null || element == '') return null;
    return element;
  }

  @override
  Future<List<BookDetail>?> applyTextFeildFilter(
    List<String> filter,
    List<BookDetail> data,
  ) async {
    try {
      final List<BookDetail> newData = [];
      for (final note in data) {
        final bool checkSemester = filter[0] == '' || note.semester == filter[0];
        final bool check =
            checkSemester;
        if (check) newData.add(note);
      }
      return newData;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<BooksDetailResponse?> getBooksDetailData(String id) async {
    try {
      final BaseResponse<BooksDetailResponse> booksDetail =
          await _remoteDataSource.getBooksDetail(id);
      return booksDetail.data;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<bool> download(String fileLink) async {
    try {
      final int start = fileLink.indexOf('/o/') + 3;
      final int end = fileLink.indexOf('?generation');
      final String name = fileLink.substring(start, end);
      await _localDataSource.downloadBooks(name, fileLink);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
