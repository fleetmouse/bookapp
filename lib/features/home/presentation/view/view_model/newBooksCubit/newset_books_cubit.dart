import 'package:bloc/bloc.dart';
import 'package:bookapp/features/home/data/models/books_model/books_model.dart';
import 'package:bookapp/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homerepo) : super(NewsetBooksInitial());
  final HomeRepo homerepo;

  Future<void> fetchNewestBooks() async {
    emit(NewsetBooksloading());
    var result = await homerepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(NewsetBooksfailure(failure.errormsg));
    }, (books) {
      emit(
        NewsetBookssuccess(books),
      );
    });
  }
}
