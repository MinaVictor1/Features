import 'package:counter_app/View/Widgets/customButton.dart';
import 'package:counter_app/bloc/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterCubit cubit = CounterCubit.get(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            // Retrieve the cubit using context
            return Text(
              cubit.counter.toString(),
              style:
                  const TextStyle(fontSize: 120, fontWeight: FontWeight.bold),
            );
          },
        ),
        const SizedBox(
          height: 120,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomButton(
              iconData: Icons.plus_one,
              onPressed: cubit.increase,
            ),
            CustomButton(
              iconData: Icons.exposure_minus_1,
              onPressed: cubit.decrease,
            ),
          ],
        )
      ],
    );
  }
}
