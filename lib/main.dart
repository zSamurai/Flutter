import 'package:flutter/material.dart';

void main() {
  runApp(const Animals());
}

class Animals extends StatelessWidget {
  const Animals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Animals",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var URL = "https://happylearning.tv/wp-content/uploads/2017/09/ANIMALES_SALVAJES_ENG_PORTADA-01.png";

  @override
  Widget build(BuildContext context) {
    print("The build method is triggered");
    return Scaffold(
      appBar: AppBar(title: const Text("Animals"),
      
      centerTitle: true),
      
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: Image.network(
                  URL,
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        URL = "https://scitechdaily.com/images/Murembo-Great-Tusker-Elephant.jpg";
                      });
                    }, child: const Text("Elephant",
                    style: TextStyle(fontSize: 25),
                    ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(140, 65),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        URL = "https://content.eol.org/data/media/2e/dc/6f/18.https___www_inaturalist_org_photos_2193280.jpg";
                      });
                    }, child: const Text("Zebra",
                    style: TextStyle(fontSize: 25),
                    ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(140, 65),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)
                            ),
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        URL = "https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2F92c90252-0679-11ec-a644-d92df3a28bb3.jpg?crop=4626%2C3084%2C237%2C158";
                      });
                    }, child: const Text("Leopard",
                    style: TextStyle(fontSize: 25),
                    ),
                      style: ElevatedButton.styleFrom(
                      minimumSize: Size(140, 65),
                        shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50),
                        ),
                      ),
                    ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        URL = "https://wallpaperaccess.com/full/1780440.jpg";
                      });
                    }, child: const Text("Rhino",
                    style: TextStyle(fontSize: 25),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(140, 65),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50),
                        ),
                      ),
                    ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
