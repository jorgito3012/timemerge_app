import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:timemerge_app/view_schedules.dart';
import 'package:timemerge_app/widgets/appbar.dart';
import 'package:timemerge_app/widgets/button.dart';
import 'package:timemerge_app/widgets/textfield.dart';

class CreateSchedule extends StatefulWidget {
  const CreateSchedule({super.key});

  @override
  State<CreateSchedule> createState() => _CreateScheduleState();
}

class _CreateScheduleState extends State<CreateSchedule> {
  final List<String> _frequency = <String>['15 minutos', '30 minutos', '1 hora'];
  String _frequencyValue = '1 hora';
  final List<String> _hours = <String>[
    '00:00',
    '01:00',
    '02:00',
    '03:00',
    '04:00',
    '05:00',
    '06:00',
    '07:00',
    '08:00',
    '09:00',
    '10:00',
    '11:00',
    '12:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
    '19:00',
    '20:00',
    '21:00',
    '22:00',
    '23:00'
  ];
  final _name = TextEditingController();
  String _initialHourValue = '08:00';
  String _finalHourValue = '16:00';
  bool? monday = false;
  bool? tuesday = false;
  bool? wednesday = false;
  bool? thursday = false;
  bool? friday = false;
  bool? saturday = false;
  bool? sunday = false;
  final _invitationCode = TextEditingController();
  List<bool?>? _weekArray;


  @override
  Widget build(BuildContext context) {

    _weekArray = <bool?> [monday, tuesday, wednesday, thursday, friday, saturday, sunday];

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 232, 232, 232),
        appBar: buildAppbar('C R E A R   H O R A R I O'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Column(
                  children: [
                    CustomTextField(
                        hint: 'Introduzca el nombre del horario',
                        label: 'Nombre',
                        controller: _name),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('HORA DE INICIO'),
                        DropdownMenu(
                          onSelected: (value) {
                            _initialHourValue = value!;
                          },
                          initialSelection: _initialHourValue,
                          dropdownMenuEntries:
                              _hours.map<DropdownMenuEntry<String>>((String value) {
                            return DropdownMenuEntry<String>(
                                value: value, label: value);
                          }).toList(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('HORA DE FIN'),
                        DropdownMenu(
                          onSelected: (value) {
                            _finalHourValue = value!;
                          },
                          initialSelection: _finalHourValue,
                          dropdownMenuEntries:
                              _hours.map<DropdownMenuEntry<String>>((String value) {
                            return DropdownMenuEntry<String>(
                                value: value, label: value);
                          }).toList(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('DURACIÓN DE LA CITA'),
                        DropdownMenu(
                          onSelected: (value) {
                            _frequencyValue = value!;
                          },
                          initialSelection: _frequencyValue,
                          dropdownMenuEntries:
                              _frequency.map<DropdownMenuEntry<String>>((String value) {
                            return DropdownMenuEntry<String>(
                                value: value, label: value);
                          }).toList(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Align(
                        alignment: Alignment.centerLeft, child: Text('DÍAS ACTIVOS')),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text('L'),
                            Checkbox(
                              value: monday,
                              activeColor: const Color.fromARGB(255, 151, 151, 151),
                              onChanged: (newBool) {
                                setState(() {
                                  monday = newBool;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text('M'),
                            Checkbox(
                              value: tuesday,
                              activeColor: const Color.fromARGB(255, 151, 151, 151),
                              onChanged: (newBool) {
                                setState(() {
                                  tuesday = newBool;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text('X'),
                            Checkbox(
                              value: wednesday,
                              activeColor: const Color.fromARGB(255, 151, 151, 151),
                              onChanged: (newBool) {
                                setState(() {
                                  wednesday = newBool;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text('J'),
                            Checkbox(
                              value: thursday,
                              activeColor: const Color.fromARGB(255, 151, 151, 151),
                              onChanged: (newBool) {
                                setState(() {
                                  thursday = newBool;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text('V'),
                            Checkbox(
                              value: friday,
                              activeColor: const Color.fromARGB(255, 151, 151, 151),
                              onChanged: (newBool) {
                                setState(() {
                                  friday = newBool;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text('S'),
                            Checkbox(
                              value: saturday,
                              activeColor: const Color.fromARGB(255, 151, 151, 151),
                              onChanged: (newBool) {
                                setState(() {
                                  saturday = newBool;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text('D'),
                            Checkbox(
                              value: sunday,
                              activeColor: const Color.fromARGB(255, 151, 151, 151),
                              onChanged: (newBool) {
                                setState(() {
                                  sunday = newBool;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomTextField(
                      hint: 'Ingresa el código de invitación',
                      label: 'Código de invitación',
                      controller: _invitationCode,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        label: 'CANCELAR',
                        onPressed: () => goBack(context),
                      ),
                      CustomButton(
                        label: 'ACEPTAR',
                        onPressed: _upload,
                        
                      ),
                    ],
                  ),
              )
            ],
          ),
        )
      );
  }
  
  goBack(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ViewSchedule()),
      );

  

  void _upload() async {
    await FirebaseFirestore.instance.collection('schedule').add({
      'name': _name.text,
      'email': FirebaseAuth.instance.currentUser?.email,
      'invitationCode': _invitationCode.text,
      'initialHour': _initialHourValue,
      'finalHour': _finalHourValue,
      'frequency': _frequencyValue,
      'availableDays': _weekArray,
    });
  }
}
