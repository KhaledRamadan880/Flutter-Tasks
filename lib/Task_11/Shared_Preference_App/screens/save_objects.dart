import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveObjects extends StatefulWidget {
  const SaveObjects({super.key});

  @override
  State<SaveObjects> createState() => _SaveObjectsState();
}

class _SaveObjectsState extends State<SaveObjects> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  late String name = '';
  late String age = '';
  late String location = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Save Objects in SharedPreferences'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              //! Name TextField
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Name',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //! Age TextField
              TextField(
                controller: ageController,
                decoration: const InputDecoration(
                  hintText: 'Age',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //! Location TextField
              TextField(
                controller: locationController,
                decoration: const InputDecoration(
                  hintText: 'Location',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              //! Buttons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //! Save Button
                  ElevatedButton(
                      onPressed: () async {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Save!')),
                        );
                        final data = await SharedPreferences.getInstance();
                        data.setString('name', nameController.text);
                        data.setString('age', ageController.text);
                        data.setString('location', locationController.text);
                      },
                      child: const Text('Save')),
                  const SizedBox(width: 20),
                  //! Load Button
                  ElevatedButton(
                      onPressed: () async {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('loaded!')),
                        );
                        final data = await SharedPreferences.getInstance();
                        setState(() {
                          name = data.getString('name')!;
                          age = data.getString('age')!;
                          location = data.getString('location')!;
                        });
                      },
                      child: const Text('Load')),
                  const SizedBox(width: 20),
                  //! Clear Button
                  ElevatedButton(
                      onPressed: () async {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Cleared!')),
                        );
                        setState(() {
                          name = age = location = '';
                        });
                      },
                      child: const Text('Clear')),
                ],
              ),
              const SizedBox(height: 40),
              //! Show Data Container
              Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name: $name'),
                      const SizedBox(height: 20),
                      Text('Age: $age'),
                      const SizedBox(height: 20),
                      Text('Location: $location'),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
