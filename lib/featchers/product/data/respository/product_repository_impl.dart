import 'package:dartz/dartz.dart';
import 'package:asa_zaoa/core/error/failures.dart';
import 'package:asa_zaoa/core/remoteHelper/responseHelper/app_api_response.dart';
import 'package:asa_zaoa/core/remoteHelper/responseHelper/model/model.dart';

import '../../domain/repository/product_repository.dart';
import '../remoteDataSource/product_data_source.dart';

class ProductRepositoryImpl extends ProductRepository {
  ProductRemoteDataSource productRemoteDataSource;

  ProductRepositoryImpl({required this.productRemoteDataSource});

  @override
  Future<Either<Failure, AppApiResponse<Model>>> getProducts() {
    return productRemoteDataSource.getProducte();
  }
}
