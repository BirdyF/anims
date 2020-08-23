import 'package:flutter/material.dart';

class TranspBuyScreen extends StatefulWidget {
  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<TranspBuyScreen> {
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Hello from flutter........',
            style: TextStyle(backgroundColor: Colors.blue[300])),
        onPressed: () {
          print('Pressed!!');
        },
      ),
    );
  }

  /***** 
   
        return Scaffold(
          // extendBody: true,
          extendBodyBehindAppBar: true,
        
          appBar: AppBar(
            title: const Text('Floating Action Button'),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.black,
            elevation: 0.0,
            toolbarOpacity: 1.0,
            // bottomOpacity: 0.0,
          ),
        

         
          body: SizedBox(
            width : 150,
            height: 100,
            child: 
            RaisedButton(child: Text("push OK to BUY"),
                onPressed: () {
                  print("Raised Button is pushed");
                  Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductsScreen(),
                ),
              );
                },
                color: Colors.red,
                textColor: Colors.yellow,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.grey,
              )
              ),
       

          floatingActionButton: FloatingActionButton(
            onPressed: _showDialog,
            child: Icon(Icons.navigation),
            backgroundColor: Colors.green,
          ),
      
        );
  }
  ****/
}
