import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'conter_state.dart';

class ConterCubit extends Cubit<ConterState> {
  ConterCubit() : super(ConterInitial());
}
