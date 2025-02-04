import 'package:flutter/material.dart';
import 'package:movie_db/widgets/movie_card_widget.dart';

import '../entities/movie_entity.dart';
import '../utils/assets.dart';

class PopularMoviesScreen extends StatefulWidget {
  const PopularMoviesScreen({super.key});

  @override
  State<PopularMoviesScreen> createState() => _PopularMoviesScreenState();
}

class _PopularMoviesScreenState extends State<PopularMoviesScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<MovieEntity> filterMoviesList = [];
  final List<MovieEntity> movies = [
    MovieEntity(
      image: Assets.tSonicImage,
      title: 'Соник 3 в кино',
      date: '19 декабря 2024',
      description:
          'Соник, Наклз и Тейлз воссоединяются против нового могущественного противника, Ежа Шэдоу, таинственного злодея с силами, не похожими ни на что, с чем они сталкивались раньше.',
    ),
    MovieEntity(
      image: Assets.tSonicImage,
      title: 'Аватар',
      date: '19 декабря 2024',
      description:
          'Соник, Наклз и Тейлз воссоединяются против нового могущественного противника, Ежа Шэдоу, таинственного злодея с силами, не похожими ни на что, с чем они сталкивались раньше.',
    ),
    MovieEntity(
      image: Assets.tSonicImage,
      title: 'Соник 3 в кино',
      date: '19 декабря 2024',
      description:
          'Соник, Наклз и Тейлз воссоединяются против нового могущественного противника, Ежа Шэдоу, таинственного злодея с силами, не похожими ни на что, с чем они сталкивались раньше.',
    ),
    MovieEntity(
      image: Assets.tSonicImage,
      title: 'Титаник',
      date: '19 декабря 2024',
      description:
          'Соник, Наклз и Тейлз воссоединяются против нового могущественного противника, Ежа Шэдоу, таинственного злодея с силами, не похожими ни на что, с чем они сталкивались раньше.',
    ),
    MovieEntity(
      image: Assets.tSonicImage,
      title: '128 ударов в минуту',
      date: '19 декабря 2024',
      description:
          'Соник, Наклз и Тейлз воссоединяются против нового могущественного противника, Ежа Шэдоу, таинственного злодея с силами, не похожими ни на что, с чем они сталкивались раньше.',
    ),
    MovieEntity(
      image: Assets.tSonicImage,
      title: 'Сумерки',
      date: '19 декабря 2024',
      description:
          'Соник, Наклз и Тейлз воссоединяются против нового могущественного противника, Ежа Шэдоу, таинственного злодея с силами, не похожими ни на что, с чем они сталкивались раньше.',
    ),
    MovieEntity(
      image: Assets.tSonicImage,
      title: 'Марвел',
      date: '19 декабря 2024',
      description:
          'Соник, Наклз и Тейлз воссоединяются против нового могущественного противника, Ежа Шэдоу, таинственного злодея с силами, не похожими ни на что, с чем они сталкивались раньше.',
    ),
    MovieEntity(
      image: Assets.tSonicImage,
      title: 'Соник 2 в кино',
      date: '19 декабря 2024',
      description:
          'Соник, Наклз и Тейлз воссоединяются против нового могущественного противника, Ежа Шэдоу, таинственного злодея с силами, не похожими ни на что, с чем они сталкивались раньше.',
    ),
    MovieEntity(
      image: Assets.tSonicImage,
      title: 'Мистер робот',
      date: '19 декабря 2024',
      description:
          'Соник, Наклз и Тейлз воссоединяются против нового могущественного противника, Ежа Шэдоу, таинственного злодея с силами, не похожими ни на что, с чем они сталкивались раньше.',
    ),
    MovieEntity(
      image: Assets.tSonicImage,
      title: 'Закрытая школа',
      date: '19 декабря 2024',
      description:
          'Соник, Наклз и Тейлз воссоединяются против нового могущественного противника, Ежа Шэдоу, таинственного злодея с силами, не похожими ни на что, с чем они сталкивались раньше.',
    ),
  ];

  void search() {
    if (_searchController.text.isNotEmpty) {
      filterMoviesList = movies
          .where(
            (MovieEntity movie) => movie.title
                .toLowerCase()
                .contains(_searchController.text.toLowerCase()),
          )
          .toList();
    } else {
      filterMoviesList = movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(search);
    search();
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.removeListener(search);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: filterMoviesList.length,
            itemExtent: 163,
            padding: EdgeInsets.only(top: 70),
            itemBuilder: (context, index) {
              return MovieCardWidget(
                onTap: () {},
                movieEntity: filterMoviesList[index],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                label: Text('Поиск'),
                filled: true,
                fillColor: Colors.white.withAlpha(230),
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
