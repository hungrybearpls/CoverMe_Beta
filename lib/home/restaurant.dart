// class RestaurantsData {
//   List<Restaurants> restaurants;
//
//   RestaurantsData({this.restaurants});
//
//   RestaurantsData.fromJson(Map<String, dynamic> json) {
//     if (json['restaurants'] != null) {
//       restaurants = new List<Restaurants>();
//       json['restaurants'].forEach((v) {
//         restaurants.add(Restaurants.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.restaurants != null) {
//       data['restaurants'] = this.restaurants.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Restaurants {
//   String restaurantName;
//   String restaurantDesc;
//   String restaurantImage;
//   String restaurantInfo;
//   String restaurantId;
//   String fbUrl;
//   String twitterUrl;
//   String linkedinUrl;
//   String githubUrl;
//   String restaurantSession;
//   String sessionId;
//
//   Restaurants(
//       {this.restaurantName,
//       this.restaurantDesc,
//       this.restaurantImage,
//       this.restaurantInfo,
//       this.restaurantId,
//       this.fbUrl,
//       this.twitterUrl,
//       this.linkedinUrl,
//       this.githubUrl,
//       this.restaurantSession,
//       this.sessionId});
//
//   Restaurants.fromJson(Map<String, dynamic> json) {
//     restaurantName = json['restaurant_name'];
//     restaurantDesc = json['restaurant_desc'];
//     restaurantImage = json['restaurant_image'];
//     restaurantInfo = json['restaurant_info'];
//     restaurantId = json['restaurant_id'];
//     fbUrl = json['fb_url'];
//     twitterUrl = json['twitter_url'];
//     linkedinUrl = json['linkedin_url'];
//     githubUrl = json['github_url'];
//     restaurantSession = json['restaurant_session'];
//     sessionId = json['session_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['restaurant_name'] = this.restaurantName;
//     data['restaurant_desc'] = this.restaurantDesc;
//     data['restaurant_image'] = this.restaurantImage;
//     data['restaurant_info'] = this.restaurantInfo;
//     data['restaurant_id'] = this.restaurantId;
//     data['fb_url'] = this.fbUrl;
//     data['twitter_url'] = this.twitterUrl;
//     data['linkedin_url'] = this.linkedinUrl;
//     data['github_url'] = this.githubUrl;
//     data['restaurant_session'] = this.restaurantSession;
//     data['session_id'] = this.sessionId;
//     return data;
//   }
// }
//
// List<Restaurants> restaurants = [
//   Restaurants(
//     restaurantImage:
//         "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
//     restaurantName: "Pawan Kumar",
//     restaurantDesc: "Google Developer Expert, Flutter",
//     restaurantSession: "Talk: Getting Started With Flutter For Web",
//     fbUrl: "https://facebook.com/imthepk",
//     githubUrl: "https://github.com/iampawan",
//     linkedinUrl: "https://linkedin.com/in/imthepk",
//     twitterUrl: "https://twitter.com/imthepk",
//   ),
//   Restaurants(
//     restaurantImage:
//         "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVW9DRktRcllTZDN1T2VINnhiUC11M2pVUFZFLVI0dVh5czF6d2lKNGRwanJjVjJhWm1zSUJZelVkZzBRaG9uRkNJZmhVZEg3ZGpVV0RhRmpQWXFYeHU0Y1ZDRmROb3FQYnVBQ2VKMWdOSFRHS3B0YWxRLk8xa3k2cVpFOG15UFAyRnk",
//     restaurantName: "Laura Morinigo",
//     restaurantDesc: "Software Developer, DMod Labs",
//     restaurantSession:
//         "How I Became a Mobile Developer with Firebase and Flutter",
//     fbUrl: "https://facebook.com/imthepk",
//     githubUrl: "https://github.com/iampawan",
//     linkedinUrl: "https://linkedin.com/in/imthepk",
//     twitterUrl: "https://twitter.com/imthepk",
//   ),
//   Restaurants(
//     restaurantSession: "Angular Elements",
//     restaurantImage:
//         "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJET043VnFRT2R1UHdyS1lFUElwLVNaYlVVbnc1enJuNTNGbUtQQjR0SF9STVUzMVptdkgzclRpRjhTUDc2WUNvNldKNFVacFhiXzF4bUoxTVc0RzlfXzF3d2tPUXl4NTNSNjBNSzRoaXB1VVBxOTRFLk0yOHMwWm1NeURjaWxQZ1k",
//     restaurantName: "Jimenez Raul",
//     restaurantDesc: "Software Engineer, Byte Default",
//     fbUrl: "https://facebook.com/imthepk",
//     githubUrl: "https://github.com/iampawan",
//     linkedinUrl: "https://linkedin.com/in/imthepk",
//     twitterUrl: "https://twitter.com/imthepk",
//   ),
//   Restaurants(
//     restaurantSession: "Machine Learning and AutoML on GCP",
//     restaurantImage:
//         "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UozlnKuWKqwaGjT2U6ylLLyMtoByOnx-ctrRmn5A8kptjCS50E8EgQDSuxYg8chsldOmSLbHScKX0ERlngHvbRp5XVRyNuAUSIm_Hguq3THTisLLaU.UyKUL3gyFQsEAcmO",
//     restaurantName: "Sathish V J",
//     restaurantDesc: "Tech Architect, Investor, Tutor",
//     fbUrl: "https://facebook.com/imthepk",
//     githubUrl: "https://github.com/iampawan",
//     linkedinUrl: "https://linkedin.com/in/imthepk",
//     twitterUrl: "https://twitter.com/imthepk",
//   ),
//   Restaurants(
//     restaurantSession: "Top 5 from Firebase Summit '18",
//     restaurantImage:
//         "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqZAYU9q0R5K2cq94DxU7ebiOMhilDlx5NzzsWWZ_oHxqcZV8H8j594rg_q_vyfTToA0BfScTHOHAj8uKf2OeF5MVqa_jmdjC9JO9-2TcPWjboxPf8.NN-XmkQxmHl1XyY_",
//     restaurantName: "Timothy Jordan",
//     restaurantDesc: "Sr. Staff Developer Advocate, Google",
//     fbUrl: "https://facebook.com/imthepk",
//     githubUrl: "https://github.com/iampawan",
//     linkedinUrl: "https://linkedin.com/in/imthepk",
//     twitterUrl: "https://twitter.com/imthepk",
//   ),
//   Restaurants(
//     restaurantSession: "Multiplayer Games with WebXR",
//     restaurantImage:
//         "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJ2Zkg0YUY1ZFJoMFFRbWlqdFE4MV9nNTdJR0dxUS1ubVJfbkN2Y1RaS3VoaUp2dWd3ejNmUmJRekFQaU5QNGhqd1F6cUtKQXpYeXJkemVyS2hUY1NzSWloMXFCNzQzdmpRVVVmU0Z4XzJZRDVZQXVBLnFHVllKVmc2MUVzQVZ5bVI",
//     restaurantName: "Tanay Pant",
//     restaurantDesc: "Web Developer Advocate, Mozilla Foundation",
//     fbUrl: "https://facebook.com/imthepk",
//     githubUrl: "https://github.com/iampawan",
//     linkedinUrl: "https://linkedin.com/in/imthepk",
//     twitterUrl: "https://twitter.com/imthepk",
//   ),
//   Restaurants(
//     restaurantSession: "Mobile Database Persistence",
//     restaurantImage:
//         "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqEG002BsGCqZLZRFUGu9xo4IpGamz6gTqlWxWyME0s-n8gR7Rs0tM5R6mPMOCRYf5rAunWx0GQeXDUHPag_XWGApdekw.cks8tPlPy-TeucOT",
//     restaurantName: "Eric Maxwell",
//     restaurantDesc: "Software Developer, Big Nerd Ranch",
//     fbUrl: "https://facebook.com/imthepk",
//     githubUrl: "https://github.com/iampawan",
//     linkedinUrl: "https://linkedin.com/in/imthepk",
//     twitterUrl: "https://twitter.com/imthepk",
//   ),
//   Restaurants(
//     restaurantSession: "Progressive Experience Web Development",
//     restaurantImage:
//         "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXBET0RKT0JBV195UjVuSDRKS3JEenphN2gzLW80WEdvenlGdkZhNGREUzFmQUk1RjJnR0N5eEJIdlBkOVhlLUdwalVSWXlxbXJ4VFA0QXRZdnB4WDllWFNpdmdiNy14Q0tLOENCeU41Yks4NF9vUVQ0LlVFY0RBeld0ZTd4OEtSUTg",
//     restaurantName: "Yohan Totting",
//     restaurantDesc: "Web Developer Advocate, Google",
//     fbUrl: "https://facebook.com/imthepk",
//     githubUrl: "https://github.com/iampawan",
//     linkedinUrl: "https://linkedin.com/in/imthepk",
//     twitterUrl: "https://twitter.com/imthepk",
//   ),
// ];
