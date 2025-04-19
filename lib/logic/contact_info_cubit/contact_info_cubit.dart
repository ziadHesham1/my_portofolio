import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_portfolio/common/features/loading/data/repo/loading_repo.dart';
import 'package:my_portfolio/data/models/contact_info_model.dart';
import 'package:my_portfolio/data/repository/contact_info_repository.dart';

part 'contact_info_state.dart';

class ContactInfoCubit extends Cubit<ContactInfoState> {
  final ContactInfoRepository _contactInfoRepository;
  final LoadingRepository _loadingRepository;
  ContactInfoCubit(
    ContactInfoRepository contactInfoRepository,
    LoadingRepository loadingRepository,
  )   : _contactInfoRepository = contactInfoRepository,
        _loadingRepository = loadingRepository,
        super(ContactInfoState.init());

  getContactInfo() async {
    _loadingRepository.loadingStarted();
    emit(ContactInfoState.init());
    ContactInfoModel contactInfo =
        await _contactInfoRepository.getContactInfo();
    await Future.delayed(const Duration(seconds: 1));

    emit(state.updateData(contactInfo));
    _loadingRepository.loadingFinished();
  }
}
