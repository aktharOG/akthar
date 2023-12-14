import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class OnboardingModel {

    
    final String overviewTitle;
    final String title;
    final String title2;
    final String descreption;
    final String icon;
  OnboardingModel({
    required this.overviewTitle,
    required this.title,
    required this.title2,
    required this.descreption,
    required this.icon,
  });
    

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overviewTitle': overviewTitle,
      'title': title,
      'title2':title2,
      'descreption': descreption,
      'icon': icon,
    };
  }

  factory OnboardingModel.fromMap(Map<String, dynamic> map) {
    return OnboardingModel(
      overviewTitle: map['overviewTitle'] as String,
      title: map['title'] as String,
      title2:map['title2'] as String,
      descreption: map['descreption'] as String,
      icon: map['icon'] as String,

    );
  }

  String toJson() => json.encode(toMap());

  factory OnboardingModel.fromJson(String source) => OnboardingModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
