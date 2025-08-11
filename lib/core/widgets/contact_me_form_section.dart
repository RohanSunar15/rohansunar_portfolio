import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_textfield.dart';
import 'package:rohansunar_portfolio/features/bloc/home_bloc.dart';
import 'package:rohansunar_portfolio/features/bloc/home_event.dart';

class ContactMeFormSection extends StatefulWidget {
  final double? containerHeight;
  final double? containerWidth;

  const ContactMeFormSection({
    super.key,
    this.containerHeight,
    this.containerWidth,
  });

  @override
  State<ContactMeFormSection> createState() => _ContactMeFormSectionState();
}

class _ContactMeFormSectionState extends State<ContactMeFormSection> {
  bool _isHovered = false;

  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _subjectController;
  late TextEditingController _messageController;

  @override
  void initState() {
    super.initState();

    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _subjectController = TextEditingController();
    _messageController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizeConfig.isMobile(context)
            ? Container(
              height: widget.containerHeight ?? SizeConfig.blockHeight * 100,
              width: widget.containerWidth ?? SizeConfig.blockWidth * 45,
              padding: EdgeInsets.symmetric(
                vertical: SizeConfig.blockHeight * 2,
                horizontal: SizeConfig.blockWidth * 2,
              ),
              margin: EdgeInsets.symmetric(
                vertical: SizeConfig.blockWidth * 5,
                horizontal: SizeConfig.blockWidth * 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: 'Your Name'),
                    SizedBox(height: SizeConfig.blockHeight * 1),
                    CustomTextField(
                      label: 'label',
                      hintText: 'John Doe',
                      height: SizeConfig.blockHeight * 8,
                      width: SizeConfig.blockWidth * 75,
                    ),

                    CustomText(text: 'Your Email'),
                    SizedBox(height: SizeConfig.blockHeight * 1),
                    CustomTextField(
                      label: 'label',
                      hintText: 'john@example.com',
                      height: SizeConfig.blockHeight * 8,
                      width: SizeConfig.blockWidth * 75,
                    ),
                    SizedBox(height: SizeConfig.blockHeight * 1),
                    //Subject
                    CustomText(text: 'Subject (Optional)'),
                    SizedBox(height: SizeConfig.blockHeight * 1),
                    CustomTextField(
                      label: 'label',
                      hintText: 'Give your message a title',
                      height: SizeConfig.blockHeight * 8,
                      width: SizeConfig.blockWidth * 75,
                    ),
                    SizedBox(height: SizeConfig.blockHeight * 1),

                    CustomText(text: 'Message '),
                    SizedBox(height: SizeConfig.blockHeight * 1),
                    CustomTextField(
                      label: 'label',
                      hintText:
                          'Drop your thoughts, goals, or just a message to connect!',
                      height: SizeConfig.blockHeight * 20,
                      width: SizeConfig.blockWidth * 75,
                      maxLines: 5,
                    ),

                    //Send Message Button
                    MouseRegion(
                      onEnter: (_) => setState(() => _isHovered = true),
                      onExit: (_) => setState(() => _isHovered = false),
                      child: SizedBox(
                        width: SizeConfig.blockWidth * 75,
                        child: CustomButton(
                          onPressed: () {
                            // context.read<HomeBloc>().add(FormSubmitted());
                          },
                          padding: EdgeInsets.all(SizeConfig.blockWidth * 1.1),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                AppColors.buttonBlue,
                                AppColors.buttonPurple,
                              ],
                            ),
                            boxShadow:
                                _isHovered
                                    ? [
                                      BoxShadow(
                                        color: Colors.cyanAccent.withAlpha(150),
                                        blurRadius: 40,
                                        spreadRadius: 1,
                                        offset: const Offset(0, 4),
                                      ),
                                    ]
                                    : [],
                            borderRadius: BorderRadius.circular(
                              SizeConfig.blockWidth * 10,
                            ),
                          ),
                          childWidget: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.send,
                                color: AppColors.black,
                                size: SizeConfig.blockWidth * 3,
                              ),
                              SizedBox(width: SizeConfig.blockWidth * 1),
                              Text(
                                'Send Message',
                                style: TextStyle(
                                  fontSize: SizeConfig.blockWidth * 3,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            : Container(
              height: widget.containerHeight ?? SizeConfig.blockHeight * 100,
              width: widget.containerWidth ?? SizeConfig.blockWidth * 45,
              padding: EdgeInsets.symmetric(
                vertical: SizeConfig.blockHeight * 8,
                horizontal: SizeConfig.blockWidth * 2,
              ),
              margin: EdgeInsets.symmetric(
                vertical: SizeConfig.blockHeight * 1,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Your Name'),
                          SizedBox(height: SizeConfig.blockHeight * 1.5),
                          CustomTextField(
                            controller: _nameController,
                            label: 'label',
                            hintText: 'John Doe',
                            height: SizeConfig.blockHeight * 8,
                            width: SizeConfig.blockWidth * 20,
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Your Email'),
                          SizedBox(height: SizeConfig.blockHeight * 1.5),
                          CustomTextField(
                            controller: _emailController,
                            label: 'label',
                            hintText: 'john@example.com',
                            height: SizeConfig.blockHeight * 8,
                            width: SizeConfig.blockWidth * 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 2),
                  //Subject
                  CustomText(text: 'Subject (Optional)'),
                  SizedBox(height: SizeConfig.blockHeight * 1.5),
                  CustomTextField(
                    controller: _subjectController,
                    label: 'label',
                    hintText: 'Give your message a title',
                    height: SizeConfig.blockHeight * 8,
                    width: SizeConfig.blockWidth * 40,
                    maxLines: 2,
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 2),

                  CustomText(text: 'Message '),
                  SizedBox(height: SizeConfig.blockHeight * 1.5),
                  CustomTextField(
                    controller: _messageController,
                    label: 'label',
                    hintText:
                        'Drop your thoughts, goals, or just a message to connect!',
                    height: SizeConfig.blockHeight * 30,
                    width: SizeConfig.blockWidth * 45,
                    maxLines: 7,
                  ),

                  //Send Message Button
                  MouseRegion(
                    onEnter: (_) => setState(() => _isHovered = true),
                    onExit: (_) => setState(() => _isHovered = false),
                    child: SizedBox(
                      width: SizeConfig.blockWidth * 42,
                      child: CustomButton(
                        onPressed: () {
                          context.read<HomeBloc>().add(
                            FormSubmitted(
                              name: _nameController.text,
                              email: _emailController.text,
                              subject: _subjectController.text,
                              message: _messageController.text,
                            ),
                          );
                        },
                        padding: EdgeInsets.all(SizeConfig.blockWidth * 1.1),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppColors.buttonBlue,
                              AppColors.buttonPurple,
                            ],
                          ),
                          boxShadow:
                              _isHovered
                                  ? [
                                    BoxShadow(
                                      color: Colors.cyanAccent.withAlpha(150),
                                      blurRadius: 40,
                                      spreadRadius: 1,
                                      offset: const Offset(0, 4),
                                    ),
                                  ]
                                  : [],
                          borderRadius: BorderRadius.circular(
                            SizeConfig.blockWidth * 1.1,
                          ),
                        ),
                        childWidget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.send,
                              color: AppColors.black,
                              size: SizeConfig.blockWidth * 1.5,
                            ),
                            SizedBox(width: SizeConfig.blockWidth * 2),
                            Text(
                              'Send Message',
                              style: TextStyle(
                                fontSize: SizeConfig.blockWidth * 0.9,
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
      },
    );
  }
}
