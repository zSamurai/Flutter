import 'package:flutter/material.dart';

class ImageAndDescProvider with ChangeNotifier {
  var _url =
      "https://happylearning.tv/wp-content/uploads/2017/09/ANIMALES_SALVAJES_ENG_PORTADA-01.png";
  var _desc = "Click on the buttons to see the description";

  get url => _url;

  get desc => _desc;

  void elephantChange() {
    _url = "https://scitechdaily.com/images/Murembo-Great-Tusker-Elephant.jpg";
    _desc =
        "Elephants are the largest land mammals on earth and have distinctly massive bodies, large ears, and long trunks. They use their trunks to pick up objects, trumpet warnings, greet other elephants, or suck up water for drinking or bathing, among other uses. Both male and female African elephants grow tusks and each individual can either be left- or right-tusked, and the one they use more is usually smaller because of wear and tear. Elephant tusks serve many purposes. These extended teeth can be used to protect the elephant's trunk, lift and move objects, gather food, and strip bark from trees. They can also be used for defense. During times of drought, elephants even use their tusks to dig holes to find water underground.";
    notifyListeners();
  }

  void zebraChange() {
    _url =
        "https://content.eol.org/data/media/2e/dc/6f/18.https___www_inaturalist_org_photos_2193280.jpg";
    _desc =
        "The Grey's zebra now live in Ethiopia and northern Kenya, there are three main types of zebra, but the Garvy's zebra has declined in numbers at around 54% since the 1980s, where the population was estimated at 5,800. Today the population is at approximately 2,000. Over the years the numbers have severely decreased due to many reasons, from habitat loss and competing with other grazers to sadly being hunted for their skins.";
    notifyListeners();
  }

  void leopardChange() {
    _url =
        "https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2F92c90252-0679-11ec-a644-d92df3a28bb3.jpg?crop=4626%2C3084%2C237%2C158";
    _desc =
        "The leopard is so strong and comfortable in trees that it often hauls its kills into the branches. By dragging the bodies of large animals aloft it hopes to keep them safe from scavengers such as hyenas. Leopards can also hunt from trees, where their spotted coats allow them to blend with the leaves until they spring with a deadly pounce. These nocturnal predators also stalk antelope, deer, and pigs by stealthy movements in the tall grass. When human settlements are present, leopards often attack dogs and, occasionally, people.";
    notifyListeners();
  }

  void rhinoChange() {
    _url = "https://wallpaperaccess.com/full/1780440.jpg";
    _desc =
        "Rhinos once roamed many places throughout Europe, Asia, and Africa and were known to early Europeans who depicted them in cave paintings. At the beginning of the 20th century, 500,000 rhinos roamed Africa and Asia. By 1970, rhino numbers dropped to 70,000, and today, around 27,000 rhinos remain in the wild. Very few rhinos survive outside national parks and reserves due to persistent poaching and habitat loss over many decades. Three species of rhino—black, Javan, and Sumatran—are critically endangered. Today, a small population of Javan rhinos is found in only one national park on the northern tip of the Indonesian island of Java.";
    notifyListeners();
  }
}
