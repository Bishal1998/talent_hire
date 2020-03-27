import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: FlutterLogo(
         colors: Colors.green,
         size: 25.0,
       ), 
       elevation: 0.0,
       centerTitle: true,
       backgroundColor: Colors.white,
       leading: IconButton(icon: Icon(Icons.arrow_back), 
       onPressed: (){},
       color: Colors.grey),
       actions: <Widget>[
         IconButton(icon: Icon(Icons.menu), onPressed: (){},
         color: Colors.grey,),
       ],
      ),
      body: ListView(
       shrinkWrap: true,
       children: <Widget>[
         Stack(
           children: <Widget>[
             Container(
               alignment: Alignment(0.0, -0.4),
               height: 100.0,
               color: Colors.white,
               child: Text("Get Coaching",
               style: TextStyle(fontSize:25.0,fontWeight:FontWeight.bold),
               ),
             ),
             Container(
               margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                // boxShadow: [
                //   BoxShadow(
                //     blurRadius: 2.0,
                //     color: Colors.grey,
                //   ),
                // ],
               ),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                   Stack(
                     children: <Widget>[
                       Container(
                         padding: EdgeInsets.fromLTRB(25.0, 22.0, 5.0, 5.0),
                         child: Text("YOU HAVE",
                         style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15.0),
                         ),
                         

                       ),
                       Container(
                         padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                         child: Text("206",
                         style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40.0),
                         ),
                         
                         ),
                        //  Padding(padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0)),
                        //  IconButton(icon: Icon(Icons.favorite), onPressed: (){},
                        //  color: Colors.red,),
                     ],
                   ),
                   SizedBox(
                     width: 100.0,
                   ),
                   Container(
                     height: 50.0,
                     width: 125.0,
                     decoration: BoxDecoration(
                       color: Colors.greenAccent[100].withOpacity(0.5),
                       borderRadius: BorderRadius.circular(10.0),
                     ),
                     child: Center(
                       child: Text("Buy More",
                       style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ],
         ),
         SizedBox(
           height: 40.0,
         ),
         Container(
           padding: EdgeInsets.only(left: 25.0,right: 25.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "My Coaches",
                style: TextStyle(color:Colors.grey,fontWeight:FontWeight.bold,fontSize: 14.0),
              ),
              Text(
                "View Past Sessions",
                style: TextStyle(color:Colors.green,fontWeight:FontWeight.bold,fontSize: 14.0),
              ),
            ],
           ),
         ),
         SizedBox(height:10.0),
         GridView.count(crossAxisCount: 2,
         primary: false,
         crossAxisSpacing: 2.0,
         mainAxisSpacing: 4.0,
         shrinkWrap: true,
         children: <Widget>[
           _buildCard("Bishal", "Available", 1),
           _buildCard("Bishal", "Available", 1),
           _buildCard("Bishal", "Available", 1),
           _buildCard("Bishal", "Available", 1),
           _buildCard("Bishal", "Available", 1),
           _buildCard("Bishal", "Available", 1),
         ],
         ),
       ], 
      ),
    );
  }
  Widget _buildCard(String name, String status, int cardIndex){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    elevation: 7.0,
    child: Column(
     children: <Widget>[
       SizedBox(height:12.0),
       Stack(
         children: <Widget>[
           Container(
             height: 60.0,
             width: 60.0,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(30.0),
               color: Colors.green,
               image: DecorationImage(image: NetworkImage(
                 'https://www.facebook.com/bishal.paudel.9843',
               ),
               ),
             ),
           ),
           Container(
             margin: EdgeInsets.only(left:40.0),
             height: 20.0,
             width: 20.0,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0), 
              color: status == 'Away' ? Colors.amber : Colors.green,
              border: Border.all(
                color: Colors.white,
                style: BorderStyle.solid,
                width: 2.0
              ),
             ),
           ),
         ]),
           SizedBox(height:8.0),
           Text(status,
           style:TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,fontSize:12.0),
           ),
           SizedBox(height:15.0),
           Expanded(child: Container(
             width: 175.0,
             decoration: BoxDecoration(
              color: status ==  'Away' ? Colors.grey: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
             ),
             child: Center(
               child: Text("Request",
               style: TextStyle(color: Colors.white),
               ),//text
             ),//center
           ),//container
           ),//expanded
            ],//widget
            ),//stack
    
    margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),
    
  );
}

}

