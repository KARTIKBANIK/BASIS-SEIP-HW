import 'package:day_19/UI_Day19/travelListGenerate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TravelInformation extends StatefulWidget {
  final travel_list = Travel.generatedTravelBlog();

  @override
  State<TravelInformation> createState() => _TravelInformationState();
}

class _TravelInformationState extends State<TravelInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: widget.travel_list.length,
        itemBuilder: (context, index) {
          var travel = widget.travel_list[index];
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    travel.img,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Positioned(
                  bottom: 40,
                  child: Text(
                    travel.name,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
              Positioned(
                bottom: 10,
                child: Text(
                  travel.address,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
