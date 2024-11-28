import 'package:flutter/material.dart';
import '../custom_widget/card_widget.dart';
import '../data_folder/wallet_data.dart';


class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// Body
      body:  SafeArea(
        child: ListView.builder(
          itemCount: walletData.length,
          itemBuilder: (context, index) {

            // find data
            final image = walletData[index]['image'].toString();
            final subtitle = walletData[index]['subtitle'].toString();
            final headline = walletData[index]['headline'].toString();
            final score = walletData[index]['score'].toString();
            final tHistory = walletData[index]['tHistory'].toString();
            final redeemButton = walletData[index]['redeemButton'].toString();
            final withdraw = walletData[index]['withdraw'].toString();
            final transMoney = walletData[index]['transMoney'].toString();
            final waitOrder = walletData[index]['waitOrder'].toString();
            final confOrder = walletData[index]['confOrder'].toString();
            final lifeMagicCoinText = walletData[index]['lifeMagicCoinText'].toString();
            final lifeMagicCoin = walletData[index]['lifeMagicCoin'].toString();

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: cardWidget(
                elevation: 2.5,
                top: 10,
                bottom: 10,
                cardColor: Colors.green.shade50,
                child: Column(
                  children: [

                    // top view
                    ListTile(
                      leading:  CircleAvatar(radius: 30,
                        backgroundImage: AssetImage(image),
                      ),
                      title: Text(headline,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      subtitle: subtitle != '' ?
                      cardWidget(
                        left: 15,
                        right: 15,
                        cardColor: Colors.amber.shade50,child: Text(subtitle, overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,),),):null,
                      trailing:  Text(score,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ),

                    const Divider(),
                    lifeMagicCoinText != ''? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(lifeMagicCoinText, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500, color: Colors.red),),
                            Text(lifeMagicCoin, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500, color: Colors.red),),
                          ],
                        ),
                        Divider(),
                      ],
                    ):SizedBox(),

                    // bottom view
                    Padding(
                      padding:  const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          redeemButton != ''?
                          cardWidget(
                              left: 15,
                              right: 15,
                              cardColor: Colors.green.shade50,child: Text(redeemButton, style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)):
                          Row(
                            children: [
                              Text(withdraw,style: TextStyle(fontSize: 16,color: Colors.blue, fontWeight: FontWeight.w500),),
                              const SizedBox(width: 5,),
                              Text(transMoney,style: TextStyle(fontSize: 14,color: Colors.black, fontWeight: FontWeight.w500),),
                            ],
                          ),

                          waitOrder !=''? Expanded(child: Text(waitOrder, style:TextStyle(fontSize: 14,color: Colors.red, fontWeight: FontWeight.w500),)):
                          Expanded(child: Text(confOrder, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
                          cardWidget(
                              left: 15,
                              right: 15,
                              top: 5,
                              bottom: 5,
                              child: Text(tHistory,style:TextStyle(fontSize: 14,color: Colors.blue.shade400),)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },),
      ),
    );
  }
}