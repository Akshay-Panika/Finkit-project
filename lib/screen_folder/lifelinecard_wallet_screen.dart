import 'package:finkit_project/build_widget/build_active_card.dart';
import 'package:finkit_project/custom_widget/hw_widget.dart';
import 'package:flutter/material.dart';

import '../build_widget/build_silvergrid.dart';
import '../custom_widget/card_widget.dart';

class LifelineCardWalletScreen extends StatelessWidget {
  const LifelineCardWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.green.shade100,
                padding: EdgeInsets.all(20),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Lifeline Card Wallet", style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                    50.height,
                    const Center(child: Text("₹ 5326.00", style:  TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                    
                    20.height,
                     const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Upcoming Udhar",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                            Text("₹ 4999.00",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Upcoming CP.EMI",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                            Text("₹ 4999.0",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],
                    )


                  ],
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 0.0, top: 10, right: 0, bottom: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      cardWidget(
                          left: 20,right: 20,top: 5,bottom: 5,
                          child: const Text("Withdrawal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)),
                  
                      cardWidget(
                          left: 20,right: 20,top: 5,bottom: 5,
                          child: const Text("Send Money",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)),
                  
                      cardWidget(
                          left: 20,right: 20,top: 5,bottom: 5,
                          child: const Text("Add Money",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)),
                  
                    ],
                  ),
                  
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("All", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Icon(Icons.menu)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 2.9 / 1,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {//videoBanner[index]['image'].toString()
                return  Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: cardWidget(
                    cardColor: Colors.green.shade50,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(),
                                  10.width,
                                  const Text("Send To Sivraj"),
                                ],
                              ),

                              const Text("Cashback Coin Earned"),
                              const Text("Cashback Coin Earned"),
                              const Text("Cashback Coin Earned"),
                            ],
                          ),

                           Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("-999"),
                              Text("-999"),
                              40.height,
                              Text("Debited from Lifeline Wallet"),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                );
              },
              childCount: 8, // Limit the number of grid items
            ),
          ),
        ],
      ),
    );
  }
}
