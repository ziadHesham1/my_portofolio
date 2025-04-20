part of 'contact_info_cubit.dart';
// part of 'product_cubit.dart';

enum ContactInfoStatus { init, updated, loaded, failed }

class ContactInfoState extends Equatable {
  final ContactInfoModel contactInfo;
  final ContactInfoStatus status;

  const ContactInfoState({
    required this.contactInfo,
    required this.status,
  });

  factory ContactInfoState.init() {
    return ContactInfoState(
      // to show loading items until data loads
      contactInfo: ContactInfoModel.empty(),
      status: ContactInfoStatus.init,
    );
  }

  ContactInfoState updateData(ContactInfoModel projectModel) {
    return _copyWith(
      contactInfoModel: projectModel,
      status: ContactInfoStatus.loaded,
    );
  }

  ContactInfoState updateStatus(ContactInfoStatus newStatus) {
    return _copyWith(
      status: newStatus,
    );
  }

  ContactInfoState _copyWith({
    ContactInfoModel? contactInfoModel,
    ContactInfoStatus? status,
  }) {
    return ContactInfoState(
      contactInfo: contactInfoModel ?? contactInfo,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [contactInfo, status];
}
