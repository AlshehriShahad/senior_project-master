// ignore_for_file: must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme.dart';

class ServiceCard extends StatelessWidget {
  final Map<String, dynamic> details;
  final VoidCallback onTap;

  const ServiceCard(this.details, {required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
//shahad`s updates for navigation
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: CustomColors.white,
          border: Border.all(color: CustomColors.lightGreyLowTrans),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          boxShadow: const [
            BoxShadow(
              color: CustomColors.lightGreyLowTrans,
              offset: Offset(
                0.0,
                10.0,
              ),
              blurRadius: 7.5,
            ),
            BoxShadow(
              color: Color.fromARGB(0, 255, 255, 255),
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: SvgPicture.asset(
                details['icon']!,
                width: 70,
                height: 70,
                //color: CustomColors.lightBlue.withOpacity(0.6),
              ),
            ),
            Text(
              details['serviceName'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: CustomColors.lightGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
