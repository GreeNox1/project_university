import 'dart:convert';

List<University> universityFromJsonData(String data)
=> List<University>.from(jsonDecode(data).map((e)
=> University.fromJson(e)));

class University{

  late String courseCode;
  late String courseName;
  late int credits;
  late String department;
  late List<Instructors> instructors;
  late List<TextBooks> textbooks;
  late Schedule schedule;

  University.fromJson(Map<String, dynamic> json){
    courseCode = json["courseCode"];
    courseName = json["courseName"];
    credits = json["credits"];
    department = json["department"];
    instructors = List<Instructors>.from(json["instructors"].map((e) => Instructors.fromJson(e)));
    schedule = Schedule.fromJson(json["schedule"]);
    textbooks = List<TextBooks>.from(json["textbooks"].map((e) => TextBooks.fromJson(e)));
  }

  @override
  String toString() {
    return "Course Code: $courseCode \nCourse Name: $courseName \nCredits: $credits \nDepartment: $department \nInstructors: \n$instructors \nText Books: \n$textbooks";
  }

}

class Schedule{

  late List<String> days;
  late String time;

  Schedule.fromJson(Map<String, dynamic> json){
    days = List<String>.from(json["days"].map((e) => e.toString()));
    time = json["time"];
  }

  @override
  String toString() {
    return "\tDays: $days \n\tTime: $time";
  }

}

class Enrollment{

  late int currentStudents;
  late int capacity;

  Enrollment.fromJson(Map<String, dynamic> json){
    currentStudents = json["currentStudents"];
    capacity = json["capacity"];
  }

  @override
  String toString() {
    return "\tCurrent Students: $currentStudents \n\tCapacity: $capacity";
  }
}

class Instructors{

  late String name;
  late String office;
  late String email;

  Instructors.fromJson(Map<String, dynamic> json){
    name = json["name"];
    office = json["office"];
    email = json["email"];
  }

  @override
  String toString() {
    return "\n\t{\n\t\tName: $name \n\t\tOffice: $office \n\t\tEmail: $email\n\t}\n";
  }

}

class TextBooks{

  late String title;
  late String author;
  late String isbn;

  TextBooks.fromJson(Map<String, dynamic> json){
    title = json["title"];
    author = json["author"];
    isbn = json["isbn"];
  }

  @override
  String toString() {
    return "\n\t{\n\t\tTitle: $title \n\t\tAuthor: $author \n\t\tIsbn: $isbn\n\t}\n";
  }

}