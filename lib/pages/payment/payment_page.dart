import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/providers/payment/payment_provider.dart';
import 'package:flutter_ecommerce/widget/loading_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentPage extends ConsumerStatefulWidget {
  final String paymentUrl;
  final String orderId;
  const PaymentPage({Key? key, required this.orderId, required this.paymentUrl})
      : super(key: key);

  @override
  ConsumerState<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends ConsumerState<PaymentPage> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            setState(() {
              _isLoading = progress < 100;
            });
          },
          onUrlChange: (UrlChange change) {
            if (change.url != null) {
              _handleUrlChange(change.url!);
            }
          },
          onNavigationRequest: (NavigationRequest request) {
            return _handleNavigation(request.url);
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.paymentUrl));
  }

  NavigationDecision _handleNavigation(String url) {
    if (url.contains('payment_success')) {
      _checkPaymentStatus();
      return NavigationDecision.prevent;
    }
    return NavigationDecision.navigate;
  }

  void _handleUrlChange(String url) {
    if (url.contains('payment_success') ||
        url.contains('status_code=200') ||
        url.contains('transaction_status=settlement')) {
      _checkPaymentStatus();
    }
  }

  Future<void> _checkPaymentStatus() async {
    try {
      debugPrint('Calling checkPaymentStatus with orderId: ${widget.orderId}');
      await ref.read(checkPaymentStatusProvider(
        orderId: widget.orderId,
        context: context,
      ).future);
    } catch (e) {
      // Handle error jika diperlukan
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: const Text('Pembayaran'),
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
          if (_isLoading)
            const Center(
              child: LoadingWidget(),
            ),
        ],
      ),
    );
  }
}
