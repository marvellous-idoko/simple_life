class GeneralState {
  final Map<String, dynamic> message;
  GeneralState(this.message);
}

class GeneralInitialState extends GeneralState {
  GeneralInitialState() : super({});
}

class GeneralLoadingState extends GeneralState {
  GeneralLoadingState() : super({});
}

class GeneralSuccessState extends GeneralState {
  GeneralSuccessState() : super({});
}