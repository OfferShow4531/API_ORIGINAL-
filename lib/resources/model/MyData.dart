import 'package:flutter/cupertino.dart';
import 'package:rickmorty/resources/model/rick_and_morty_model.dart';

List<ModelViewData> person = [
  ModelViewData(
    id: 1,
    image: 'assets/images/RickNew.png',
    status: 'живой',
    name: 'Рик Санчез',
    gender: 'Человек, Мужской',
    now: 'В сети',
  ),
  ModelViewData(
    id: 2,
    image: 'assets/images/MortyNew.png',
    status: 'живой',
    name: 'Морти Смитт',
    gender: 'Человек, Мужской',
    now: 'В сети',
  ),
  ModelViewData(
    id: 3,
    image: 'assets/images/SummerNew.png',
    status: 'живой',
    name: 'Саммер Смитт',
    gender: 'Человек, Женский',
    now: 'Не беспокоить',
  ),
  ModelViewData(
    id: 4,
    image: 'assets/images/DirectNew_.png',
    status: 'живой',
    name: 'Директор Агенства',
    gender: 'Человек, Мужской',
    now: 'Не беспокоить',
  ),
  ModelViewData(
    id: 5,
    image: 'assets/images/AlberEinsteinNew.png',
    status: 'мертвый',
    name: 'Альберт Эйнштейн',
    gender: 'Человек, Мужской',
    now: 'Не в сети',
  ),
  ModelViewData(
    id: 6,
    image: 'assets/images/Rise.png',
    status: 'мертвый',
    name: 'Алан Райлс',
    gender: 'Человек, Мужской',
    now: 'Не в сети',
  ),
];

List<ModelViewData> personList = [
  ModelViewData(
      id: 1,
      image: 'assets/images/Rick.png',
      status: 'ЖИВОЙ',
      name: 'Рик Санчез',
      gender: 'Человек, Мужской',
      now: 'В сети'),
  ModelViewData(
      id: 2,
      image: 'assets/images/Morty.png',
      status: 'ЖИВОЙ',
      name: 'Морти Смитт',
      gender: 'Человек, Мужской',
      now: 'В сети'),
  ModelViewData(
      id: 3,
      image: 'assets/images/Direct.png',
      status: 'ЖИВОЙ',
      name: 'Директор Агенства',
      gender: 'Человек, Мужской',
      now: 'Не беспокоить'),
  ModelViewData(
      id: 4,
      image: 'assets/images/SummerSmitt.png',
      status: 'ЖИВОЙ',
      name: 'Саммер Смитт',
      gender: 'Человек, Женский',
      now: 'Не беспокоить'),
  ModelViewData(
      id: 5,
      image: 'assets/images/AlbertEinstein.png',
      status: 'МЕРТВЫЙ',
      name: 'Альберт Эйнштейн',
      gender: 'Человек, Мужской',
      now: 'Отключен'),
  ModelViewData(
      id: 6,
      image: 'assets/images/AlanRise.png',
      status: 'МЕРТВЫЙ',
      name: 'Алан Райлс',
      gender: 'Человек, Мужской',
      now: 'Отключен'),
];

List<PersonViewData> infoList = [
  PersonViewData(
    chapt: 1,
    image: 'assets/images/1Episode.png',
    chapter_numb: 'Серия 1',
    chapter_name: 'Пилот',
    date: '2 декабря 2013',
  ),
  PersonViewData(
    chapt: 2,
    image: 'assets/images/2Episode.png',
    chapter_numb: 'Серия 2',
    chapter_name: 'Пёс-газонокосильщик',
    date: '9 декабря 2013',
  ),
  PersonViewData(
    chapt: 3,
    image: 'assets/images/3Episode.png',
    chapter_numb: 'Серия 3',
    chapter_name: 'Анатомический парк',
    date: '16 декабря 2013',
  ),
  PersonViewData(
    chapt: 4,
    image: 'assets/images/4Episode.png',
    chapter_numb: 'Серия 4',
    chapter_name: 'М. Найт Шьямал-Инопланетяне!',
    date: '13 января 2014',
  ),
  PersonViewData(
    chapt: 5,
    image: 'assets/images/5Episode.png',
    chapter_numb: 'Серия 5',
    chapter_name: 'Мисикс и разрушение',
    date: '20 января 2014',
  ),
  PersonViewData(
    chapt: 6,
    image: 'assets/images/6Episode.png',
    chapter_numb: 'Серия 6',
    chapter_name: 'Напиток Рика №9',
    date: '20 января 2014',
  ),
  PersonViewData(
    chapt: 7,
    image: 'assets/images/7Episode.png',
    chapter_numb: 'Серия 7',
    chapter_name: 'Воспитание Газорпазорпа',
    date: '20 января 2014',
  ),
];

List<PlanetViewData> planets = [
  PlanetViewData(
      planetID: 1,
      image: 'assets/images/PlanetEarth.png',
      planet_name: 'Земля С-137',
      planet_type: 'Мир',
      elipse: 'assets/svg_icons/Ellipse.png',
      planet_from: 'Измерение С-137'),
  PlanetViewData(
      planetID: 2,
      image: 'assets/images/Anatomy_Park.png',
      planet_name: 'Анатомический парк',
      planet_type: 'Мир',
      elipse: 'assets/svg_icons/Ellipse.png',
      planet_from: 'Измерение С-137'),
  PlanetViewData(
      planetID: 3,
      image: 'assets/images/PlanetEarth.png',
      planet_name: 'Земля С-137',
      planet_type: 'Мир',
      elipse: 'assets/svg_icons/Ellipse.png',
      planet_from: 'Измерение С-137'),
];

List<PlanetInfoData> planet_info = [
  PlanetInfoData(
    planetID: 1,
    planetName: 'Земля С-137',
    planetType: 'Мир * Измерение С-137',
    planetInfo: 'Это планета, на которой проживает человеческая'
        ' раса, и главное место для персонажей Рика и Морти.'
        ' Возраст этой Земли более 4,6 миллиардов лет, и она '
        'является четвертой планетой от своей звезды.',
  )
];

List<EpisodeInfo> episodes = [
  EpisodeInfo(
    episodeID: 1,
    episodeName: 'М.Найт\nШьямал-Инопланетяне!',
    chapterNumber: 'СЕРИЯ 1',
    chapterInfo: 'Зигерионцы помещают Джерри и Рика в симуляцию, чтобы узнать секрет изготовления концен-трирован- ной темной материи.',
    premier: 'Премьера',
    date: '2 декабря 2013',
  ),
];
