import 'package:flutter/material.dart';

class Job {
  final Color color;
  final Icon icon;
  final String name;
  final String company;
  final String location;
  final String skillSet;

  Job(
      {@required this.color,
      @required this.icon,
      @required this.name,
      @required this.location,
      @required this.company,
      @required this.skillSet});
}

class JobList {
  List<Job> _jobList = [
    Job(
        color: Colors.blue[50],
        icon: Icon(Icons.computer_outlined, size: 50, color: Colors.blue),
        name: 'UX Product Engineer',
        location: 'Chennai',
        company: 'HP',
        skillSet: 'Adobe Illustrator, Adobe XD'),
    Job(
        color: Colors.blueGrey[50],
        icon: Icon(Icons.design_services_rounded,
            size: 50, color: Colors.blueGrey),
        name: 'Product Designer',
        location: 'Delhi',
        company: 'Google',
        skillSet: 'PhotoShop, Adobe XD'),
    Job(
        color: Colors.amber[50],
        icon: Icon(Icons.build_circle, size: 50, color: Colors.amber),
        name: 'Senior UI/UX Designer',
        location: 'Banglore',
        company: 'Microsoft',
        skillSet: 'Illustrator, PhotoShop'),
    Job(
        color: Colors.green[50],
        icon:
            Icon(Icons.computer_outlined, size: 50, color: Colors.greenAccent),
        name: 'Graphic Designer',
        location: 'Noida',
        company: 'Dell',
        skillSet: 'Figma, Adobe Lightroom'),
    Job(
        color: Colors.red[50],
        icon: Icon(Icons.camera_enhance_sharp, size: 50, color: Colors.red),
        name: 'Creative Director',
        location: 'Gurugram',
        company: 'I-Pac',
        skillSet: 'Adobe XD, Adobe Illustrator'),
    Job(
        color: Colors.lightBlue[50],
        icon: Icon(Icons.photo, size: 50, color: Colors.lightBlueAccent),
        name: 'Product Designer',
        location: 'Lucknow',
        company: 'Zoho Corp.',
        skillSet: 'Adobe PhotoShop, Adobe XD'),
    Job(
        color: Colors.purple[50],
        icon: Icon(Icons.computer_outlined, size: 50, color: Colors.purple),
        name: 'UX Product Engineer',
        location: 'Chennai',
        company: 'HP',
        skillSet: 'Adobe Illustrator, Adobe XD'),
    Job(
        color: Colors.blueGrey[50],
        icon: Icon(Icons.design_services_rounded,
            size: 50, color: Colors.blueGrey),
        name: 'Product Designer',
        location: 'Delhi',
        company: 'Google',
        skillSet: 'PhotoShop, Adobe XD'),
    Job(
        color: Colors.amber[50],
        icon: Icon(Icons.build_circle, size: 50, color: Colors.amber),
        name: 'Senior UI/UX Designer',
        location: 'Banglore',
        company: 'Microsoft',
        skillSet: 'Illustrator, PhotoShop'),
    Job(
        color: Colors.pink[50],
        icon: Icon(Icons.computer_outlined, size: 50, color: Colors.pinkAccent),
        name: 'Graphic Designer',
        location: 'Noida',
        company: 'Dell',
        skillSet: 'Figma, Adobe Lightroom'),
    Job(
        color: Colors.lightGreen[50],
        icon: Icon(Icons.camera_enhance_sharp,
            size: 50, color: Colors.lightGreen),
        name: 'Creative Director',
        location: 'Gurugram',
        company: 'I-Pac',
        skillSet: 'Adobe XD, Adobe Illustrator'),
    Job(
        color: Colors.deepOrange[50],
        icon: Icon(Icons.photo, size: 50, color: Colors.deepOrangeAccent),
        name: 'Product Designer',
        location: 'Lucknow',
        company: 'Zoho Corp.',
        skillSet: 'Adobe PhotoShop, Adobe XD'),
  ];

  List<Job> get jobList {
    return [..._jobList];
  }
}
