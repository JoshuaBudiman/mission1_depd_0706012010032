part of 'pages.dart';

class bookingPage extends StatefulWidget {
  const bookingPage({super.key});
  static const String routeName = '/bookingpage';
  @override
  State<bookingPage> createState() => _bookingPageState();
}

class _bookingPageState extends State<bookingPage> {
  @override
  void initState() {
    super.initState();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlName = TextEditingController();
  final ctrlNumber = TextEditingController();
  final ctrlAddress = TextEditingController();

  @override
  void dispose() {
    ctrlEmail.dispose();
    ctrlName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Form"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Form(
            key: _loginKey,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                  controller: ctrlName,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length <= 0
                        ? 'Name must not be empty!'
                        : null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                  ),
                  controller: ctrlEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return !EmailValidator.validate(value.toString())
                        ? 'Email tidak valid'
                        : null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: Icon(Icons.phone),
                  ),
                  controller: ctrlNumber,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length <= 0
                        ? 'Phone number must not be empty!'
                        : null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "City",
                    prefixIcon: Icon(Icons.location_city),
                  ),
                  controller: ctrlAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length <= 0
                        ? 'City must not be empty!'
                        : null;
                  },
                ),
                SizedBox(
                  height: 32,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    if (_loginKey.currentState!.validate()) {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Booking Confirmation'),
                          content: Container(
                            height: 300,
                            child: Column(
                              
                              children: [

                                Text('Name: ' + ctrlName.text.toString()),
                                Text('Email: ' + ctrlEmail.text.toString()),
                                Text('Phone Number: ' +
                                    ctrlNumber.text.toString()),
                                Text('City: ' + ctrlAddress.text.toString())
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pushReplacementNamed(context, HomePage.routeName),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    } else {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Booking Failed'),
                          content: Row(
                            children: [
                              Text('Please fill all the form fields'),
                            ],
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  icon: Icon(Icons.save),
                  label: Text("Book Now"),
                )
              ],
            )),
      ),
    );
  }
}
