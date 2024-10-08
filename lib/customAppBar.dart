import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    // Verificar si la pantalla es la primera (pantalla principal)
    bool isFirstRoute = ModalRoute.of(context)?.isFirst ?? true;

    return AppBar(
      backgroundColor: Colors.blueAccent, // Color de fondo del AppBar
      leading:
          !isFirstRoute // Si no es la pantalla principal, mostrar el botón de retroceso
              ? IconButton(
                  icon: Icon(
                      Icons.arrow_back), // Ícono de flecha para navegar atrás
                  onPressed: () {
                    Navigator.pop(context); // Navegar a la pantalla anterior
                  },
                )
              : null, // Si es la pantalla principal, no mostrar nada
      title: Text(
        title, // Título dinámico
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true, // Centrar el título
      actions: [
        IconButton(
          icon: Icon(Icons.person), // Ícono de usuario
          onPressed: () {
            // Aquí va la acción al presionar el botón, como navegar a la pantalla de login
          },
        ),
        IconButton(
          icon: Icon(Icons.notifications), // Ícono de notificaciones
          onPressed: () {
            // Acción para ver notificaciones
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
