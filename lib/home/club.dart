class ClubsData {
  List<Clubs> clubs;

  ClubsData({this.clubs});

  ClubsData.fromJson(Map<String, dynamic> json) {
    if (json['clubs'] != null) {
      clubs = new List<Clubs>();
      json['clubs'].forEach((v) {
        clubs.add(Clubs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.clubs != null) {
      data['clubs'] = this.clubs.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Clubs {
  String name;
  String desc;
  String job;
  String image;
  String speciality;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String contribution;

  Clubs(
      {this.name,
      this.desc,
      this.job,
      this.image,
      this.speciality,
      this.fbUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      this.contribution});

  Clubs.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    desc = json['desc'];
    job = json['job'];
    image = json['image'];
    speciality = json['speciality'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    contribution = json['contribution'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['job'] = this.job;
    data['image'] = this.image;
    data['speciality'] = this.speciality;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['contribution'] = this.contribution;
    return data;
  }
}

List<Clubs> clubs = [
  Clubs(
    name: "Sundar Pichai",
    desc: "Organizer",
    contribution: "Google CEO",
    image:
        "https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg",
  ),
  Clubs(
    name: "Vrijraj",
    desc: "Co-Organizer",
    contribution: "Logistics and travels",
    image: "https://avatars2.githubusercontent.com/u/10599101?s=460&v=4",
  ),
  Clubs(
    name: "Larry Page",
    desc: "Co-Organizer",
    contribution: "Founder",
    image:
        "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5c76bcaaa7ea43100043c836%2F400x400.jpg%3Ffit%3Dscale%26background%3D000000",
  ),
  Clubs(
    name: "Pawan Kumar",
    desc: "Co-Organizer",
    contribution: "Developed the app",
    image:
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
  ),
  Clubs(
    name: "Pawan Kumar",
    desc: "Organizer",
    contribution: "Developed the app",
    image:
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
  ),
];
