import 'package:asaalne/config/themes/app_colors.dart';
import 'package:asaalne/features/text_generate/presentation/cubit/text_generate_cubit.dart';
import 'package:asaalne/features/text_generate/presentation/widgets/body_item_stack_widget.dart';
import 'package:asaalne/features/text_generate/presentation/widgets/field_box_bottom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextGenerateScreen extends StatefulWidget {
  const TextGenerateScreen({super.key});

  @override
  State<TextGenerateScreen> createState() => _TextGenerateScreenState();
}

class _TextGenerateScreenState extends State<TextGenerateScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lightGray,
      body: SafeArea(
        child: SizedBox.expand(
          child: Stack(
            // alignment: Alignment.center,
            children: [
              BodyItemStackWidget(),
              FieldBoxBottomWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
