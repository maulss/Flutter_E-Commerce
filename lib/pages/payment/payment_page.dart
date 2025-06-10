import 'package:dio/dio.dart';
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
  bool _isWebViewLoading = true;
  bool _isPaymentProcessing = false;

  @override
  void initState() {
    super.initState();
    _initWebView();
  }

  void _initWebView() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            setState(() => _isWebViewLoading = progress < 100);
          },
          onPageFinished: (String url) {
            _controller.runJavaScript('''
            // 1. Coba menghapus elemen spesifik
            function removeLeaveText() {
              // Cari elemen yang persis mengandung teks "Leave this page"
              const xpath = "//*[text()='Leave this page']";
              const result = document.evaluate(xpath, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null);
              const element = result.singleNodeValue;

              if (element) {
                element.remove();
                JSMessage.postMessage('Found and removed leave text element');
              } else {
                JSMessage.postMessage('Leave text element not found');
              }
            }

            // 2. Alternatif: Sembunyikan parent element yang mungkin mengandung teks
            function hideParentContainer() {
              const elements = document.querySelectorAll('div, p, span');
              elements.forEach(el => {
                if (el.textContent && el.textContent.trim() === 'Leave this page') {
                  el.style.display = 'none';
                  JSMessage.postMessage('Found and hid leave text container');
                }
              });
            }

            // 3. Coba kedua metode dengan interval
            removeLeaveText();
            hideParentContainer();

            // Coba lagi setelah delay untuk konten dinamis
            setTimeout(removeLeaveText, 1000);
            setTimeout(hideParentContainer, 1000);
          ''');
          },
          onUrlChange: (UrlChange change) {
            if (change.url != null) _handleUrlChange(change.url!);
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.contains('payment_success') ||
                request.url.contains('status_code=200') ||
                request.url.contains('transaction_status=settlement')) {
              _startPaymentStatusPolling();
            }
            return NavigationDecision.prevent;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.paymentUrl));
  }

  void _handleUrlChange(String url) {
    if (_shouldStartPolling(url)) {
      _startPaymentStatusPolling();
    }
  }

  bool _shouldStartPolling(String url) {
    return url.contains('payment_success') ||
        url.contains('status_code=200') ||
        url.contains('transaction_status=settlement');
  }

  void _startPaymentStatusPolling() {
    if (_isPaymentProcessing) return;

    setState(() => _isPaymentProcessing = true);
    _pollPaymentStatus();
  }

  Future<void> _pollPaymentStatus() async {
    const maxAttempts = 100;
    const delay = Duration(seconds: 2);
    int attempts = 0;

    while (attempts < maxAttempts && mounted) {
      attempts++;
      debugPrint('Payment verification attempt $attempts');

      final isCompleted = await _checkPaymentAndBlockchainStatus();
      if (isCompleted) return;

      await Future.delayed(delay);
    }

    if (mounted) {
      setState(() => _isPaymentProcessing = false);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Verifikasi pembayaran timeout')),
      );
    }
  }

  Future<bool> _checkPaymentAndBlockchainStatus() async {
    try {
      final statusResponse = await ref.read(checkPaymentStatusProvider(
        orderId: widget.orderId,
        context: context,
      ).future);

      return true;
    } on DioException catch (e) {
      debugPrint('Dio error: ${e.message}');
      return false;
    } catch (e) {
      debugPrint('Error: $e');
      return false;
    }
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Pembayaran'),
  //       leading: IconButton(
  //         icon: const Icon(Icons.arrow_back),
  //         onPressed: () {
  //           Navigator.pop(context);
  //           Navigator.pop(context);
  //         },
  //       ),
  //       automaticallyImplyLeading: !_isPaymentProcessing,
  //     ),
  //     body: Stack(
  //       children: [
  //         WebViewWidget(controller: _controller),
  //         if (_isWebViewLoading || _isPaymentProcessing)
  //           const Center(
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 LoadingWidget(),
  //                 SizedBox(height: 16),
  //                 Text('Memverifikasi pembayaran ke blockchain...'),
  //               ],
  //             ),
  //           ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pembayaran'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: !_isPaymentProcessing,
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
          if ((_isWebViewLoading || _isPaymentProcessing) && !_isWebViewLoading)
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoadingWidget(),
                  SizedBox(height: 16),
                  Text('Memverifikasi pembayaran ke blockchain...'),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
