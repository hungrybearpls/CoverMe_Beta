class NotificationsData {
  List<Notificationz> notification;

  NotificationsData({this.notification});

  NotificationsData.fromJson(Map<String, dynamic> json) {
    if (json['notifications'] != null) {
      notification = new List<Notificationz>();
      json['notifications'].forEach((v) {
        notification.add(Notificationz.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.notification != null) {
      data['notifications'] = this.notification.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Notificationz {
  String notificationId;
  String notificationTitle;
  String notificationDesc;
  String notificationImage;
  String notificationStartTime;
  String notificationTotalTime;
  String notificationLink;
  String venueName;
  String venueDesc;
  String venueImage;
  String venueInfo;
  String venueId;
  String track;

  Notificationz({
    this.notificationId,
    this.notificationTitle,
    this.notificationDesc,
    this.notificationImage,
    this.notificationStartTime,
    this.notificationTotalTime,
    this.notificationLink,
    this.venueName,
    this.venueDesc,
    this.venueImage,
    this.venueInfo,
    this.venueId,
    this.track,
  });

  Notificationz.fromJson(Map<String, dynamic> json) {
    notificationId = json['notification_id'];
    notificationTitle = json['notification_title'];
    notificationDesc = json['notification_desc'];
    notificationImage = json['notification_image'];
    notificationStartTime = json['notification_start_time'];
    notificationTotalTime = json['notification_total_time'];
    notificationLink = json['notification_link'];
    venueName = json['venue_name'];
    venueDesc = json['venue_desc'];
    venueImage = json['venue_image'];
    venueInfo = json['venue_info'];
    venueId = json['venue_id'];
    track = json['track'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['notification_id'] = this.notificationId;
    data['notification_title'] = this.notificationTitle;
    data['notification_desc'] = this.notificationDesc;
    data['notification_image'] = this.notificationImage;
    data['notification_start_time'] = this.notificationStartTime;
    data['notification_total_time'] = this.notificationTotalTime;
    data['notification_link'] = this.notificationLink;
    data['venue_name'] = this.venueName;
    data['venue_desc'] = this.venueDesc;
    data['venue_image'] = this.venueImage;
    data['venue_info'] = this.venueInfo;
    data['venue_id'] = this.venueId;
    data['track'] = this.track;
    return data;
  }
}

//*  Sessions hardcoded data
final desc = "The async/await feature allows you to write the asynchronous code in a straightforward way," +
    "without a long list of callbacks. Used in C# for quite a while already, it has proven to be extremely useful.In Kotlin you have async and await as library functions implemented using coroutines." +
    "A coroutine is a light-weight thread that can be suspended and resumed later." +
    "Very precise definition, but might be confusing at first. What 'light-weight thread' means?" +
    "How does suspension work? This talk uncovers the magic. We'll discuss the concept of coroutines," +
    "the power of async/await, and how you can benefit from defining your asynchronous computations using suspend function." +
    " The content of this video was not produced or created by Google.";

//* Tracks can be club, bar and restaurant (Make it bar by default or if the track type is not clear.)

List<Notificationz> notifications = [
  Notificationz(
    notificationId: "1",
    notificationStartTime: "9:00 AM",
    notificationTotalTime: "30 Mins",
    notificationTitle: "DevByte: From Zero to ML on Google Cloud Platform",
    notificationDesc: desc,
    venueImage:
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
    venueName: "Max Saltonstall",
    venueDesc: "Cloud Developer Advocate, Google DevByte bar",
    track: "bar",
  ),
  Notificationz(
    notificationId: "2",
    notificationStartTime: "9:30 AM",
    notificationTotalTime: "30 Mins",
    notificationTitle:
        "How I Became a Mobile Developer with Firebase and Flutter",
    notificationDesc: desc,
    venueImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVW9DRktRcllTZDN1T2VINnhiUC11M2pVUFZFLVI0dVh5czF6d2lKNGRwanJjVjJhWm1zSUJZelVkZzBRaG9uRkNJZmhVZEg3ZGpVV0RhRmpQWXFYeHU0Y1ZDRmROb3FQYnVBQ2VKMWdOSFRHS3B0YWxRLk8xa3k2cVpFOG15UFAyRnk",
    venueName: "Laura Morinigo",
    venueDesc: "Software Developer, DMod Labs",
    track: "club",
  ),
  Notificationz(
    notificationId: "3",
    notificationStartTime: "10:30 AM",
    notificationTotalTime: "30 Mins",
    notificationTitle: "Angular Elements",
    notificationDesc: desc,
    venueImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJET043VnFRT2R1UHdyS1lFUElwLVNaYlVVbnc1enJuNTNGbUtQQjR0SF9STVUzMVptdkgzclRpRjhTUDc2WUNvNldKNFVacFhiXzF4bUoxTVc0RzlfXzF3d2tPUXl4NTNSNjBNSzRoaXB1VVBxOTRFLk0yOHMwWm1NeURjaWxQZ1k",
    venueName: "Jimenez Raul",
    venueDesc: "Software Engineer, Byte Default",
    track: "restaurant",
  ),
  Notificationz(
    notificationId: "4",
    notificationStartTime: "11:00 AM",
    notificationTotalTime: "45 Mins",
    notificationTitle: "Machine Learning and AutoML on GCP",
    notificationDesc: desc,
    venueImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UozlnKuWKqwaGjT2U6ylLLyMtoByOnx-ctrRmn5A8kptjCS50E8EgQDSuxYg8chsldOmSLbHScKX0ERlngHvbRp5XVRyNuAUSIm_Hguq3THTisLLaU.UyKUL3gyFQsEAcmO",
    venueName: "Sathish V J",
    venueDesc: "Tech Architect, Investor, Tutor",
    track: "bar",
  ),
  Notificationz(
    notificationId: "5",
    notificationStartTime: "1:00 PM",
    notificationTotalTime: "45 Mins",
    notificationTitle: "Top 5 from Firebase Summit '18",
    notificationDesc: desc,
    venueImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqZAYU9q0R5K2cq94DxU7ebiOMhilDlx5NzzsWWZ_oHxqcZV8H8j594rg_q_vyfTToA0BfScTHOHAj8uKf2OeF5MVqa_jmdjC9JO9-2TcPWjboxPf8.NN-XmkQxmHl1XyY_",
    venueName: "Timothy Jordan",
    venueDesc: "Sr. Staff Developer Advocate, Google",
    track: "restaurant",
  ),
  Notificationz(
    notificationId: "6",
    notificationStartTime: "2:00 PM",
    notificationTotalTime: "45 Mins",
    notificationTitle: "Multiplayer Games with WebXR",
    notificationDesc: desc,
    venueImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJ2Zkg0YUY1ZFJoMFFRbWlqdFE4MV9nNTdJR0dxUS1ubVJfbkN2Y1RaS3VoaUp2dWd3ejNmUmJRekFQaU5QNGhqd1F6cUtKQXpYeXJkemVyS2hUY1NzSWloMXFCNzQzdmpRVVVmU0Z4XzJZRDVZQXVBLnFHVllKVmc2MUVzQVZ5bVI",
    venueName: "Tanay Pant",
    venueDesc: "Web Developer Advocate, Mozilla Foundation",
    track: "restaurant",
  ),
  Notificationz(
    notificationId: "7",
    notificationStartTime: "3:00 PM",
    notificationTotalTime: "45 Mins",
    notificationTitle: "Mobile Database Persistence",
    notificationDesc: desc,
    venueImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqEG002BsGCqZLZRFUGu9xo4IpGamz6gTqlWxWyME0s-n8gR7Rs0tM5R6mPMOCRYf5rAunWx0GQeXDUHPag_XWGApdekw.cks8tPlPy-TeucOT",
    venueName: "Eric Maxwell",
    venueDesc: "Software Developer, Big Nerd Ranch",
    track: "club",
  ),
  Notificationz(
    notificationId: "8",
    notificationStartTime: "4:00 PM",
    notificationTotalTime: "45 Mins",
    notificationTitle: "Progressive Experience Web Development",
    notificationDesc: desc,
    venueImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXBET0RKT0JBV195UjVuSDRKS3JEenphN2gzLW80WEdvenlGdkZhNGREUzFmQUk1RjJnR0N5eEJIdlBkOVhlLUdwalVSWXlxbXJ4VFA0QXRZdnB4WDllWFNpdmdiNy14Q0tLOENCeU41Yks4NF9vUVQ0LlVFY0RBeld0ZTd4OEtSUTg",
    venueName: "Yohan Totting",
    venueDesc: "Web Developer Advocate, Google",
    track: "restaurant",
  ),
  Notificationz(
    notificationId: "9",
    notificationStartTime: "5:00 PM",
    notificationTotalTime: "45 Mins",
    notificationTitle: "Kotlin Coroutines",
    notificationDesc: desc,
    venueImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVW9XdVlxYUljN0RsYm1kejJaZFpkNENVMm1aTWhxU3VhNEtTVEoza3lBYVpDdGJsei1tSFB2ajNDc2FuZEdBbmNOMGlPZGtWRkJicHR6S1R0UVYxc1V2bXk0TWlBbnItWG00a3ZZc0laZ3VmVkg4NU5vLm1jNWdnX1pEZV8yT2FDalM",
    venueName: "Svetlana Isakova",
    venueDesc: "Developer Advocate, Jetbrain",
    track: "club",
  ),
];
