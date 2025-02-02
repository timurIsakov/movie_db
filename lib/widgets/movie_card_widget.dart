import 'package:flutter/material.dart';

import '../utils/assets.dart';

class MovieCardWidget extends StatelessWidget {
  const MovieCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
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
                Assets.tSonicImage,
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
                      'Соник 3 в Кино',
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '19 декабря 2024',
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Соник, Наклз и Тейлз воссоединяются против нового могущественного противника, Ежа Шэдоу, таинственного злодея с силами, не похожими ни на что, с чем они сталкивались раньше. Команда Соника вынуждена создать неожиданный союз в надежде остановить Шэдоу и защитить планету.',
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
    );
  }
}
