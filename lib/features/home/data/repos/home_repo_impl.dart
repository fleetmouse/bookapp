import 'package:bookapp/core/errors/Fail.dart';
import 'package:bookapp/core/utils/api_service.dart';
import 'package:bookapp/features/home/data/models/books_model/books_model.dart';
import 'package:bookapp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final APIService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BooksModel>>> fetchBestSellerBooks() async {
    try {
      var data =
          await apiService.get(endPoint: 'volumes?q=flutter&orderBy=newest');

      List<BooksModel> Books = [];

      for (var item in data['items']) {
        Books.add(BooksModel.fromJson(item));
      }

      return right(Books); // this from the pacakge that we use dartz
    } on Exception catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}

// we need to make a warper so we make connection with the service
