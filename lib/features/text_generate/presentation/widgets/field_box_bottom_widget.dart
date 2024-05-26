import 'package:asaalne/config/themes/app_colors.dart';
import 'package:asaalne/config/themes/app_text_styles.dart';
import 'package:asaalne/core/utils/app_strings.dart';
import 'package:asaalne/features/text_generate/presentation/cubit/text_generate_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FieldBoxBottomWidget extends StatelessWidget {
  const FieldBoxBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        constraints: BoxConstraints(minHeight: 80.h, maxWidth: 1.sw),
        decoration: BoxDecoration(
          color: AppColors.teal,
          borderRadius: BorderRadius.vertical(
            top: const Radius.circular(20).r,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 20, 0).r,
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: BlocProvider.of<TextGenerateCubit>(context)
                      .queryTextController,
                  minLines: 1,
                  maxLines: 5,
                  style: AppTextStyles.font18BlackMedium,
                  decoration: InputDecoration(
                    hintText: AppStrings.writeWhatYouThink,
                    hintStyle: AppTextStyles.font16LightGrayMedium,

                    border: InputBorder.none,
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(20).r,
                    //   borderSide: const BorderSide(
                    //     width: 2,
                    //     color: AppColors.limeGreen,
                    //   ),
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(20).r,
                    //   borderSide: const BorderSide(
                  ),
                ),
              ),
              SizedBox(width: 25.w),
              IconButton(
                onPressed: () => BlocProvider.of<TextGenerateCubit>(context)
                    .getTextGenerate(),
                style: IconButton.styleFrom(backgroundColor: AppColors.black),
                icon: Icon(
                  Icons.arrow_upward,
                  size: 25.r,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
