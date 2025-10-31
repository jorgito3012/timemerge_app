# 🚀 TimeMerge: Aplicación Multiplataforma para Gestión de Citas

## M1. Resumen del Proyecto

**TimeMerge** es una aplicación móvil desarrollada con **Flutter** y **Firebase** que tiene como objetivo principal digitalizar y suplir la falta de organización en pequeños comercios y profesionales (como peluquerías, profesores o consultores).

Se trata de una solución **sencilla, intuitiva y agradable** diseñada para el uso diario, que permite a los profesionales dejar de lado los sistemas de gestión de horarios basados en papel. La aplicación se centra en automatizar la creación, gestión y reserva de citas de manera eficiente.

## M5. Descripción del Problema

La problemática principal que aborda TimeMerge es la ineficiencia y el desorden asociado a los sistemas tradicionales de gestión de citas (libretas, mensajes de texto). Se busca proporcionar una herramienta digital que garantice la **persistencia de datos (CRUD)** y que ofrezca una interfaz de usuario clara para optimizar el tiempo del profesional.

## 🛠️ Tecnologías Clave

Este proyecto Full Stack está construido con un enfoque multiplataforma y una arquitectura NoSQL:

| Tecnología | Categoría | Propósito en el Proyecto |
| :--- | :--- | :--- |
| **Flutter** | Frontend/SDK | Utilizado para desarrollar la aplicación nativa para **Android, iOS y otras plataformas** desde una única base de código. |
| **Dart** | Lenguaje | Lenguaje de programación principal para la lógica de la aplicación en Flutter. |
| **Firebase** | Backend/BaaS | Provee servicios de **Autenticación de Usuarios** y la **Base de Datos No Relacional** para almacenar horarios y citas. |
| **Node.js** | Entorno | Necesario para ejecutar comandos de instalación y configuración de ciertas dependencias (ej. FlutterFire CLI). |

## 🔑 Funcionalidades Principales

TimeMerge implementa todas las operaciones **CRUD** sobre la información, enfocándose en dos roles de usuario: el **Dueño del Horario** (el profesional) y el **Cliente**.

### Funciones del Dueño / Profesional
* **Autenticación:** Registro e Inicio de Sesión seguro a través de Firebase.
* **Gestión de Horarios:** **Crear, Modificar y Eliminar** horarios de trabajo personalizados.
* **Distribución:** **Compartir** el código de invitación o clave del horario con los clientes.
* **Visualización:** **Consultar** las citas reservadas por los clientes.
* **Control:** **Cancelar** citas existentes.

### Funciones del Cliente
* **Autenticación:** Registro e Inicio de Sesión.
* **Búsqueda:** **Buscar** el horario de un profesional utilizando el código de invitación.
* **Reserva:** **Reservar** una cita en los huecos disponibles del profesional.
* **Gestión Personal:** **Consultar y Cancelar** sus propias reservas (`Mis Citas`).

## ⚙️ Estructura y Organización del Código

El código está organizado en una estructura de paquetes lógica para facilitar el mantenimiento y la escalabilidad:

* **`auth`**: Contiene la lógica y las ventanas (vistas) para el **Login** y **Sign Up** (manejo de Firebase Authentication).
* **`pages`**: Núcleo de la aplicación, incluye las principales pantallas funcionales como `home_page`, `create_schedule`, `view_schedule` y `my_appointments`.
* **`widgets`**: Almacena elementos reutilizables de la UI, como `appbar` personalizado, `button`, `drawer` y `textfield`.
* **`lib/main.dart`**: Punto de entrada de la aplicación.

## 💻 Requisitos y Ejecución

Para clonar y ejecutar este proyecto localmente, necesitarás tener instalados los siguientes elementos:

1.  **Node.js** (versión recomendada).
2.  **SDK de Flutter** (configurado y en el PATH).
3.  **Android Studio o VS Code** con las extensiones de Flutter y Dart.
4.  **FlutterFire CLI** (para la integración con Firebase).
5.  Un **emulador** o dispositivo físico conectado.

### Comandos de Ejecución:
```bash
# Instalar dependencias de Flutter
flutter pub get

# Ejecutar la aplicación
flutter run