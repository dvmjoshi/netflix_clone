class PopularList {
  String image;
  String name;
  String rating;
  String description;
  String release;
  String directorname;

  PopularList(this.image, this.name, this.rating, this.description,
      this.release, this.directorname);
}

final List<PopularList> populartlist = [
  PopularList(
      'images/johnwick.jpg',
      "John Wick 3",
      "8.0",
      "After gunning down a member of the High Table -- "
          "the shadowy international assassin's guild -- legendary hit man John Wick finds himself stripped of the organization's protective services. Now stuck with a 14 million bounty "
          "on his head, Wick must fight his way through the streets of New York as he becomes the target of the world's most ruthless killers",
      "9 May 2019",
      "Chad Stahelski"),
  PopularList(
      'images/avenger.png',
      "Endgame",
      "8.8",
      "Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle."
          " Meanwhile, the remaining Avengers -- Thor, Black Widow, Captain America and Bruce Banner --"
          " must figure out a way to bring back their vanquished allies for an epic showdown with Thanos -- "
          "the evil demigod who decimated the planet and the universe.",
      "26 April 2019",
      "Russo Brother"),
  PopularList(
      'images/shazam.jpg',
      "Shazam",
      "7.4",
      "We all have a superhero inside of us -- it just takes a bit of magic to bring it out. In 14-year-old Billy Batson's case, all he needs to do is shout out one word to transform into the adult superhero Shazam. Still a kid at heart, Shazam revels in the new version of himself by doing what any other teen would do -- have fun while testing out his newfound powers. "
          "But he'll need to master them quickly before the evil Dr."
          " Thaddeus Sivana can get his hands on Shazam's magical abilities.",
      " 5 April 2019",
      "David Sandberg"),
  PopularList(
      'images/marvel.jpg',
      "Captain Marvel",
      "7.1",
      "Captain Marvel is an extraterrestrial Kree warrior who finds herself caught in the middle of an intergalactic battle between her people and the Skrulls. Living on Earth in 1995, she keeps having recurring memories of another life as U.S. Air Force pilot Carol Danvers. With help from Nick Fury, "
          "Captain Marvel tries to uncover the secrets of her "
          "past while harnessing her special superpowers to end the war with the evil Skrulls.",
      "8 March 2019",
      " Anna Boden, Ryan Fleck"),
  PopularList(
      'images/pika.jpg',
      "Detective Pikachu",
      "6.9",
      "Ace detective Harry Goodman goes mysteriously missing, prompting his 21-year-old son, Tim, to find out what happened. Aiding in the investigation is Harry's former Pokémon partner, wise-cracking, adorable super-sleuth Detective Pikachu. Finding that they are uniquely equipped to work together, "
          "as Tim is the only human who can talk with Pikachu, they join forces to unravel the tangled mystery",
      " 9 May 2018",
      " Rob Letterman"),
  PopularList(
      'images/dark.jpg',
      'Dark Phoenix',
      "8.4",
      "This is the story of one of the X-Men’s most beloved characters, Jean Grey, as she evolves into the iconic DARK PHOENIX.  ",
      "5 June 2019 ",
      " Simon Kinberg"),
  PopularList(
      'images/spiderman.jpg',
      "Spiderman:\nFar from Home",
      "8.5",
      "Following the events of Avengers: Endgame, "
          "Spider-Man must step up to take on new threats in a world that has changed forever.",
      "28 June 2019",
      "Jon Watts"),
  PopularList(
      'images/hollywood.jpg',
      "Once upon a\n time in Hollywood",
      "8.2",
      "In 1969 Los Angeles, television star Rick Dalton and his longtime "
          "stunt double make their way around a changing industry that they hardly recognize anymore.",
      "2019 ",
      "Quentin Tarantino"),
  PopularList(
      'images/hoobs.jpg',
      "Hobbs & Shaw",
      "8.3",
      "Ever since hulking lawman Hobbs (Johnson), a loyal agent of America's Diplomatic Security Service, and lawless outcast Shaw (Statham), a former British military elite operative, first faced off in 2015’s Furious 7,"
          " the duo have swapped smack talk and body blows as they’ve tried to take each other down.",
      "1 August 2019",
      "David Leitch")
];
