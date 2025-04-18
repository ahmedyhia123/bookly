import 'package:equatable/equatable.dart';

class Pdf extends Equatable {
  final bool? isAvailable;
  final String? acsTokenLink;

  const Pdf({this.isAvailable, this.acsTokenLink});

  factory Pdf.fromJson(Map<String, dynamic> json) => Pdf(
    isAvailable: json['isAvailable'] as bool?,
    acsTokenLink: json['acsTokenLink'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'isAvailable': isAvailable,
    'acsTokenLink': acsTokenLink,
  };

  Pdf copyWith({bool? isAvailable, String? acsTokenLink}) {
    return Pdf(
      isAvailable: isAvailable ?? this.isAvailable,
      acsTokenLink: acsTokenLink ?? this.acsTokenLink,
    );
  }

  @override
  List<Object?> get props => [isAvailable, acsTokenLink];
}
