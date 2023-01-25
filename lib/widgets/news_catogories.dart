import 'package:flutter/material.dart';

class CategoryNewsCardWidget extends StatelessWidget {
  const CategoryNewsCardWidget({
    Key? key,
    required this.imgURL,
    required this.color,
  }) : super(key: key);

  final String imgURL;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 5),
      child: Card(
        elevation: 6,
        color: color,
        margin: EdgeInsets.zero,
        child: Row(
          children: [
            Container(
              height: 110,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6)),
                image: DecorationImage(
                  image: NetworkImage(
                    imgURL,
                  ),
                  fit: BoxFit.none,
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'مشاهد مذهلة لوميض البروق في سماء مكة المصور عبدالقادرالمالكي يخطف صورا لمشاهد وميض البروق وجمال هطول المطر في سماء مكة المكرمة',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
