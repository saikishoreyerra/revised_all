// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';

// void main() {
//   runApp(School());
// }

// class School extends StatelessWidget {
//   const School({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Teacher(),
//     );
//   }
// }

// class Teacher extends StatefulWidget {
//   Teacher({super.key});

//   @override
//   State<Teacher> createState() => _StateTeacher();
// }

// class _StateTeacher extends State<Teacher> {
//   int securedScore = 0;
//   int totalScore = 500;
//   double percentage = 0;
//   List<Student> stDetailsArr = [
//     Student(
//       stIdNo: "A101",
//       stName: "Ramanujan",
//       stMarks: Marks(english: 65, maths: 59, science: 68, social: 74, gK: 91),
//     ),
//     Student(
//       stIdNo: "A102",
//       stName: "Kalavathi",
//       stMarks: Marks(english: 67, maths: 62, science: 69, social: 58, gK: 92),
//     ),
//     Student(
//       stIdNo: "A103",
//       stName: "Elon Musk",
//       stMarks: Marks(english: 75, maths: 53, science: 57, social: 79, gK: 74),
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.grey[300],
//           title: Text(
//             "Student Reports",
//             style: TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//             ),
//           ),
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Exam Marks of Students in Mid term",
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.amber[400],
//               ),
//             ),
//             Container(
//               height: 250,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(25),
//                   color: Colors.blue[100]),
//               child: ListView.builder(
//                 physics: PageScrollPhysics(),
//                 scrollDirection: Axis.horizontal,
//                 itemCount: stDetailsArr.length,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       securedScore = stDetailsArr[index].stMarks.gK +
//                           stDetailsArr[index].stMarks.english +
//                           stDetailsArr[index].stMarks.maths +
//                           stDetailsArr[index].stMarks.science +
//                           stDetailsArr[index].stMarks.social;
//                       percentage = securedScore / totalScore * 100;
//                       print("Total Score=${securedScore}");
//                       print("Percentage=${percentage}");
//                       setState(() {});
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         width: MediaQuery.of(context).size.width * 0.96,
//                         decoration: BoxDecoration(
//                             color: Colors.amber,
//                             borderRadius: BorderRadius.circular(20)),
//                         child: StudentText(
//                           studentID: "Student Id:${stDetailsArr[index].stIdNo}",
//                           studentName:
//                               "Student Name: ${stDetailsArr[index].stName}",
//                           studentMarks: stDetailsArr[index].stMarks,
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.25,
//             ),
//             Center(
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.blue),
//                 child: Column(
//                   children: [
//                     Text(
//                       "Total Score : ${securedScore.toString()}",
//                       style: TextStyle(fontSize: 35),
//                     ),
//                     Text(
//                       "Percentage :${percentage.toStringAsFixed(2)} ",
//                       style: TextStyle(fontSize: 35),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Student {
//   final String stName;
//   final String stIdNo;
//   final Marks stMarks;

//   Student({required this.stIdNo, required this.stName, required this.stMarks});
// }

// class Marks {
//   final int english;
//   final int science;
//   final int maths;
//   final int social;
//   final int gK;

//   Marks({
//     required this.english,
//     required this.maths,
//     required this.science,
//     required this.social,
//     required this.gK,
//   });
// }

// class StudentText extends StatelessWidget {
//   StudentText(
//       {super.key,
//       required this.studentID,
//       required this.studentName,
//       required this.studentMarks});

//   final String studentID;
//   final String studentName;
//   final Marks studentMarks;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           studentID,
//           style: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.w300, color: Colors.brown),
//         ),
//         Text(
//           studentName,
//           style: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.w300, color: Colors.brown),
//         ),
//         Text(
//           "English: ${studentMarks.english}",
//           style: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.w300, color: Colors.brown),
//         ),
//         Text(
//           "GK: ${studentMarks.gK}",
//           style: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.w300, color: Colors.brown),
//         ),
//         Text(
//           "Maths: ${studentMarks.maths}",
//           style: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.w300, color: Colors.brown),
//         ),
//         Text(
//           "Science: ${studentMarks.science}",
//           style: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.w300, color: Colors.brown),
//         ),
//         Text(
//           "Social: ${studentMarks.social}",
//           style: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.w300, color: Colors.brown),
//         ),
//       ],
//     );
//   }
// }

/*-----------------------------------------------------------------------------------------------------------------*/

// import 'dart:convert';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(Todo());
// }

// class Todo extends StatelessWidget {
//   Todo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: TodoList(),
//     );
//   }
// }

// class TodoList extends StatefulWidget {
//   TodoList({super.key});

//   @override
//   State<TodoList> createState() => _TodoListState();
// }

// class _TodoListState extends State<TodoList> {
//   List<TodoCheckBox> toDoArr = [];
//   TextEditingController titleController = TextEditingController();
//   TextEditingController descController = TextEditingController();

//   @override
//   void dispose() {
//     titleController.dispose();
//     descController.dispose();
//     // TODO: implement dispose
//     super.dispose();
//   }

//   @override
//   void initState() {
//     retrieveTodoData();
//     super.initState();
//   }

//   retrieveTodoData(
//       {bool? isDeleteOperation, TodoCheckBox? tobeDeleteItem}) async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     String? retrievedArrayString = pref.getString('TodoArrayKey');

//     if (retrievedArrayString != null) {
//       List<dynamic> todoRawList = json.decode(retrievedArrayString) as List;

//       List<TodoCheckBox> todoArrayList =
//           todoRawList.map((object) => TodoCheckBox.fromJson(object)).toList();
//       toDoArr.clear();
//       if (isDeleteOperation != null && isDeleteOperation == true) {
//         todoArrayList.remove(tobeDeleteItem);
//       }
//       toDoArr.addAll(todoArrayList);
//       setState(() {});
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (context) {
//                 return AlertDialog(
//                   title: Column(
//                     children: [
//                       TextField(
//                         controller: titleController,
//                         decoration: InputDecoration(
//                           hintText: "Enter Text",
//                           hintStyle: TextStyle(
//                               fontSize: 20, fontWeight: FontWeight.w300),
//                         ),
//                       ),
//                       TextField(
//                         controller: descController,
//                         decoration: InputDecoration(
//                           hintText: "Enter Description",
//                           hintStyle: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.w400,
//                               color: Colors.grey),
//                         ),
//                       ),
//                     ],
//                   ),
//                   actions: [
//                     TextButton(
//                       onPressed: () {
//                         return Navigator.of(context).pop();
//                       },
//                       child: Text(
//                         "Cancel",
//                         style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.w300,
//                             backgroundColor: Colors.white10),
//                       ),
//                     ),
//                     GestureDetector(
//                       //new topic
//                       onTap: () async {
//                         toDoArr.add(TodoCheckBox(
//                             titleName: titleController.text,
//                             descText: descController.text));
//                         print(toDoArr);
//                         setState(() {});
//                         String toDoArrConvertedString = json.encode(
//                             toDoArr.map((object) => object.toJson()).toList());

//                         // SharedPreferences pref = await SharedPreferences.getInstance();
//                         // pref.setString('TodoArrayKey', toDoArrConvertedString);

//                         SharedPreferences prefs = await SharedPreferences.getInstance();
//                         prefs.setString( , )

//                         Navigator.of(context).pop();
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(25),
//                             color: Colors.amber),
//                         child: const Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text(
//                             'Add',
//                             style: TextStyle(fontSize: 20, color: Colors.blue),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             );
//           },
//         ),
//         appBar: AppBar(
//           backgroundColor: Color.fromARGB(206, 209, 138, 171),
//           title: Text(
//             "Todo",
//             style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromARGB(255, 102, 92, 64)),
//           ),
//         ),
//         body: toDoArr.isEmpty
//             ? Center(
//                 child: Text('Add todo list'),
//               )
//             : ListView.builder(
//                 itemCount: toDoArr.length,
//                 itemBuilder: ((context, index) {
//                   return Padding(
//                     padding:
//                         const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
//                     child: Container(
//                       height: MediaQuery.of(context).size.height * 0.1,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(23),
//                           color: Colors.blue[100]),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               setState(
//                                 () {
//                                   toDoArr[index].isChecked =
//                                       !(toDoArr[index].isChecked ?? false);
//                                   setState(() {});
//                                 },
//                               );
//                             },
//                             child: (toDoArr[index].isChecked != null &&
//                                     toDoArr[index].isChecked == true)
//                                 ? Icon(Icons.check_box)
//                                 : Icon(Icons.check_box_outline_blank),
//                           ),
//                           // SizedBox(width: MediaQuery.of(context).size.width* 0.05),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 toDoArr[index].titleName,
//                                 style: TextStyle(
//                                     fontSize: 26,
//                                     fontWeight: FontWeight.w500,
//                                     color: Colors.brown),
//                               ),
//                               Text(
//                                 toDoArr[index].descText,
//                                 style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w500,
//                                     color: Colors.grey),
//                               ),
//                             ],
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               retrieveTodoData(
//                                   isDeleteOperation: true,
//                                   tobeDeleteItem: toDoArr[index]);
//                               toDoArr.removeAt(index);
//                             },
//                             child: Icon(
//                               Icons.delete,
//                               color: Colors.amber[700],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   );
//                 }),
//               ),
//       ),
//     );
//   }
// }

// class TodoCheckBox {
//   final String titleName;
//   final String descText;
//   bool? isChecked;

//   TodoCheckBox(
//       {required this.titleName, required this.descText, this.isChecked});

//   // Convert Task object to a Map for serialization
//   Map<String, dynamic> toJson() {
//     return {
//       'titleName': titleName,
//       'descText': descText,
//       'isChecked': isChecked
//     };
//   }

//   // Create Task object from a Map for deserialization
//   factory TodoCheckBox.fromJson(Map<String, dynamic> json) {
//     return TodoCheckBox(
//         titleName: json['titleName'],
//         descText: json['descText'],
//         isChecked: json['isChecked']);
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( MyApp());
 
 
//  print(7%4);
//  print("hello world");
//  print(9==9);
//  print(9!=9);

 }

class MyApp extends StatelessWidget{
   MyApp ({super.key});
  List<Drop> dropArr=[
    Drop(nameTxt: ["ram","Rice"], price: 278)
  ];
  int age = 18;
  bool isBegineer=true;
  int a = 3;
  int b = 5;
  double h=47.4;
  String name='Kishore';
  

  @override
  
  Widget build(BuildContext context) {
    print(dropArr);
    print(h+(a+b*b));
    print(!isBegineer || age<18) ;
    print('Hey Darling ${name}');


    if(age<18 || isBegineer==false){
      print("Not eligible to vote");
    }
    else if(age>18 && isBegineer==true){
      print("${name} your eligble to vote");
    }
    else{
      print("Apply for vote card");
    }

    String grade="B";
    if(grade=='A'){
print('Excellent');
    }else if(grade=='B'){
      print('Good');
    }else if(grade=='C'){
      print('Average');
    }

    switch (grade) {
      case 'A':
      print("Excellent!!");
         break;
      case 'B':
      print("Good!!");
         break;
      case 'C':
      print("Average!!");
         break;
      case 'D':
      print("Need Improvement!!");
         break;

      default:
      print('Invalid Grade...!!');
    }

    String day='5';
    switch (day) {
      case '1':
      print("Sunday");
         break;
      case '2':
      print("Monday");
         break;
      case '3':
      print("Tuesday");
         break;
      case '4':
      print("Wednesday");
         break;
      case '5':
      print("Thursday");
         break;
      case '6':
      print("Friday");
         break;
      case '7':
      print("Saturday");
         break;

      default:
      print('Invalid Day...!!');
    }


   return MaterialApp(debugShowCheckedModeBanner: false,
  );
  }
}

// class Rain extends StatefulWidget {
//   const Rain({super.key});

//   @override
//   State<Rain> createState() => _RainState();
// }

// class _RainState extends State<Rain> {

 


//   @override
  
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//       body: Center(child: Text('Hello Everyone'),),
//     ));
//   }

//   //   void price(){
//   //   print(dropArr.toString());
//   // }
 
// }

class Drop{
  List<String> nameTxt=[];
  int price;

  Drop({required this.nameTxt,required this.price});
}