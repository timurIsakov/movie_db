import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../widgets/header_bar_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  Text(
                    'Войти в свою учётную запись',
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
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Имя пользователя',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 36,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 6),
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
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
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
