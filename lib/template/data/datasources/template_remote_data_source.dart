import 'package:dio/dio.dart';
import 'package:waddy/core/errors/exceptions.dart';
import 'package:waddy/core/params/params.dart';
import '../models/template_model.dart';

/// This function call the server to get the template data from remote
///
/// Throws a [ServerException] for all error codes
abstract class TemplateRemoteDataSource {

  Future<TemplateModel> getTemplate({required TemplateParams templateParams});
}

/// This class implement the template remote data source
///
/// implement the [TemplateRemoteDataSource]
class TemplateRemoteDataSourceImpl implements TemplateRemoteDataSource {
  final Dio dio;

  TemplateRemoteDataSourceImpl({required this.dio});

  @override
  Future<TemplateModel> getTemplate({required TemplateParams templateParams}) async {
    final response = await dio.get(
      'https://pokeapi.co/api/v2/pokemon/',
      queryParameters: {
        'api_key': 'if needed',
      },
    );

    if (response.statusCode == 200) {
      return TemplateModel.fromJson(json: response.data);
    } else {
      throw ServerException();
    }
  }
}
