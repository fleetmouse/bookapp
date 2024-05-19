part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewsetBooksloading extends NewsetBooksState {}

final class NewsetBookssuccess extends NewsetBooksState {
  final List<BooksModel> books;

  const NewsetBookssuccess(this.books);
}

final class NewsetBooksfailure extends NewsetBooksState {
  final String errMessage;

  const NewsetBooksfailure(this.errMessage);
}
