import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 150,
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Image.network( fit: BoxFit.cover, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_hT6f5qRPBnzkF_gAx7MfiOTPEsk83vIw1Dl-RepiDA&s=10"),
                  )],
              ),
              //horizontal card
              Stack(
                children: [
                  Container(
                    height: size.height/4.5,
                    width: size.width/1.4,
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.black38,
                    borderRadius: BorderRadius.circular(20),
                    ),

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                        child: Image.network(fit: BoxFit.cover, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpjG7naqMRnlObc-tGb-NQ3z2clnWn-Z64D7R4k8OCSQ&s=10")
                    )
                  ),
                  Container(
                      height: size.height/4.5,
                      width: size.width/1.4,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(20),),
                  ),

                  Positioned(
                    bottom: 60,
                    left: 30,
                     child: Container(
                       width: size.width/2,
                       child: Text("lorem ssfdhsf klfsslkdsfkdfhfdshdfshfdsfddfsdffdfdsdfsdfssdf",
                       overflow: TextOverflow.ellipsis,maxLines:2,
                       style: TextStyle(color:Colors.black ,fontSize: 16)
                     )

                  )),
                  Positioned(
                    bottom: 20,
                    left: 30,
                     child: Text("2fb fdfdfdfdf",
                    style: TextStyle(color:Colors.black,fontSize: 16))
                  )


                ],
              )
            ],
          )
        ],
      )
    );
  }
}
