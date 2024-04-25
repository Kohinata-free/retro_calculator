import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  final home = Home();
  // 次のページ用
  // final pageNext = PageNext();
  final app = MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => home,
      // 次のページ用
      // '/page_next': (context) => pageNext,
    },
  );

  final scopeApp = ProviderScope(child: app);

  runApp(scopeApp);
}

class Home extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("レトロ計算機"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Text('計算結果'),
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    color: Colors.red,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text('数値ボタン'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text('計算ボタン'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text('オプション'),
            ),
          ),
        ],
      ),
    );
  }
}
