import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  void displayAlert(BuildContext context, Map<String, String> formValues) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Datos Ingresados'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Nombre: ${formValues['first_name'].toString()}'),
              Text('Apellido: ${formValues['last_name'].toString()}'),
              Text('Email: ${formValues['email'].toString()}'),
              Text('Rol: ${formValues['role'].toString()}'),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Ok',
              ),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Fernando',
      'last_name': 'Herrera',
      'email': 'fernando@google.com',
      'password': 'fernando@google.com',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        //controller: controller,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  helperText: '',
                  suffixIcon: Icons.yard,
                  icon: Icons.supervised_user_circle,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                  helperText: '',
                  suffixIcon: Icons.near_me,
                  icon: Icons.supervised_user_circle,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo del usuario',
                  helperText: '',
                  suffixIcon: Icons.email,
                  icon: Icons.alternate_email_outlined,
                  inputType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del usuario',
                  helperText: '',
                  suffixIcon: Icons.emergency_rounded,
                  icon: Icons.security_rounded,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 15,
                ),
                DropdownButtonFormField<String>(
                  value: 'Admin',
                  isExpanded: true,
                  hint: const Text('Rol'),
                  validator: (value) {
                    if (value == null) return 'Este campo es requerido';
                    return value.length < 3
                        ? 'Se debe de seleccionar uno'
                        : null;
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'Superuser',
                      child: Text('Superuser'),
                    ),
                    DropdownMenuItem(
                      value: 'Developer',
                      child: Text('Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'Jr. Developer',
                      child: Text('Jr. Developer'),
                    ),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    //Codigo para esconder el teclado
                    FocusScope.of(context).requestFocus(FocusNode());

                    //Codigo para lanzar las diferentes validaciones
                    if (!myFormKey.currentState!.validate()) {
                      return;
                    }
                    displayAlert(context, formValues);
                    // Imprimir valores del formulario
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
