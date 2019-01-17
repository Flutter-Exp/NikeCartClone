import 'package:flutter/material.dart';
import 'package:nikecartclone/model.dart';
import 'package:scoped_model/scoped_model.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: ScopedModel<DataModel>(
          model: model,
          child: ScopedModelDescendant<DataModel>(
            builder: (context, child, model) => Column(
                  children: <Widget>[
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 50),
                      child: Hero(
                        tag: 'logo',
                        child: Image.asset(
                          'assets/images/NikeBlack.png',
                          height: 80,
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blueGrey,
                      elevation: 7,
                      child: SizedBox(
                        height: model.height,
                        width: model.width, //.size.width * 0.75,
                      ),
                    ),
                    RaisedButton(
                      color: Colors.black,
                      textColor: Colors.white,
                      child: Text('add to cart'),
                      elevation: 7,
                      onPressed: () {
                        model.changeHeight(150);
                        model.changeWidth(200);
                        showSize(context, queryData);
                      },
                    )
                  ],
                ),
          ),
        ),
      ),
    );
  }
}

Future<Widget> showSize(context, queryData) {
  return showDialog(
    context: context,
    builder: (_) => Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(),
              Container(
                height: queryData.size.height * 0.4,
                width: queryData.size.width,
                alignment: FractionalOffset.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: SizedBox(
                  child: RaisedButton(
                    color: Colors.black,
                    textColor: Colors.white,
                    child: Text(
                      'Done',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    onPressed: () {
                      model.changeWidth(queryData.size.width * 0.75);
                      model.changeHeight(300);
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
  );
}
