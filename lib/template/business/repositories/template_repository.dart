import 'package:dartz/dartz.dart';
import 'package:waddy/core/errors/failure.dart';
import 'package:waddy/core/params/params.dart';

import '../entities/template_entity.dart';


abstract class TemplateRepository {
  Future<Either<Failure, TemplateEntity>> getTemplate({
    required TemplateParams templateParams,
  });
}
