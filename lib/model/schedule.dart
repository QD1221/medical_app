class DoctorSchedule {
  String? avatarImg;
  String? title;
  String? subtitle;
  String? time;
  String? timeIndex;
  bool? isDone;

  DoctorSchedule({
    this.avatarImg,
    this.title,
    this.subtitle,
    this.time,
    this.timeIndex,
    this.isDone = false,
  });
}
