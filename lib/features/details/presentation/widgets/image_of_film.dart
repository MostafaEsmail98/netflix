import 'package:flutter/material.dart';

class ImageOfFilm extends StatelessWidget {
  const ImageOfFilm({
    super.key,
    required this.image,
  });

  final String? image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .4,
      child: Card(
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Image.network(
            fit: BoxFit.cover,
            image ?? "",
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
