import 'package:flutter/material.dart';
import 'package:medical_app/model/schedule.dart';

class CardWidget extends StatelessWidget {
  DoctorSchedule doctorSchedule;
  CardWidget({Key? key, required this.doctorSchedule}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  doctorSchedule.timeIndex ?? '-',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(doctorSchedule.avatarImg!),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${doctorSchedule.title}',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '${doctorSchedule.subtitle}',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.2),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              doctorSchedule.isDone!
                                  ? Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                          color: Colors.greenAccent,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Center(
                                        child: Icon(
                                          Icons.done,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  : Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                    )
                            ],
                          ),
                          Text(
                            '${doctorSchedule.time}',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.2),
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
