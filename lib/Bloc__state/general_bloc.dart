import 'package:flutter_bloc/flutter_bloc.dart';

import '../services/general_storage.dart';
import 'general_state.dart';

class GeneralBloc extends Bloc<GeneralEvent, GeneralState> {
  GeneralBloc() : super(GeneralLoadingState()) {
    on<LoadGeneralMessage>((event, emit) async {
      try {
        final savedMessage = await GeneralStorageService().getMessage();
        print('savedMessage');
        print(savedMessage);
        emit(GeneralState(savedMessage));
      } catch (_) {
        emit(GeneralState({}));
      }
    });

    on<UpdateGeneralMessage>((event, emit) {
      emit(GeneralState(event.message));
    });
  }
}

sealed class GeneralEvent {
  const GeneralEvent();
}

final class LoadGeneralMessage extends GeneralEvent {
  const LoadGeneralMessage();
}

final class UpdateGeneralMessage extends GeneralEvent {
  const UpdateGeneralMessage(this.message);

  final Map<String, dynamic> message;
}
