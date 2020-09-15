import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm/bloc/user_bloc.dart';
import 'package:mvvm/model/user.dart';
import 'package:mvvm/ui/user_cart.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    final Random r = Random();
    User user = User(
        id: '1',
        firstName: 'tes',
        lastname: 'akhir',
        email: 'mail',
        avatar: 'ava');
    return Scaffold(
      appBar: AppBar(
        title: Text('MVVM'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              // bloc.dispatch(r.nextInt(5) + 1);
              bloc.dispatch(1);
            },
            child: Text('Pick Random User'),
          ),
          UserCard(user),
          BlocBuilder<UserBloc, User>(
            builder: (context, user) =>
                (user is UninitializedUser) ? Container() : UserCard(user),
          )
        ],
      ),
    );
  }
}
