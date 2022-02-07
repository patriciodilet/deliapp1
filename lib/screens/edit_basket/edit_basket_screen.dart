import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_food_delivery_app/blocs/basket/basket_bloc.dart';

class EditBasketScreen extends StatelessWidget {
  static const String routeName = '/edit-basket';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => EditBasketScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Editar carrito'),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(),
                    primary: Theme.of(context).accentColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Hecho'),
                )
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Items ',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Theme.of(context).accentColor),
              ),
              BlocBuilder<BasketBloc, BasketState>(
                builder: (context, state) {
                  if (state is BasketLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is BasketLoaded) {
                    return state.basket.items.length == 0
                        ? Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 5),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Carrito vacío',
                                  textAlign: TextAlign.left,
                                  style: Theme.of(context).textTheme.headline6,
                                )
                              ],
                            ),
                          )
                        : ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.basket
                                .itemQuantity(state.basket.items)
                                .keys
                                .length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: double.infinity,
                                margin: const EdgeInsets.only(top: 5),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      '${state.basket.itemQuantity(state.basket.items).entries.elementAt(index).value}x',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .accentColor),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${state.basket.itemQuantity(state.basket.items).keys.elementAt(index).name}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                    ),
                                    IconButton(
                                      visualDensity: VisualDensity.compact,
                                      onPressed: () {
                                        context.read<BasketBloc>()
                                          ..add(RemoveAllItem(state.basket
                                              .itemQuantity(state.basket.items)
                                              .keys
                                              .elementAt(index)));
                                      },
                                      icon: Icon(Icons.delete),
                                    ),
                                    IconButton(
                                      visualDensity: VisualDensity.compact,
                                      onPressed: () {
                                        context.read<BasketBloc>()
                                          ..add(RemoveItem(state.basket
                                              .itemQuantity(state.basket.items)
                                              .keys
                                              .elementAt(index)));
                                      },
                                      icon: Icon(Icons.remove_circle),
                                    ),
                                    IconButton(
                                      visualDensity: VisualDensity.compact,
                                      onPressed: () {
                                        context.read<BasketBloc>()
                                          ..add(AddItem(state.basket
                                              .itemQuantity(state.basket.items)
                                              .keys
                                              .elementAt(index)));
                                      },
                                      icon: Icon(Icons.add_circle),
                                    ),
                                  ],
                                ),
                              );
                            });
                  } else {
                    return Text('Someting went wrong.');
                  }
                },
              ),
            ],
          ),
        ));
  }
}
