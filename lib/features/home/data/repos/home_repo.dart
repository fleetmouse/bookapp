import 'package:bookapp/core/errors/Fail.dart';
import 'package:bookapp/features/home/data/models/books_model/books_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //we create an apstract class and we define the fetures what will do in the screen
  Future<Either<Failure, List<BooksModel>>>
      fetchBestSellerBooks(); // the requeasst might fail-so we need to also identify this case also  l/error r/ works fine
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks();
}
