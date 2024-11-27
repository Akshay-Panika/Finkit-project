import 'package:finkit_project/custom_widget/hw_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Updated SliverAppBar
        SliverAppBar(
          floating: true,
          expandedHeight: 500.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: [

                50.height,
                Container(
                  height: 220,
                  margin:  EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/LifelineCard-1.png'))
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        const Align(
                          alignment: Alignment.center,
                          child: Text("XXXX   XXXX   XXXX   1196",
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
                ),
              ],
            ),
          ),
        ),

        // Updated SliverGrid with limited items
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.8 / 1,
          ),
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Grid Item ${index + 1}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
            childCount: 20, // Limit the number of grid items
          ),
        ),
      ],
    );
  }
}
