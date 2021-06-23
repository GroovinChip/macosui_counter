import 'package:flutter/material.dart';
import 'package:macosui_counter/state/counter_bloc.dart';
import 'package:macosui_counter/ui/widgets/counter_text.dart';
import 'package:provider/provider.dart';

class CounterOutput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: Provider.of<CounterBloc>(context).counterSubject,
      initialData: Provider.of<CounterBloc>(context).counterSubject.value,
      builder: (context, snapshot) {
        return CounterText(
          count: snapshot.data!,
        );
      },
    );
  }
}
