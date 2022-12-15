import 'package:flutter/material.dart';
import 'package:interface_responsiva/breakpoins.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final maxWidth = constrains.maxWidth;

        // web_top_section
        if (maxWidth >= webBreakpoint) {
          return AspectRatio(
            aspectRatio: 3.4,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.asset(
                    "assets/imgs/img1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: 450,
                      child: Column(
                        children: [
                          const Text(
                            "Aprenda Flutter com este curso",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90. Qualidade garantida.",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            cursorColor: Colors.blue,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              hintStyle: const TextStyle(color: Colors.white),
                              hintText: "Digite alguma coisa aqui...",
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else if (maxWidth >= tabletBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/imgs/img1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: 350,
                      child: Column(
                        children: [
                          const Text(
                            "Aprenda Flutter com este curso",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90. Qualidade garantida.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            cursorColor: Colors.blue,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              hintStyle: const TextStyle(color: Colors.white),
                              hintText: "Digite alguma coisa aqui...",
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.asset(
                "assets/imgs/img1.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Aprenda Flutter com este curso",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90. Qualidade garantida.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    cursorColor: Colors.blue,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintStyle: const TextStyle(color: Colors.white),
                      hintText: "Digite alguma coisa aqui...",
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
