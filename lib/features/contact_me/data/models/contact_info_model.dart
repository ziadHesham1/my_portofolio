// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ContactInfoModel extends Equatable {
  final String email;
  final String githubLink;
  final String linkedinLink;
  final String phoneNumber;
  final String resumeLink;
  final String telegramLink;
  final String whatsappLink;

  const ContactInfoModel({
    required this.email,
    required this.githubLink,
    required this.linkedinLink,
    required this.phoneNumber,
    required this.resumeLink,
    required this.telegramLink,
    required this.whatsappLink,
  });

  factory ContactInfoModel.fromJson(Map<String, dynamic> json) {
    return ContactInfoModel(
      email: json['email'] ?? '',
      githubLink: json['github_link'] ?? '',
      linkedinLink: json['linkedin_link'] ?? '',
      phoneNumber: json['phone_number'].toString(), // converting int to String
      resumeLink: json['resume_link'] ?? '',
      telegramLink: json['telegram_link'] ?? '',
      whatsappLink: json['whatsapp_link'] ?? '',
    );
  }

  factory ContactInfoModel.empty() => const ContactInfoModel(
        email: '',
        githubLink: '',
        linkedinLink: '',
        phoneNumber: '',
        resumeLink: '',
        telegramLink: '',
        whatsappLink: '',
      );

  @override
  List<Object> get props {
    return [
      email,
      githubLink,
      linkedinLink,
      phoneNumber,
      resumeLink,
      telegramLink,
      whatsappLink,
    ];
  }
}
