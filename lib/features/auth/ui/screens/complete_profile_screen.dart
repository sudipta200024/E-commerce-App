import 'package:ecommerce/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  static const String name = '/complete-profile';

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _cityTEController = TextEditingController();
  final TextEditingController _shippingAddressTEController =
      TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            child: Column(
              key: _formKey,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const AppLogoWidget(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Complete Profile',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'Let get started with us with your details',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 24,
                ),
                _buildForm(),
                ElevatedButton(
                  onPressed: () {
                    // if(_formKey.currentState!.validate()){}
                  },
                  child: const Text('Complete'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
              controller: _firstNameTEController,
              decoration: const InputDecoration(
                hintText: 'First Name',
              ),
              keyboardType: TextInputType.name,
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return "Enter valid first name";
                }
                return null;
              }),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _lastNameTEController,
              decoration: const InputDecoration(
                hintText: 'Last Name',
              ),
              keyboardType: TextInputType.name,
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return "Enter valid last name";
                }
                return null;
              }),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _mobileTEController,
              decoration: const InputDecoration(
                hintText: 'Mobile',
              ),
              keyboardType: TextInputType.number,
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return "Enter valid mobile number";
                }
                return null;
              }),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _cityTEController,
              decoration: const InputDecoration(
                hintText: 'City',
              ),
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return "Enter valid city";
                }
                return null;
              }),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _shippingAddressTEController,
            maxLines: 3,
            decoration: const InputDecoration(
              hintText: 'Shipping address',
            ),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return "Enter valid shipping address";
              }
              return null;
            },
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _cityTEController.dispose();
    _shippingAddressTEController.dispose();

    super.dispose();
  }
}
