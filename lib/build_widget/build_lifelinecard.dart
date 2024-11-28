
import 'package:finkit_project/custom_widget/hw_widget.dart';
import 'package:flutter/material.dart';

class BuildLifelineCard extends StatelessWidget {
  const BuildLifelineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 355,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        image: const DecorationImage(image: AssetImage('assets/images/LifelineCard-1.png'),fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            const Align(
              alignment: Alignment.center,
              child: Text("XXXX     XXXX     XXXX     1196",
                style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold),),
            ),



            10.height,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("CARD HOLDER", style: TextStyle(fontSize: 12,color: Colors.grey,),),
                    Text("AKSHAY PANIKA", style: TextStyle(fontSize: 12,color: Colors.white,),),
                  ],
                ),

                Column(
                  children: [
                    Text("EXPIRES", style: TextStyle(fontSize: 12,color: Colors.grey,),),
                    Text("10/26", style: TextStyle(fontSize: 12,color: Colors.white,),),
                  ],
                ),

                Column(
                  children: [
                    Text("CVV", style: TextStyle(fontSize: 12,color: Colors.grey,),),
                    Text("XXX", style: TextStyle(fontSize: 12,color: Colors.white,),),
                  ],
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}

class ImgLifelineCardWidget extends StatelessWidget {
  const ImgLifelineCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 355,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        image: const DecorationImage(image: AssetImage('assets/images/LifelineCard-1.png'),fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey,
      ),
    );
  }
}
