import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../widgets/header_bar_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _nameEditingController =
      TextEditingController(text: 'admin');
  final TextEditingController _passwordEditingController =
      TextEditingController(text: 'admin');

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        appBar: HeaderBarWidget(
          onTapMenu: () {},
          onTapUser: () {},
          onTapSearch: () {},
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  _InfoWidget(),
                  SizedBox(
                    height: 30,
                  ),
                  _InputFormWidget(
                    nameController: _nameEditingController,
                    passwordController: _passwordEditingController,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (_nameEditingController.text == 'admin' &&
                              _passwordEditingController.text == 'admin') {
                            Navigator.pushNamed(
                              context,
                              '/main',
                            );
                          }
                        },
                        style: ButtonStyle(
                            foregroundColor:
                                WidgetStatePropertyAll(Colors.white),
                            backgroundColor: WidgetStatePropertyAll(
                              Color(0xff032541),
                            ),
                            elevation: WidgetStatePropertyAll(1)),
                        child: Text(
                          'Войти',
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          foregroundColor: WidgetStatePropertyAll(Colors.blue),
                        ),
                        child: Text('Сбросить пароль'),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoWidget extends StatelessWidget {
  const _InfoWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Войти в свою учётную запись',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Чтобы пользоваться правкой и возможностями рейтинга TMDB, а также получить персональные рекомендации, необходимо войти в свою учётную запись. Если у вас нет учётной записи, её регистрация является бесплатной и простой. Нажмите здесь, чтобы начать.',
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Если Вы зарегистрировались, но не получили письмо для подтверждения, нажмите здесь , чтобы отправить письмо повторно.',
        ),
      ],
    );
  }
}

class _InputFormWidget extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController passwordController;

  const _InputFormWidget(
      {required this.nameController, required this.passwordController});

  @override
  State<_InputFormWidget> createState() => __InputFormWidgetState();
}

class __InputFormWidgetState extends State<_InputFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Имя пользователя',
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 36,
          child: TextField(
            controller: widget.nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Пароль',
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 36,
          child: TextField(
            controller: widget.passwordController,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            ),
          ),
        ),
      ],
    );
  }
}
