import 'package:finkit_project/build_widget/build_silvergrid.dart';
import 'package:flutter/material.dart';
import 'package:finkit_project/custom_widget/hw_widget.dart';
import '../build_widget/buildMembershipCard.dart';
import '../build_widget/build_active_card.dart';
import '../custom_widget/card_widget.dart';
import '../build_widget/build_lifelinecard.dart';
import '../data_folder/intro_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isActiveCard = false;

  late ScrollController _scrollController;
  double _rotationAngle = 0.0;

  final PageController _cardController = PageController();
  int _currentCard = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(() {
        setState(() {
          _rotationAngle = _scrollController.offset * 0.001; // Adjust the multiplier for desired effect
        });
      });

    _cardController.addListener(() {
      setState(() {
        _currentCard = _cardController.page!.toInt();
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _cardController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        // Updated SliverAppBar
        SliverAppBar(
          floating: true,
          expandedHeight: 550,
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: [

                SizedBox(
                  height: 300,
                  width: double.infinity,
                  //color: Colors.green,
                  child: PageView.builder(
                    itemCount: 2,
                    controller: _cardController,
                    itemBuilder: (context, index) {
                    return  Stack(
                      children: [
                        Transform(
                          alignment: Alignment.bottomLeft,
                          transform: Matrix4.rotationZ(-0.1 + _rotationAngle),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 220,
                                width: 355,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  image: const DecorationImage(image: AssetImage('assets/images/LifelineCard-1.png'),fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey,
                                ),
                              )),
                        ),
                        const Align(
                          alignment: Alignment.bottomCenter,
                            child: BuildLifelineCard()),
                      ],
                    );
                  },),
                ),

                /// BuildLifelineCard


                /// buildController
                5.height,
                buildController(
                  currentIndex: _currentCard,
                  itemCount: 2, // Update this dynamically if itemCount changes
                ),



                10.height,
                /// buildMembershipCard
                isActiveCard ? buildActiveCard(): buildMembershipCard(),


                20.height,
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 20.0),
                  child: cardWidget(
                    onTap: () {
                      setState(() {
                        isActiveCard =! isActiveCard;
                      });
                    },
                    elevation: 1.0,
                    top: 5,
                    bottom: 5,
                    cardColor: Colors.green.shade100,
                    child:  Center(
                      child: Text(
                        isActiveCard ?  "Activated Prime Membership": "Activate Prime Membership",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color:isActiveCard ? Colors.green:Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
         const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 15.0, top: 10, right: 15, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Learn More ",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    Text(
                      "Lifeline Purchase Power Card",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.amber,),
                    ),
                  ],
                ),

                /// view all video button
                Text("View All",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),)
              ],
            ),
          ),
        ),


        /// All video list
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.8 / 1,
          ),
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {//videoBanner[index]['image'].toString()
              return BuildSilverGrid(image: videoBanner[index]['image'].toString());
            },
            childCount: videoBanner.length, // Limit the number of grid items
          ),
        ),
      ],
    );
  }
}



Widget buildController({
  required int currentIndex,
  required int itemCount,
  Color activeColor = Colors.black54,
  Color inactiveColor = Colors.grey,
  double activeWidth = 20,
  double inactiveWidth = 10,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
      itemCount,
          (index) => AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        width: currentIndex == index ? activeWidth : inactiveWidth,
        height: 6,
        decoration: BoxDecoration(
          color: currentIndex == index ? activeColor : inactiveColor,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    ),
  );
}
