import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: backgroundColor1,
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            // Imagen superior con border radius
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              child: SizedBox(
                height: size.height * 0.45,
                width: size.width,
                child: Image.network(
                  'https://raw.githubusercontent.com/JannaRG13/imagenes/refs/heads/main/concesionaria.jpg', // 👉 Tu URL de imagen aquí
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: primaryColor,
                    alignment: Alignment.center,
                    child: const Icon(Icons.broken_image,
                        size: 80, color: Colors.white54),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Título
            Text(
              "Discover your\nDream job Here",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: textColor1,
                height: 1.2,
              ),
            ),

            const SizedBox(height: 16),

            // Subtítulo
            Text(
              "Explore all the most exiting jobs roles\nbased on your interest And study major",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: textColor2,
              ),
            ),

            const Spacer(),

            // Botones
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: backgroundColor3.withOpacity(0.9),
                  border: Border.all(color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.05),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(0, -1),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            "Register",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: textColor1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const VerticalDivider(
                      width: 1,
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: textColor1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
