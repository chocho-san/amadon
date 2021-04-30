import 'package:flutter/material.dart';

class QuantityChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(            borderRadius: BorderRadius.horizontal(left: Radius.circular(5)),


            child: Container(
              decoration:  BoxDecoration(
                  border: Border(right: BorderSide(color: Colors.grey)),

                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                    Color.fromRGBO(246, 247, 249, 1),
                    Color.fromRGBO(230, 233, 236, 1),
                  ])),
              child: IconButton(
                padding: EdgeInsets.all(0),
                icon: Icon(Icons.remove),
                onPressed: () {},
              ),
            ),
          ),
          Container(

            child: Text('2'),
          ),
          ClipRRect(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(5)),
          child: Container(
              decoration:  BoxDecoration(
                border: Border(left: BorderSide(color: Colors.grey)),
                   gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color.fromRGBO(246, 247, 249, 1),
                        Color.fromRGBO(230, 233, 236, 1),
                      ])),
              child: IconButton(
                padding: EdgeInsets.all(0),
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// decoration: const BoxDecoration(
// gradient: LinearGradient(
// begin: Alignment.topCenter,
// end: Alignment.bottomCenter,
// colors: <Color>[
// Color.fromRGBO(246, 247,249 , 1),
// Color.fromRGBO(230, 233, 236, 1),
// ])),
