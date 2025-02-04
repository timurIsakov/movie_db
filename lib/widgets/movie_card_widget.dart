import 'package:flutter/material.dart';
import 'package:movie_db/entities/movie_entity.dart';

class MovieCardWidget extends StatelessWidget {
  final MovieEntity movieEntity;
  final Function() onTap;
  const MovieCardWidget(
      {super.key, required this.onTap, required this.movieEntity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 8,
                ),
              ],
              color: Colors.white,
              border: Border.all(
                color: Colors.black.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Image(
                  image: AssetImage(
                    movieEntity.image,
                  ),
                  height: 141,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movieEntity.title,
                          maxLines: 2,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          movieEntity.date,
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          movieEntity.description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(6),
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
