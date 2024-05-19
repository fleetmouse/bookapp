part of 'home_top_list_view_cubit.dart';

sealed class HomeTopListViewState extends Equatable {
  const HomeTopListViewState();

  @override
  List<Object> get props => [];
}

final class HomeTopListViewInitial extends HomeTopListViewState {}

final class HomeTopListViewLoading extends HomeTopListViewState {}

final class HomeTopListViewFailure extends HomeTopListViewState {
  final String errMessage;

  const HomeTopListViewFailure(this.errMessage);
}

final class HomeTopListSuccess extends HomeTopListViewState {
  // i got the option to leave the data on cubit or in the state
  final List<BooksModel> books;

  const HomeTopListSuccess(this.books);
}
