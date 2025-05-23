import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pop_qr/view/qr_code_library/component/add_qr_bottom_sheet/add_qr_bottom_sheet.dart';
import 'package:pop_qr/view/qr_code_library/component/floating_action_button.dart';
import 'package:pop_qr/view/qr_code_library/component/qr_item_card.dart';
import 'package:pop_qr/view/sub_view/error_view.dart';

import '../../provider/qr_items_provider.dart';

class QRCodeLibrary extends HookConsumerWidget {
  const QRCodeLibrary({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qrItemsAsync = ref.watch(qrItemsProvider);

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('マイQRコード'),
        backgroundColor: CupertinoColors.systemBackground,
        border: Border(
          bottom: BorderSide(color: CupertinoColors.separator, width: 0.0),
        ),
      ),
      backgroundColor: CupertinoColors.systemBackground,
      child: SafeArea(
        child: Stack(
          children: [
            qrItemsAsync.when(
              data: (qrItems) {
                if (qrItems.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          CupertinoIcons.qrcode,
                          size: 32,
                          color: CupertinoColors.secondaryLabel,
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'QRコードが登録されていません',
                          style: TextStyle(
                            color: CupertinoColors.secondaryLabel,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 8),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => _showAddQrBottomSheet(context, ref),
                          child: const Text('QRコードを追加'),
                        ),
                      ],
                    ),
                  );
                }

                return GridView.builder(
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: qrItems.length,
                  itemBuilder: (context, index) {
                    final item = qrItems[index];
                    return QRItemCard(
                      key: ValueKey<String>(item.id),
                      item: item,
                      index: index,
                    );
                  },
                );
              },
              loading: () => const Center(child: CupertinoActivityIndicator()),
              error: (error, stackTrace) {
                // エラー内容をデバッグモードでのみ出力
                debugPrint('エラーが発生しました: $error');
                debugPrint('Stack trace: $stackTrace');

                return ErrorView(
                  errorMessage: error.toString(),
                  showDetails: false,
                  onRetry: () {
                    // データの再読み込みを実行
                    ref.invalidate(qrItemsProvider);
                  },
                );
              },
            ),
            Positioned(
              right: 16,
              bottom: 16,
              child: FloatingActionButton(
                onTap: () => _showAddQrBottomSheet(context, ref),
                icon: CupertinoIcons.add,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAddQrBottomSheet(BuildContext context, WidgetRef ref) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => const AddQrBottomSheet(),
    );
  }
}
