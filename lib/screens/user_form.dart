import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/widget/base_widget.dart';

import '../features/user_form/bloc/user/user_bloc.dart';
import '../features/user_form/widgets/text_field.dart';
import '../theme.dart';
import 'weather.dart';

class UserFormScreen extends StatefulWidget {
  const UserFormScreen({super.key});

  @override
  State<UserFormScreen> createState() => _UserFormScreenState();
}

class _UserFormScreenState extends State<UserFormScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwController = TextEditingController();

  final UserBloc _userBloc = UserBloc();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider<UserBloc>(
      create: (_) => _userBloc,
      child: Scaffold(
        body: BlocConsumer<UserBloc, UserState>(
          listener: (context, state) {
            if (state.fireBaseStatus == FireBaseStatus.success) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WeatherScreen(),
                  ));
            }

            if (state.fireBaseStatus == FireBaseStatus.loginPassword) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Неверная почта или неверный пароль!')));
            }

            if (state.fireBaseStatus == FireBaseStatus.lostConnection) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Соединение потеряно!')));
            }
          },
          builder: (context, state) {
            return BaseWidget(
              status: state.status,
              widget: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Вход',
                        style: theme.textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold)),
                    padding,
                    Text('Введите данные для входа',
                        style: theme.textTheme.titleMedium
                            ?.copyWith(color: Colors.grey)),
                    paddingX2,
                    TextFieldWidget(
                      controller: _emailController,
                      hintText: 'Email',
                      textInputType: TextInputType.emailAddress,
                    ),
                    padding,
                    TextFieldWidget(
                      controller: _passwController,
                      suffixIcons: const [
                        'assets/icons/eye.svg',
                        'assets/icons/eye_close.svg'
                      ],
                      hintText: 'Password',
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    paddingX2,
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () async {
                            if (_emailController.text.isEmpty ||
                                _passwController.text.isEmpty) {
                              ScaffoldMessenger.of(context)
                                  .removeCurrentSnackBar();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Заполните поля!')));

                              return;
                            }

                            context.read<UserBloc>().add(UserEvent.sendData(
                                email: _emailController.text,
                                password: _passwController.text));
                          },
                          child: Text(
                            'Войти',
                            style: theme.textTheme.bodyLarge?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
