import 'dart:io';

class VenueData {
  List<Venues> clubs;
  List<Venues> bars;
  List<Venues> restaurants;
  List<Venues> post;
  List<Venues> venue;

  VenueData({this.clubs, this.bars, this.restaurants, this.post, this.venue});

  VenueData.fromJson(Map<String, dynamic> json) {
    if (json['clubs'] != null) {
      clubs = List<Venues>();
      json['clubs'].forEach((v) {
        clubs.add(Venues.fromJson(v));
      });
    }
    if (json['bars'] != null) {
      bars = List<Venues>();
      json['bars'].forEach((v) {
        bars.add(Venues.fromJson(v));
      });
    }
    if (json['restaurants'] != null) {
      restaurants = List<Venues>();
      json['restaurants'].forEach((v) {
        restaurants.add(Venues.fromJson(v));
      });
    }
    if (json['posts'] != null) {
      post = List<Venues>();
      json['posts'].forEach((v) {
        post.add(Venues.fromJson(v));
      });
    }
    if (json['venues'] != null) {
      venue = List<Venues>();
      json['venues'].forEach((v) {
        venue.add(Venues.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.clubs != null) {
      data['clubs'] = this.clubs.map((v) => v.toJson()).toList();
    }
    if (this.bars != null) {
      data['bars'] = this.bars.map((v) => v.toJson()).toList();
    }
    if (this.restaurants != null) {
      data['restaurants'] = this.restaurants.map((v) => v.toJson()).toList();
    }
    if (this.post != null) {
      data['posts'] = this.post.map((v) => v.toJson()).toList();
    }
    if (this.venue != null) {
      data['venues'] = this.venue.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class Venues {
  static const String typeBar = 'bar';
  static const String typeClub = 'club';
  static const String typeRestaurant = 'restaurant';

  String venueId;
  String venueName;
  String venueDesc;
  String venueImage;
  String waitTime;
  String dailyHeadline;
  String venueCover;
  String venueHours;
  String venuePhone;
  String venueAddress;
  String igUrl;
  String fbUrl;
  String postUrl;
  String postId;
  String postTitle;
  String postDesc;
  String postStartTime;
  String postTotalTime;
  String track;

  Venues({
    this.venueId,
    this.venueName,
    this.venueDesc,
    this.venueImage,
    this.waitTime,
    this.dailyHeadline,
    this.venueCover,
    this.venueHours,
    this.venuePhone,
    this.venueAddress,
    this.fbUrl,
    this.igUrl,
    this.postId,
    this.postDesc,
    this.postStartTime,
    this.postTitle,
    this.postTotalTime,
    this.postUrl,
    this.track,
  });

  Venues.fromJson(Map<String, dynamic> json) {
    venueId = json['venue_id'];
    venueName = json['venue_name'];
    venueDesc = json['venue_desc'];
    venueImage = json['venue_image'];
    waitTime = json['wait_time'];
    dailyHeadline = json['daily_headline'];
    venueCover = json['venue_cover'];
    venueHours = json['venue_hours'];
    venuePhone = json['venue_phone'];
    venueAddress = json['venue_address'];
    fbUrl = json['fb_url'];
    igUrl = json['ig_url'];
    postId = json['post_id'];
    postDesc = json['post_desc'];
    postStartTime = json['post_start_time'];
    postTitle = json['post_title'];
    postTotalTime = json['post_total_time'];
    postUrl = json['post_url'];
    track = json['track'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['venue_id'] = this.venueId;
    data['venue_name'] = this.venueName;
    data['venue_desc'] = this.venueDesc;
    data['venue_image'] = this.venueImage;
    data['wait_time'] = this.waitTime;
    data['daily_headline'] = this.dailyHeadline;
    data['venue_cover'] = this.venueCover;
    data['venue_hours'] = this.venueHours;
    data['venue_phone'] = this.venuePhone;
    data['venue_address'] = this.venueAddress;
    data['fb_url'] = this.fbUrl;
    data['ig_url'] = this.igUrl;
    data['post_id'] = this.postId;
    data['post_desc'] = this.postDesc;
    data['post_start_time'] = this.postStartTime;
    data['post_title'] = this.postTitle;
    data['post_total_time'] = this.postTotalTime;
    data['post_url'] = this.postUrl;
    data['track'] = this.track;
    return data;
  }
}

//* Hardcoded Venue Desc

final desc = "The async/await feature allows you to write the asynchronous code in a straightforward way," +
    "without a long list of callbacks. Used in C# for quite a while already, it has proven to be extremely useful.In Kotlin you have async and await as library functions implemented using coroutines." +
    "A coroutine is a light-weight thread that can be suspended and resumed later." +
    "Very precise definition, but might be confusing at first. What 'light-weight thread' means?" +
    "How does suspension work? This talk uncovers the magic. We'll discuss the concept of coroutines," +
    "the power of async/await, and how you can benefit from defining your asynchronous computations using suspend function." +
    " The content of this video was not produced or created by Google.";

//* Tracks can be club, bar and restaurant (Make it bar by default or if the track type is not clear.)

List<Venues> posts = [
  Venues(
    postId: '1',
    postStartTime: "9:00 PM",
    postTotalTime: "45 Mins",
    postTitle: "All you Can Drink Wristbands, First 50 People",
    postDesc: desc,
    venueImage:
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
    venueName: "Bar 1",
    venueCover: "\$5",
    track: "bar",
  ),
  Venues(
    postId: '2',
    postStartTime: "9:30 AM",
    postTotalTime: "30 Mins",
    postTitle: "NO COVER",
    postDesc: desc,
    venueImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVW9DRktRcllTZDN1T2VINnhiUC11M2pVUFZFLVI0dVh5czF6d2lKNGRwanJjVjJhWm1zSUJZelVkZzBRaG9uRkNJZmhVZEg3ZGpVV0RhRmpQWXFYeHU0Y1ZDRmROb3FQYnVBQ2VKMWdOSFRHS3B0YWxRLk8xa3k2cVpFOG15UFAyRnk",
    venueName: "Club 1",
    venueCover: "\$20",
    track: "club",
  ),
  Venues(
    postId: "3",
    postStartTime: "10:30 AM",
    postTotalTime: "30 Mins",
    postTitle: "Angular Elements",
    postDesc: desc,
    venueImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJET043VnFRT2R1UHdyS1lFUElwLVNaYlVVbnc1enJuNTNGbUtQQjR0SF9STVUzMVptdkgzclRpRjhTUDc2WUNvNldKNFVacFhiXzF4bUoxTVc0RzlfXzF3d2tPUXl4NTNSNjBNSzRoaXB1VVBxOTRFLk0yOHMwWm1NeURjaWxQZ1k",
    venueName: "Restaurant 1",
    venueCover: "NO COVER",
    track: "restaurant",
  ),
  Venues(
    postId: "6",
    postStartTime: "2:00 PM",
    postTotalTime: "45 Mins",
    postTitle: "Multiplayer Games with WebXR",
    postDesc: desc,
    venueImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJ2Zkg0YUY1ZFJoMFFRbWlqdFE4MV9nNTdJR0dxUS1ubVJfbkN2Y1RaS3VoaUp2dWd3ejNmUmJRekFQaU5QNGhqd1F6cUtKQXpYeXJkemVyS2hUY1NzSWloMXFCNzQzdmpRVVVmU0Z4XzJZRDVZQXVBLnFHVllKVmc2MUVzQVZ5bVI",
    venueName: "Restaurant 2",
    venueCover: "No Cover",
    track: "restaurant",
  ),
  Venues(
    postId: "7",
    postStartTime: "3:00 PM",
    postTotalTime: "45 Mins",
    postTitle: "2 For 1 Cover",
    postDesc: desc,
    venueImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqEG002BsGCqZLZRFUGu9xo4IpGamz6gTqlWxWyME0s-n8gR7Rs0tM5R6mPMOCRYf5rAunWx0GQeXDUHPag_XWGApdekw.cks8tPlPy-TeucOT",
    venueName: "Club 2",
    venueCover: "\$20",
    track: "club",
  ),
  Venues(
    postId: "8",
    postStartTime: "4:00 PM",
    postTotalTime: "45 Mins",
    postTitle: "BOGO Salads",
    postDesc: desc,
    venueImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXBET0RKT0JBV195UjVuSDRKS3JEenphN2gzLW80WEdvenlGdkZhNGREUzFmQUk1RjJnR0N5eEJIdlBkOVhlLUdwalVSWXlxbXJ4VFA0QXRZdnB4WDllWFNpdmdiNy14Q0tLOENCeU41Yks4NF9vUVQ0LlVFY0RBeld0ZTd4OEtSUTg",
    venueName: "Restaurant 3",
    venueCover: "No Cover",
    track: "restaurant",
  ),
  Venues(
    postId: "9",
    postStartTime: "5:00 PM",
    postTotalTime: "45 Mins",
    postTitle: "Everyone Free",
    postDesc: desc,
    venueImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVW9XdVlxYUljN0RsYm1kejJaZFpkNENVMm1aTWhxU3VhNEtTVEoza3lBYVpDdGJsei1tSFB2ajNDc2FuZEdBbmNOMGlPZGtWRkJicHR6S1R0UVYxc1V2bXk0TWlBbnItWG00a3ZZc0laZ3VmVkg4NU5vLm1jNWdnX1pEZV8yT2FDalM",
    venueName: "Club 3",
    venueCover: "\$20",
    track: "club",
  ),
];

List<Venues> clubs = [
  Venues(
      venueName: "Club 1",
      venueCover: "\$20",
      dailyHeadline: "Dance the Night Away",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg"),
  Venues(
      venueName: "Club 2",
      venueCover: "No Cover",
      dailyHeadline: "Lamborghini Giveaway",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://avatars2.githubusercontent.com/u/10599101?s=460&v=4"),
  Venues(
      venueName: "Club 3",
      venueCover: "\$20",
      dailyHeadline: "Rave Theme",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5c76bcaaa7ea43100043c836%2F400x400.jpg%3Ffit%3Dscale%26background%3D000000"),
  Venues(
      venueName: "Club 4",
      venueCover: "No Cover",
      dailyHeadline: "Travis Scott Special Appearance",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4"),
  Venues(
      venueName: "Club 5",
      venueCover: "\$20",
      dailyHeadline: "BOGO Drinks All Night",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4")
];

List<Venues> bars = [
  Venues(
      venueName: "Bar 1",
      venueCover: "\$5",
      dailyHeadline: "90's Theme Night",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg"),
  Venues(
      venueName: "Bar 2",
      venueCover: "\$10",
      dailyHeadline: "Speed Dating Game Night",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://avatars2.githubusercontent.com/u/10599101?s=460&v=4"),
  Venues(
      venueName: "Bar 3",
      venueCover: "No Cover",
      dailyHeadline: "UFC Fight Night PPV",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5c76bcaaa7ea43100043c836%2F400x400.jpg%3Ffit%3Dscale%26background%3D000000"),
  Venues(
      venueName: "Bar 4",
      venueCover: "\$50",
      dailyHeadline: "Open Mic",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4"),
  Venues(
      venueName: "Bar 5",
      venueCover: "\$20",
      dailyHeadline: "Featuring DJ MONKY",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4"),
];

List<Venues> restaurants = [
  Venues(
      venueImage:
          "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
      venueName: "Pawan Kumar",
      dailyHeadline: "Google Developer Expert, Flutter",
      waitTime: "Talk: Getting Started With Flutter For Web",
      venuePhone: "000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660"),
  Venues(
      venueImage:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVW9DRktRcllTZDN1T2VINnhiUC11M2pVUFZFLVI0dVh5czF6d2lKNGRwanJjVjJhWm1zSUJZelVkZzBRaG9uRkNJZmhVZEg3ZGpVV0RhRmpQWXFYeHU0Y1ZDRmROb3FQYnVBQ2VKMWdOSFRHS3B0YWxRLk8xa3k2cVpFOG15UFAyRnk",
      venueName: "Laura Morinigo",
      dailyHeadline: "Software Developer, DMod Labs",
      waitTime: "How I Became a Mobile Developer with Firebase and Flutter",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venuePhone: "000000000",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660"),
  Venues(
      venueImage:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJET043VnFRT2R1UHdyS1lFUElwLVNaYlVVbnc1enJuNTNGbUtQQjR0SF9STVUzMVptdkgzclRpRjhTUDc2WUNvNldKNFVacFhiXzF4bUoxTVc0RzlfXzF3d2tPUXl4NTNSNjBNSzRoaXB1VVBxOTRFLk0yOHMwWm1NeURjaWxQZ1k",
      venueName: "Jimenez Raul",
      dailyHeadline: "Software Engineer, Byte Default",
      waitTime: "Angular Elements",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venuePhone: "000000000",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660"),
  Venues(
      venueImage:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UozlnKuWKqwaGjT2U6ylLLyMtoByOnx-ctrRmn5A8kptjCS50E8EgQDSuxYg8chsldOmSLbHScKX0ERlngHvbRp5XVRyNuAUSIm_Hguq3THTisLLaU.UyKUL3gyFQsEAcmO",
      venueName: "Sathish V J",
      dailyHeadline: "Tech Architect, Investor, Tutor",
      waitTime: "Machine Learning and AutoML on GCP",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venuePhone: "000000000",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660"),
  Venues(
      venueImage:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqZAYU9q0R5K2cq94DxU7ebiOMhilDlx5NzzsWWZ_oHxqcZV8H8j594rg_q_vyfTToA0BfScTHOHAj8uKf2OeF5MVqa_jmdjC9JO9-2TcPWjboxPf8.NN-XmkQxmHl1XyY_",
      venueName: "Timothy Jordan",
      dailyHeadline: "Sr. Staff Developer Advocate, Google",
      waitTime: "Top 5 from Firebase Summit '18",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venuePhone: "000000000",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660"),
  Venues(
      venueImage:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJ2Zkg0YUY1ZFJoMFFRbWlqdFE4MV9nNTdJR0dxUS1ubVJfbkN2Y1RaS3VoaUp2dWd3ejNmUmJRekFQaU5QNGhqd1F6cUtKQXpYeXJkemVyS2hUY1NzSWloMXFCNzQzdmpRVVVmU0Z4XzJZRDVZQXVBLnFHVllKVmc2MUVzQVZ5bVI",
      venueName: "Tanay Pant",
      dailyHeadline: "Web Developer Advocate, Mozilla Foundation",
      waitTime: "Multiplayer Games with WebXR",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venuePhone: "000000000",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660"),
  Venues(
      venueImage:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqEG002BsGCqZLZRFUGu9xo4IpGamz6gTqlWxWyME0s-n8gR7Rs0tM5R6mPMOCRYf5rAunWx0GQeXDUHPag_XWGApdekw.cks8tPlPy-TeucOT",
      venueName: "Eric Maxwell",
      dailyHeadline: "Software Developer, Big Nerd Ranch",
      waitTime: "Mobile Database Persistence",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venuePhone: "https://github.com/iampawan",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660"),
  Venues(
      venueImage:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXBET0RKT0JBV195UjVuSDRKS3JEenphN2gzLW80WEdvenlGdkZhNGREUzFmQUk1RjJnR0N5eEJIdlBkOVhlLUdwalVSWXlxbXJ4VFA0QXRZdnB4WDllWFNpdmdiNy14Q0tLOENCeU41Yks4NF9vUVQ0LlVFY0RBeld0ZTd4OEtSUTg",
      venueName: "Restaurant ",
      dailyHeadline: "Web Developer Advocate, Google",
      waitTime: "Progressive Experience Web Development",
      venuePhone: "000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660")
];

List<Venues> venues = [
  Venues(
      track: "club",
      venueName: "Club 1",
      venueCover: "\$20",
      dailyHeadline: "Dance the Night Away",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg"),
  Venues(
      track: "club",
      venueName: "Club 2",
      venueCover: "No Cover",
      dailyHeadline: "Lamborghini Giveaway",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://avatars2.githubusercontent.com/u/10599101?s=460&v=4"),
  Venues(
      track: "club",
      venueName: "Club 3",
      venueCover: "\$20",
      dailyHeadline: "Rave Theme",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5c76bcaaa7ea43100043c836%2F400x400.jpg%3Ffit%3Dscale%26background%3D000000"),
  Venues(
      track: "club",
      venueName: "Club 4",
      venueCover: "No Cover",
      dailyHeadline: "Travis Scott Special Appearance",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4"),
  Venues(
      track: "club",
      venueName: "Club 5",
      venueCover: "\$20",
      dailyHeadline: "BOGO Drinks All Night",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4"),
  Venues(
      track: "bar",
      venueName: "Bar 1",
      venueCover: "\$5",
      dailyHeadline: "90's Theme Night",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg"),
  Venues(
      track: "bar",
      venueName: "Bar 2",
      venueCover: "\$10",
      dailyHeadline: "Speed Dating Game Night",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://avatars2.githubusercontent.com/u/10599101?s=460&v=4"),
  Venues(
      track: "bar",
      venueName: "Bar 3",
      venueCover: "No Cover",
      dailyHeadline: "UFC Fight Night PPV",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5c76bcaaa7ea43100043c836%2F400x400.jpg%3Ffit%3Dscale%26background%3D000000"),
  Venues(
      track: "bar",
      venueName: "Bar 4",
      venueCover: "\$50",
      dailyHeadline: "Open Mic",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4"),
  Venues(
      track: "bar",
      venueName: "Bar 5",
      venueCover: "\$20",
      dailyHeadline: "Featuring DJ MONKY",
      venuePhone: "0000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Ave, Chicago, IL, 60660",
      venueImage:
          "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4"),
  Venues(
      track: "restaurant",
      venueImage:
          "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
      venueName: "Pawan Kumar",
      dailyHeadline: "Google Developer Expert, Flutter",
      venueCover: "Talk: Getting Started With Flutter For Web",
      venuePhone: "000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660"),
  Venues(
      track: "restaurant",
      venueImage:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVW9DRktRcllTZDN1T2VINnhiUC11M2pVUFZFLVI0dVh5czF6d2lKNGRwanJjVjJhWm1zSUJZelVkZzBRaG9uRkNJZmhVZEg3ZGpVV0RhRmpQWXFYeHU0Y1ZDRmROb3FQYnVBQ2VKMWdOSFRHS3B0YWxRLk8xa3k2cVpFOG15UFAyRnk",
      venueName: "Laura Morinigo",
      dailyHeadline: "Software Developer, DMod Labs",
      venueCover: "How I Became a Mobile Developer with Firebase and Flutter",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venuePhone: "000000000",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660"),
  Venues(
      track: "restaurant",
      venueImage:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJET043VnFRT2R1UHdyS1lFUElwLVNaYlVVbnc1enJuNTNGbUtQQjR0SF9STVUzMVptdkgzclRpRjhTUDc2WUNvNldKNFVacFhiXzF4bUoxTVc0RzlfXzF3d2tPUXl4NTNSNjBNSzRoaXB1VVBxOTRFLk0yOHMwWm1NeURjaWxQZ1k",
      venueName: "Jimenez Raul",
      dailyHeadline: "Software Engineer, Byte Default",
      venueCover: "Angular Elements",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venuePhone: "000000000",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660"),
  Venues(
      track: "restaurant",
      venueImage:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UozlnKuWKqwaGjT2U6ylLLyMtoByOnx-ctrRmn5A8kptjCS50E8EgQDSuxYg8chsldOmSLbHScKX0ERlngHvbRp5XVRyNuAUSIm_Hguq3THTisLLaU.UyKUL3gyFQsEAcmO",
      venueName: "Sathish V J",
      dailyHeadline: "Tech Architect, Investor, Tutor",
      venueCover: "Machine Learning and AutoML on GCP",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venuePhone: "000000000",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660"),
  Venues(
      track: "restaurant",
      venueImage:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqZAYU9q0R5K2cq94DxU7ebiOMhilDlx5NzzsWWZ_oHxqcZV8H8j594rg_q_vyfTToA0BfScTHOHAj8uKf2OeF5MVqa_jmdjC9JO9-2TcPWjboxPf8.NN-XmkQxmHl1XyY_",
      venueName: "Timothy Jordan",
      dailyHeadline: "Sr. Staff Developer Advocate, Google",
      venueCover: "Top 5 from Firebase Summit '18",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venuePhone: "000000000",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660"),
  Venues(
      track: "restaurant",
      venueImage:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJ2Zkg0YUY1ZFJoMFFRbWlqdFE4MV9nNTdJR0dxUS1ubVJfbkN2Y1RaS3VoaUp2dWd3ejNmUmJRekFQaU5QNGhqd1F6cUtKQXpYeXJkemVyS2hUY1NzSWloMXFCNzQzdmpRVVVmU0Z4XzJZRDVZQXVBLnFHVllKVmc2MUVzQVZ5bVI",
      venueName: "Tanay Pant",
      dailyHeadline: "Web Developer Advocate, Mozilla Foundation",
      venueCover: "Multiplayer Games with WebXR",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venuePhone: "000000000",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660"),
  Venues(
      track: "restaurant",
      venueImage:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqEG002BsGCqZLZRFUGu9xo4IpGamz6gTqlWxWyME0s-n8gR7Rs0tM5R6mPMOCRYf5rAunWx0GQeXDUHPag_XWGApdekw.cks8tPlPy-TeucOT",
      venueName: "Eric Maxwell",
      dailyHeadline: "Software Developer, Big Nerd Ranch",
      venueCover: "Mobile Database Persistence",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venuePhone: "https://github.com/iampawan",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660"),
  Venues(
      track: "restaurant",
      venueImage:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXBET0RKT0JBV195UjVuSDRKS3JEenphN2gzLW80WEdvenlGdkZhNGREUzFmQUk1RjJnR0N5eEJIdlBkOVhlLUdwalVSWXlxbXJ4VFA0QXRZdnB4WDllWFNpdmdiNy14Q0tLOENCeU41Yks4NF9vUVQ0LlVFY0RBeld0ZTd4OEtSUTg",
      venueName: "Restaurant ",
      dailyHeadline: "Web Developer Advocate, Google",
      venueCover: "Progressive Experience Web Development",
      venuePhone: "000000000",
      fbUrl: "https://facebook.com/",
      igUrl: "https://instagram.com/",
      venueAddress: "6351 N Magnolia Avenue, Chicago, IL, 60660")
];
