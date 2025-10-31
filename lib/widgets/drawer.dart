import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timemerge_app/auth/login_screen.dart';
import 'package:timemerge_app/side_bar.dart';
import 'package:timemerge_app/view_schedules.dart';

Drawer buildDrawer(context) {
  return Drawer(
          backgroundColor: Color.fromARGB(255, 151, 151, 151),
          child: ListView(
            children: [
              Center(
                  child: DrawerHeader(
                child: Center(
                  child: Container(
                    child: ClipOval(
                      child: Image.asset(
                        'lib/images/Logo_timemerge.png',
                        width: 100, // Ajusta el tamaño de la imagen
                        height: 100, // para que sea un círculo perfecto
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text(
                    'Inicio',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    //textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    // Handle logout logic (e.g., clear user data)
                    Navigator.of(context).pop(); // Close drawer

                    // Navigate to LoginScreen (assuming it's a widget)
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SideBar()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  leading: const Icon(Icons.search),
                  title: const Text(
                    'Buscar',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    //textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    Navigator.of(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  leading: const Icon(Icons.timer_rounded),
                  title: const Text(
                    'Mis Horarios',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    //textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    // Handle logout logic (e.g., clear user data)
                    Navigator.of(context).pop(); // Close drawer

                    // Navigate to LoginScreen (assuming it's a widget)
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ViewSchedule()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  leading: const Icon(Icons.inventory_rounded),
                  title: const Text(
                    'Mis Reservas',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    //textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    Navigator.of(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text(
                    'Cerrar Sesión',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    //textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    // Handle logout logic (e.g., clear user data)
                    Navigator.of(context).pop(); // Close drawer

                    // Navigate to LoginScreen (assuming it's a widget)
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                    FirebaseAuth.instance.signOut();
                  },
                ),
              )
            ],
          ),
        );
}
