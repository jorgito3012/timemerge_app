import 'package:flutter/material.dart';
import 'package:timemerge_app/widgets/appbar.dart';
import 'package:timemerge_app/widgets/drawer.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 232, 232, 232),
      appBar: buildAppbar('T I M E   M E R G E'),
      drawer: buildDrawer(context),

      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text(
            '¡Bienvenido/a a TIME MERGE!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Nos alegra tenerte con nosotros. Has dado el primer paso hacia una gestión más eficiente y sencilla de tu tiempo. En OrganizaTuTiempo, estamos comprometidos a facilitar la organización de tus actividades diarias y ayudar a tus clientes a acceder a tus servicios de manera más rápida y conveniente.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            '¿Qué puedes hacer a continuación?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Configura tu horario',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Sube tu horario de trabajo para que tus clientes puedan ver tu disponibilidad y reservar una cita en el momento que más les convenga.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 12),
          Text(
            'Gestiona tus citas',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Revisa y administra tus reservas con facilidad. Recibirás notificaciones para estar siempre al tanto de tus próximas citas.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 12),
          Text(
            'Personaliza tu perfil',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Añade detalles sobre tus servicios, fotos y cualquier información adicional que desees compartir con tus clientes para que puedan conocerte mejor.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            'Consejos para empezar:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Actualiza tu disponibilidad regularmente',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Mantén tu horario siempre al día para evitar confusiones y asegurar una experiencia fluida para tus clientes.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 12),
          Text(
            'Interactúa con tus clientes',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Responde rápidamente a las solicitudes y mensajes para construir una relación de confianza y profesionalismo.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 12),
          Text(
            'Explora nuestras herramientas',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Aprovecha todas las funcionalidades de la aplicación para optimizar tu tiempo y mejorar la satisfacción de tus clientes.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            'Estamos aquí para ayudarte en cada paso del camino. Si tienes alguna pregunta o necesitas asistencia, no dudes en contactarnos a través de nuestro soporte técnico.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            'Gracias por elegir OrganizaTuTiempo. ¡Esperamos que disfrutes de una experiencia organizada y sin complicaciones!',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            'Saludos cordiales,\nEl equipo de OrganizaTuTiempo',
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
