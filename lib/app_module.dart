import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:testing_decorate_routes/product.dart';

import 'main.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => HomePage()),
        ModularRouter(
          '/product/:id1',
          child: (_, args) => ProductScreen(id1: args.params['id1']),
        ),
        ModularRouter(
          '/product/:id1/:id2',
          child: (_, args) => ProductScreen(
            id1: args.params['id1'],
            id2: args.params['id2'],
          ),
        ),
        ModularRouter(
          '/product/:id1/:id2/:id3',
          child: (_, args) => ProductScreen(
              id1: args.params['id1'],
              id2: args.params['id2'],
              id3: args.params['id3']),
        ),
        ModularRouter(
          '/product/:id1/:id2/:id3/:id4',
          child: (_, args) => ProductScreen(
              id1: args.params['id1'],
              id2: args.params['id2'],
              id3: args.params['id3'],
              id4: args.params['id4']),
        )
      ];
}
