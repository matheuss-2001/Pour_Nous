import 'package:pour_nous/ui/conta/data/conta_api.dart';

import '../controller/conta_repository.dart';

class ContaRepositoryImpl implements ContaRepository {
  final ContaApi _contaApi;

  ContaRepositoryImpl(this._contaApi);
}
