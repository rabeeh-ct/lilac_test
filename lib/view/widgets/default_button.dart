import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lilac_test/view/theme/colors.dart';

class DefaultButton extends ConsumerWidget {
  const DefaultButton({super.key, required this.onPressed, required this.text});

  final AsyncCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buttonLoading = ref.watch(buttonLoadingProvider);
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
              onPressed: () async {
               final notifier = ref.read(buttonLoadingProvider.notifier);
                notifier.state = const AsyncLoading();
                try {
                  await onPressed();
                  notifier.state = const AsyncData(null);
                } catch (e) {
                  notifier.state = const AsyncData(null);
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(60),
                backgroundColor: primaryColor,
                foregroundColor: whiteColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: buttonLoading.when(
                data: (data) => Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                error: (error, stackTrace) => Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              )),
        ),
      ],
    );
  }
}

final buttonLoadingProvider = StateProvider<AsyncValue>((ref) {
  return const AsyncData(null);
});
