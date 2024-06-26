import 'package:bloc/bloc.dart';
import 'package:bookapp/features/home/data/models/books_model/books_model.dart';
import 'package:bookapp/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'home_top_list_view_state.dart';

class HomeTopListViewCubit extends Cubit<HomeTopListViewState> {
  HomeTopListViewCubit(this.homerepo) : super(HomeTopListViewInitial());

  final HomeRepo homerepo;

  Future<void> fetchFeaturedBooks() async {
    emit(HomeTopListViewLoading());
    var result = await homerepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(HomeTopListViewFailure(failure.errormsg));
    }, (books) {
      emit(
        HomeTopListSuccess(books),
      );
    });
  }
}
