import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/counter_viewmodel.dart';

class CounterProviderSampleApp extends StatelessWidget {
  CounterProviderSampleApp({Key? key}) : super(key: key);

  final viewModel = CounterViewModel();                 //뷰모델 객체 선언

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CounterViewModel>();        //watch() 추가

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider 적용 카운터 앱'),
      ),
      body: Center(
        child: Text('${viewModel.count}',
          style: Theme.of(context).textTheme.headline2,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.increment();                        //뷰모델 호출
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
    );
  }
}
