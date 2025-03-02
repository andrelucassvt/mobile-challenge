import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mobile_challenge/app/modules/home/external/datasource/home_request_data.dart';
import 'package:mobile_challenge/app/modules/home/external/drives/connectivity_driver.dart';
import 'package:mobile_challenge/app/shared/domain/Entities/user_details_model.dart';
import 'package:mobile_challenge/app/shared/domain/Entities/user_model.dart';

class HomeController {
  final HomeService homeService;
  final ConnectivityDriver connectivityDriver;

  HomeController({
    this.homeService,
    this.connectivityDriver,
  });

  final usersController = StreamController<List<Users>>();
  Sink<List<Users>> get userIn => usersController.sink;
  Stream<List<Users>> get userOut => usersController.stream;

  final userSingleController = StreamController<UserSingle>();
  Sink<UserSingle> get userSingleIn => userSingleController.sink;
  Stream<UserSingle> get userSingleOut => userSingleController.stream;

  Future<ConnectivityResult> initConnectivity() async {
    connectivityDriver.initConnectivity();
  }
  getUsers() async {
    List<Users> dados = await homeService.getUsers();
    userIn.add(dados);
  }
  getUsersSeach() async {
    List<Users> dados = await homeService.getUsers();
    return dados;
  }
  getUserSingel(String path) async {
    UserSingle dados = await homeService.getUserSingle(path);
    userSingleIn.add(dados);
  }


  dispose(){
    usersController.close();
    connectivityDriver.connectivitySubscription.cancel();
  }
}