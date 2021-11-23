import 'package:flutter/material.dart';
import 'package:flutter_project/provider_class.dart';
import 'package:provider/src/provider.dart';

class PortraitMode extends StatelessWidget {
  const PortraitMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              child: ImageChange(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Color(0xffe2e2e2),
                ),
                height: 160,
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: DescChange(),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<ImageAndDescProvider>().elephantChange();
                    },
                    child: const Text(
                      "Elephant",
                      style: TextStyle(fontSize: 24),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(130, 60),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<ImageAndDescProvider>().zebraChange();
                    },
                    child: const Text(
                      "Zebra",
                      style: TextStyle(fontSize: 24),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(130, 60),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<ImageAndDescProvider>().leopardChange();
                      },
                      child: const Text(
                        "Leopard",
                        style: TextStyle(fontSize: 24),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(130, 60),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<ImageAndDescProvider>().rhinoChange();
                      },
                      child: const Text(
                        "Rhino",
                        style: TextStyle(fontSize: 24),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(130, 60),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
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

class ImageChange extends StatelessWidget {
  const ImageChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      context.watch<ImageAndDescProvider>().url,
      width: 280,
      height: 280,
      fit: BoxFit.cover,
    );
  }
}

class DescChange extends StatelessWidget {
  const DescChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      context.watch<ImageAndDescProvider>().desc,
      style: const TextStyle(
        fontSize: 18,
      ),
    );
  }
}
