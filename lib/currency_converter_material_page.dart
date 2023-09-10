

import 'package:flutter/material.dart';
class CurrencyConvertorMaterialPage extends StatefulWidget{
  const CurrencyConvertorMaterialPage({super.key});
  @override
  State<CurrencyConvertorMaterialPage> createState() {
     return _CurrencyConvertorMaterialPageState();
}
}
class _CurrencyConvertorMaterialPageState extends State<CurrencyConvertorMaterialPage> {
  double a=0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey,
        title: const Text("THE CURRENCY CONVERTOR APP",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25, fontWeight: FontWeight.bold,

        ),), centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text( 'INR ${a != 0 ? a.toStringAsFixed(3) : a.toStringAsFixed(0) }',
              style: const TextStyle(fontSize:25, 
              fontWeight: FontWeight.bold ),
              selectionColor:const Color.fromARGB(255, 255, 0, 76),
              textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: true),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black
              
                  ),
                  decoration: const InputDecoration(
                    hintText: 'please enter the amount in USD' ,
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 25, fontWeight: FontWeight.bold,
                    ),
                    prefixIcon:Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Color.fromRGBO(255, 0, 157, 1),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(90)),
                    ) ,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  
              
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(onPressed: () {
                 setState(() {
                   a= double.parse(textEditingController.text)*83.044997;
                 });
              
                },style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  fixedSize: MaterialStatePropertyAll(Size(400, 50)),
                ),
                 child: const Text('click me')),
              )

              
            ],
          ),
        ),
      );

  }
}
  


