class ModelViewData {
  int id;
  String image;
  String status;
  String name;
  String gender;
  String now;

  ModelViewData({
    this.id,
    this.image,
    this.status,
    this.name,
    this.gender,
    this.now,
  });
}

class PersonViewData {
  int chapt;
  String image;
  String chapter_numb;
  String chapter_name;
  String date;

  PersonViewData({
    this.chapt,
    this.image,
    this.chapter_numb,
    this.chapter_name,
    this.date,
});

}


class PlanetViewData{
  int planetID;
  String image;
  String planet_name;
  String planet_type;
  String elipse;
  String planet_from;


  PlanetViewData({
    this.planetID,
    this.image,
    this.planet_name,
    this.planet_type,
    this.elipse,
    this.planet_from,
  });
}

class PlanetInfoData{
  int planetID;
  String planetName;
  String planetType;
  String elipse;
  String planetFrom;
  String planetInfo;


  PlanetInfoData({
    this.planetID,
    this.planetName,
    this.planetType,
    this.planetInfo,
  });
}

class EpisodeInfo{
  int episodeID;
  String episodeName;
  String chapterNumber;
  String chapterInfo;
  String premier;
  String date;


  EpisodeInfo({
   this.episodeID,
   this.episodeName,
   this.chapterNumber,
   this.chapterInfo,
    this.premier,
    this.date,
});
}