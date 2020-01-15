import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key key, @required this.addToCardText, @required this.cardContainerMargin}) : super(key: key);

  final double addToCardText;
  final double cardContainerMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      alignment: Alignment.center,
      //height: 80,  //MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: cardContainerMargin,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff2E2E2E),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50.0)
                )
              ),
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: <Widget>[
                  Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide( //                   <--- left side
                      color: Color(0xffF34436).withOpacity(0.2),
                      width: 1.0,
                      ), 
                      )
                  ),
                  //color: Colors.green,
                  padding: const EdgeInsets.only(
                    top: 25.0,
                    bottom: 25.0,
                    left: 20.0,
                    right: 20.0
                    ),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: 'Shapely curves, a gentle recline and “just-right” cushions invite the lost art of unwinding. A sculptural powder-coated steel base sets up the striking profile. Field Ottoman also available.',
                      style: TextStyle(
                        fontSize: 18.0, 
                        height: 1.5,
                        letterSpacing: 0.2,
                        color: Colors.white.withOpacity(0.2),
                        )
                      ),
                      )
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    bottom: 20.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide( //                   <--- left side
                      color: Color(0xffF34436).withOpacity(0.2),
                      width: 1.0,
                      ), 
                      )
                  ),
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10.0),
                        //color: Colors.blue,
                        width: 200,
                        height: 200,
                        child: Container(
                          decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0)
                            )
                            ),
                            child: Container(
                              //width: 200,
                              //height: 200,
                              margin: EdgeInsets.only(
                                bottom: 0
                                ),
                              decoration: BoxDecoration(
                                //color: Colors.white.withOpacity(0.2)
                              ),
                              child: Image(
                                //width: 250, 
                                //height: 250,
                                image: AssetImage('images/sliders/red.jpg')
                                ),
                            ),
                        ),
                        ),

                        Container(
                        padding: EdgeInsets.all(10.0),
                        //color: Colors.blue,
                        width: 200,
                        //height: 200,
                        child: Container(
                          decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0)
                            )
                            ),
                            child: Container(
                              //width: 200,
                              //height: 200,
                              margin: EdgeInsets.only(
                                bottom: 0
                                ),
                              decoration: BoxDecoration(
                                //color: Colors.white.withOpacity(0.2)
                              ),
                              child: Image(
                                //width: 250, 
                                //height: 250,
                                image: AssetImage('images/sliders/brown.jpg')
                                ),
                            ),
                        ),
                        ),

                        Container(
                        padding: EdgeInsets.all(10.0),
                        //color: Colors.blue,
                        width: 200,
                        //height: 200,
                        child: Container(
                          decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0)
                            )
                            ),
                            child: Container(
                              //width: 200,
                              //height: 200,
                              margin: EdgeInsets.only(
                                bottom: 0
                                ),
                              decoration: BoxDecoration(
                                //color: Colors.white.withOpacity(0.2)
                              ),
                              child: Image(
                                //width: 250, 
                                //height: 250,
                                image: AssetImage('images/sliders/black.jpg')
                                ),
                            ),
                        ),
                        ),

                      
                        
                  ],
                  ),
                ),


                //shipping
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide( 
                      color: Color(0xffF34436).withOpacity(0.2),
                      width: 1.0,
                      ), 
                      )
                  ),
                  //color: Colors.green,
                  padding: const EdgeInsets.only(
                    top: 25.0,
                    bottom: 25.0,
                    left: 20.0,
                    right: 20.0
                    ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      Text("Shipping", style: TextStyle(
                        color: Color(0xffF34436).withOpacity(0.7),
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: 'Standard Shipping rates are 7% of your merchandise total.Large items are shipped via common carrier (a freight company). You will be contacted one to two days in advance to schedule a Monday through Friday delivery appointment.Inside delivery with assembly is available for an additional \$149 per order.Please note, delivery drivers do not walk dogs, cook meals or take off their shirts.',
                      style: TextStyle(
                        fontSize: 18.0, 
                        height: 1.5,
                        letterSpacing: 0.2,
                        color: Colors.white.withOpacity(0.2),
                        )
                      ),
                      )
                  ],
                  )
                ),

                //return
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide( //                   <--- left side
                      color: Colors.white.withOpacity(0.05),
                      width: 1.0,
                      ), 
                      )
                  ),
                  //color: Colors.green,
                  padding: const EdgeInsets.only(
                    top: 25.0,
                    bottom: 25.0,
                    left: 20.0,
                    right: 20.0
                    ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      Text("Return", style: TextStyle(
                        color: Color(0xffF34436).withOpacity(0.7),
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: 'Thrilled. Delighted. Satisfied. This is how we want you to feel about your Blu Dot purchase. If you are not happy with your purchase, notify us within 10 days of receipt, and we will take it back for a full refund or help you find a suitable replacement. If something arrives damaged or defective, let us know and we will make arrangements for a replacement or refund if necessary. Please note that original delivery fees are non-refundable and additional shipping',
                      style: TextStyle(
                        fontSize: 18.0, 
                        height: 1.5,
                        letterSpacing: 0.2,
                        color: Colors.white.withOpacity(0.2),
                        )
                      ),
                      )
                  ],
                  )
                ),


              ],
              ),
              ),
          ),

          Positioned(
            top: 0,
            child:Container(
              padding: EdgeInsets.only(
                left: 50,
                right: 50,
              ),
              width: MediaQuery.of(context).size.width,
              child: Container(
              alignment: Alignment.center,
              height: 80,  //MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(60.0),
                )
                ),
                child: Text(
                  "ADD TO CART",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: addToCardText),
                    ),
              ),
            ),
        ),
        ],
        )
    );
  }
}