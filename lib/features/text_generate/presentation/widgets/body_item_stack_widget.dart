import 'package:asaalne/config/themes/app_text_styles.dart';
import 'package:asaalne/features/text_generate/presentation/cubit/text_generate_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyItemStackWidget extends StatelessWidget {
  const BodyItemStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sh,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 100).r,
        child: SingleChildScrollView(
          child: BlocBuilder<TextGenerateCubit, TextGenerateState>(
            builder: (context, state) {
              if (state is TextGenerateInitial) {
                return const Text('Hiii');
              } else if (state is TextGenerateLoading) {
                return const CircularProgressIndicator();
              } else if (state is TextGenerateLoaded) {
                return SelectableText(
                  state.textGenerate,
                  style: AppTextStyles.font20BlackMedium,
                );
              } else if (state is TextGenerateError) {
                return Text(
                  state.errorMessage,
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
