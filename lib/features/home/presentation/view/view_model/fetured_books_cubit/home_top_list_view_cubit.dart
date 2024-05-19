import 'package:bloc/bloc.dart';
import 'package:bookapp/features/home/data/models/books_model/books_model.dart';
import 'package:equatable/equatable.dart';

part 'home_top_list_view_state.dart';

class HomeTopListViewCubit extends Cubit<HomeTopListViewState> {
  HomeTopListViewCubit() : super(HomeTopListViewInitial());
}
