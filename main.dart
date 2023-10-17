class NGOPostAddPage extends ConsumerStatefulWidget {
const NGOPostAddPage({super.key});
static const String routeName = '/NGOPostAddPage';
@override
ConsumerState<NGOPostAddPage> createState() => _NGOPostAddPageState();
}
class _NGOPostAddPageState extends ConsumerState<NGOPostAddPage> {
@override
void dispose() {
super.dispose();
}
TextEditingController postTextEditingController = TextEditingController();
PlatformFile? file;
DateTime selectedDate = DateTime.now();
void cameraOnPressed() async {
file = await pickImage();
setState(() {});
}

@override
Widget build(BuildContext context) {                
child: Scaffold(
                                                       10

key: Keys.scaffoldKey,
body: SizedBox(
height: MediaQuery.of(context).size.height,
child: SingleChildScrollView(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const SizedBox(
height: 15,
),
Container(
padding: const EdgeInsets.only(left: 15, right: 15),
child: Row(
children: [
IconButton(
onPressed: () => SchedulerBinding.instance
.addPostFrameCallback((_) {
Navigator.of(Keys.scaffoldKey.currentContext!)
.pushNamedAndRemoveUntil(fontWeight: FontWeight.bold,
fontSize: 17),
),
),
],
)),
Padding(
padding:
const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                                          11
controller: postTextEditingController,
decoration: const InputDecoration(
hintText: 'What do you want to talk about?',
hintStyle: TextStyle(fontSize: 20),
focusedBorder: InputBorder.none,
enabledBorder: InputBorder.none,
errorBorder: InputBorder.none),
style: const TextStyle(fontSize: 20),
autofocus: false,
maxLines: null,
keyboardType: TextInputType.text,
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



