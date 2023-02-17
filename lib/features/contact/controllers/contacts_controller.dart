import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:not_whatsapp_lol/features/contact/repository/contacts_repository.dart';

final contactControllerProvider = FutureProvider((ref) {
  final contactRepository = ref.watch(contactsRepositoryProvider);
  return contactRepository.getAllContacts();
});
