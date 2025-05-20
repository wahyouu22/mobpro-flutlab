import 'package:flutter/material.dart';

class FormMataKuliah extends StatefulWidget {
  const FormMataKuliah({Key? key}) : super(key: key);

  @override
  State<FormMataKuliah> createState() => _FormMataKuliahState();
}

class _FormMataKuliahState extends State<FormMataKuliah> {
  final _formKey = GlobalKey<FormState>();
  final _mataKuliahController = TextEditingController();
  final _sksController = TextEditingController();
  final _semesterController = TextEditingController();

  String? mataKuliah;
  int? sks;
  String? semester;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        mataKuliah = _mataKuliahController.text;
        sks = int.parse(_sksController.text);
        semester = _semesterController.text;
      });
    }
  }

  @override
  void dispose() {
    _mataKuliahController.dispose();
    _sksController.dispose();
    _semesterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Mata Kuliah')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _mataKuliahController,
                    decoration: const InputDecoration(labelText: 'Mata Kuliah'),
                    validator: (value) =>
                        value == null || value.isEmpty ? 'Wajib diisi' : null,
                  ),
                  TextFormField(
                    controller: _sksController,
                    decoration: const InputDecoration(labelText: 'SKS'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) return 'Wajib diisi';
                      if (int.tryParse(value) == null) return 'Harus angka';
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _semesterController,
                    decoration: const InputDecoration(labelText: 'Semester'),
                    validator: (value) =>
                        value == null || value.isEmpty ? 'Wajib diisi' : null,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: const Text('Simpan'),
                  ),
                ],
              ),
            ),
            if (mataKuliah != null && sks != null && semester != null) ...[
              const Divider(height: 40),
              const Text(
                'Detail Mata Kuliah:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Mata Kuliah: $mataKuliah'),
              Text('SKS: $sks'),
              Text('Semester: $semester'),
            ],
          ],
        ),
      ),
    );
  }
}
