import 'package:flutter/material.dart';
import 'package:mobile_challenge/app/shared/model/user_details_model.dart';

class CardFavoritoWidget extends StatelessWidget {
  final UserSingle model;

  CardFavoritoWidget(this.model);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${model.name == null ? 'Nickname indisponível' : model.name}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              )
            ),
            Text('Localização: ${model.location == null ? 'Localização indisponível' : model.location }'),
            Text('Bio: ${model.bio == null ? 'Bio indisponível' : model.bio }'),
            Text('E-mail: ${model.email == null ? 'E-mail indisponível' : model.email}'),
          ],
        ),
      ),
    );
  }
}