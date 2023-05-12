import 'package:pour_nous/ui/produtos/controller/produtos_repository.dart';
import 'package:pour_nous/ui/produtos/data/produtos_api.dart';

class ProdutosRepositoryImpl implements ProdutosRepository {
  final ProdutosApi _produtosApi;

  ProdutosRepositoryImpl(this._produtosApi);
}
