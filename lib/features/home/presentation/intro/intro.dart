import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohansunar_portfolio/core/config/assets/app_images.dart';
import 'package:rohansunar_portfolio/core/config/section_scroller/section_scroller.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/animated_skill_tag.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_social_Icon_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';
import 'package:rohansunar_portfolio/core/widgets/scroll_down_button.dart';
import 'package:rohansunar_portfolio/features/bloc/home_bloc.dart';
import 'package:rohansunar_portfolio/features/bloc/home_event.dart';

class IntroSection extends StatefulWidget {
  const IntroSection({super.key});

  @override
  State<IntroSection> createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
  bool _isHovered = false;
  bool _isContactMeHovered = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizeConfig.isMobile(context)
            ? Container(
              key: SectionKeys.homeKey,
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(10),
                border: Border.all(color: Colors.white.withAlpha(25)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: SizeConfig.blockHeight * 1,
                      top: SizeConfig.blockWidth * 3,
                      bottom: SizeConfig.blockWidth * 5,
                      left: SizeConfig.blockHeight * 7,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Rohan Kamal',
                          color: AppColors.white,
                          fontSize: SizeConfig.blockWidth * 6,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          text: 'Sunar',
                          fontSize: SizeConfig.blockWidth * 7.5,
                          fontWeight: FontWeight.bold,
                          isGradient: true,
                        ),
                        CustomText(
                          text: 'Flutter Developer',
                          textColor: AppColors.grey,
                          fontSize: SizeConfig.blockWidth * 4,
                          fontWeight: FontWeight.bold,
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: SizeConfig.blockWidth * 3,
                              fontWeight: FontWeight.bold,
                              color: AppColors.grey,
                            ),
                            children: [
                              const TextSpan(
                                text: 'Building modern mobile apps with ',
                              ),
                              TextSpan(
                                text: '\nFlutter',
                                style: TextStyle(
                                  color: AppColors.primaryCyan,
                                ), // Flutter Blue
                              ),
                              const TextSpan(text: ' & '),
                              TextSpan(
                                text: 'Dart',
                                style: TextStyle(
                                  color: AppColors.softPurple,
                                ), // Dart Purple
                              ),
                              const TextSpan(
                                text:
                                    '. \nPassionate about clean UI and \nperformance-optimized development.',
                              ),
                            ],
                          ),
                        ),

                        Container(
                          key: SectionKeys.toProjectsKey,
                          padding: EdgeInsets.all(SizeConfig.blockHeight * 2),
                          child: Row(
                            children: [
                              MouseRegion(
                                onEnter:
                                    (_) => setState(() => _isHovered = true),
                                onExit:
                                    (_) => setState(() => _isHovered = false),
                                child: SizedBox(
                                  height: SizeConfig.blockHeight * 5,
                                  width: SizeConfig.blockWidth * 22,
                                  child: CustomButton(
                                    onPressed: () {
                                      context.read<HomeBloc>().add(
                                        ScrollToSectionEvent('projects'),
                                      );
                                    },
                                    padding: EdgeInsets.all(
                                      SizeConfig.blockWidth * 1.1,
                                    ),
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
                                                  color: Colors.cyanAccent
                                                      .withAlpha(150),
                                                  blurRadius: 40,
                                                  spreadRadius: 1,
                                                  offset: const Offset(0, 4),
                                                ),
                                              ]
                                              : [],
                                      borderRadius: BorderRadius.circular(
                                        SizeConfig.blockWidth * 5,
                                      ),
                                    ),
                                    childWidget: CustomText(
                                      text: 'View Projects',
                                      fontSize: SizeConfig.blockWidth * 2,
                                      textColor: AppColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: SizeConfig.blockWidth * 5),
                              Container(
                                key: SectionKeys.toContactKey,
                                child: MouseRegion(
                                  onEnter:
                                      (_) => setState(
                                        () => _isContactMeHovered = true,
                                      ),
                                  onExit:
                                      (_) => setState(
                                        () => _isContactMeHovered = false,
                                      ),
                                  child: SizedBox(
                                    height: SizeConfig.blockHeight * 5,
                                    width: SizeConfig.blockWidth * 22,
                                    child: CustomButton(
                                      onPressed: () {
                                        context.read<HomeBloc>().add(
                                          ScrollToSectionEvent('contact'),
                                        );
                                      },

                                      decoration: BoxDecoration(
                                        boxShadow:
                                            _isContactMeHovered
                                                ? [
                                                  BoxShadow(
                                                    color: Colors.cyanAccent
                                                        .withAlpha(150),
                                                    blurRadius: 40,
                                                    spreadRadius: 1,
                                                    offset: const Offset(0, 4),
                                                  ),
                                                ]
                                                : [],
                                      ),
                                      borderSideColor:
                                          _isContactMeHovered
                                              ? AppColors.primaryCyan
                                              : AppColors.grey,
                                      borderRadius: SizeConfig.blockWidth * 5,
                                      backgroundColor:
                                          _isContactMeHovered
                                              ? AppColors.softPurple
                                              : AppColors.transparent,
                                      overlayColor: AppColors.transparent,
                                      childWidget: CustomText(
                                        text: 'Contact Me',
                                        fontSize: SizeConfig.blockWidth * 2,
                                        textColor:
                                            _isContactMeHovered
                                                ? AppColors.black
                                                : AppColors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          children: [
                            SocialIconButton(
                              icon: FontAwesomeIcons.github,
                              iconColor: AppColors.white,
                              iconSize: SizeConfig.blockWidth * 5,
                              onTap: () {
                                context.read<HomeBloc>().add(
                                  OpenGithubProfile(),
                                );
                              },
                            ),
                            SizedBox(width: SizeConfig.blockWidth * 2),
                            SocialIconButton(
                              icon: FontAwesomeIcons.linkedin,
                              iconColor: AppColors.white,
                              iconSize: SizeConfig.blockWidth * 5,
                              onTap: () {
                                context.read<HomeBloc>().add(
                                  OpenLinkedInProfile(),
                                );
                              },
                            ),
                            SizedBox(width: SizeConfig.blockWidth * 2),

                            Tooltip(
                              message: 'rohanksunar15@gmail.com',
                              margin: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: AppColors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              textStyle: TextStyle(
                                fontSize: SizeConfig.blockWidth * 1,
                                color: AppColors.white,
                              ),

                              child: SocialIconButton(
                                icon: Icons.email_outlined,
                                iconColor: AppColors.white,
                                iconSize: SizeConfig.blockWidth * 5,
                                onTap: () {
                                  context.read<HomeBloc>().add(
                                    GmailRedirectRequested(),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: SizeConfig.blockWidth * 32,
                          height: SizeConfig.blockWidth * 32,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                            ),
                            image: const DecorationImage(
                              image: AssetImage(AppImages.profileImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        AnimatedSkillTag(
                          label: 'Flutter',
                          color: AppColors.primaryCyan,
                          startOffset: Offset(
                            SizeConfig.blockWidth * 25,
                            SizeConfig.blockHeight * -3,
                          ),
                        ),
                        AnimatedSkillTag(
                          label: 'Dart',
                          color: AppColors.softPurple,
                          startOffset: Offset(
                            SizeConfig.blockWidth * -3,
                            SizeConfig.blockHeight * 5,
                          ),
                        ),
                        AnimatedSkillTag(
                          label: 'Firebase',
                          color: AppColors.successGreen,
                          startOffset: Offset(
                            SizeConfig.blockWidth * 26,
                            SizeConfig.blockHeight * 15,
                          ),
                        ),
                        AnimatedSkillTag(
                          label: 'Node.js',
                          color: AppColors.vibrantOrange,
                          startOffset: Offset(
                            SizeConfig.blockWidth * -2,
                            SizeConfig.blockHeight * 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    key: SectionKeys.scrollDownKey,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: DropArrowButton(
                        onTap: () {
                          context.read<HomeBloc>().add(
                            ScrollToSectionEvent('about'),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
            : Container(
              key: SectionKeys.homeKey,
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(10),
                border: Border.all(color: Colors.white.withAlpha(25)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: SizeConfig.blockHeight * 30,
                      top: SizeConfig.blockWidth * 4,
                      bottom: SizeConfig.blockWidth * 2.5,
                      left: SizeConfig.blockHeight * 10,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.blockWidth * 2,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'Rohan Kamal',
                                color: AppColors.white,
                                fontSize: SizeConfig.blockWidth * 5,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: 'Sunar',
                                fontSize: SizeConfig.blockWidth * 5,
                                fontWeight: FontWeight.bold,
                                isGradient: true,
                              ),
                              CustomText(
                                text: 'Flutter Developer',
                                textColor: AppColors.grey,
                                fontSize: SizeConfig.blockWidth * 1.5,
                                fontWeight: FontWeight.bold,
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: SizeConfig.blockWidth * 1.3,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.grey,
                                  ),
                                  children: [
                                    const TextSpan(
                                      text: 'Building modern mobile apps with ',
                                    ),
                                    TextSpan(
                                      text: 'Flutter',
                                      style: TextStyle(
                                        color: AppColors.primaryCyan,
                                      ), // Flutter Blue
                                    ),
                                    const TextSpan(text: ' & '),
                                    TextSpan(
                                      text: 'Dart',
                                      style: TextStyle(
                                        color: AppColors.softPurple,
                                      ), // Dart Purple
                                    ),
                                    const TextSpan(
                                      text:
                                          '. Passionate \nabout clean UI and performance-optimized development.',
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                key: SectionKeys.toProjectsKey,
                                padding: const EdgeInsets.all(30.0),
                                child: Row(
                                  children: [
                                    MouseRegion(
                                      onEnter:
                                          (_) =>
                                              setState(() => _isHovered = true),
                                      onExit:
                                          (_) => setState(
                                            () => _isHovered = false,
                                          ),
                                      child: SizedBox(
                                        height: SizeConfig.blockWidth * 3,
                                        width: SizeConfig.blockWidth * 10,
                                        child: CustomButton(
                                          onPressed: () {
                                            context.read<HomeBloc>().add(
                                              ScrollToSectionEvent('projects'),
                                            );
                                          },
                                          padding: EdgeInsets.all(
                                            SizeConfig.blockWidth * 1.1,
                                          ),
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
                                                        color: Colors.cyanAccent
                                                            .withAlpha(150),
                                                        blurRadius: 40,
                                                        spreadRadius: 1,
                                                        offset: const Offset(
                                                          0,
                                                          4,
                                                        ),
                                                      ),
                                                    ]
                                                    : [],
                                            borderRadius: BorderRadius.circular(
                                              SizeConfig.blockWidth * 1.1,
                                            ),
                                          ),
                                          childWidget: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomText(
                                                text: 'View Projects',
                                                fontSize:
                                                    SizeConfig.blockWidth * 1,
                                                textColor: AppColors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 50),
                                    Container(
                                      key: SectionKeys.toContactKey,
                                      child: MouseRegion(
                                        onEnter:
                                            (_) => setState(
                                              () => _isContactMeHovered = true,
                                            ),
                                        onExit:
                                            (_) => setState(
                                              () => _isContactMeHovered = false,
                                            ),
                                        child: SizedBox(
                                          height: SizeConfig.blockWidth * 3,
                                          width: SizeConfig.blockWidth * 10,
                                          child: CustomButton(
                                            onPressed: () {
                                              context.read<HomeBloc>().add(
                                                ScrollToSectionEvent('contact'),
                                              );
                                            },
                                            padding: EdgeInsets.symmetric(
                                              vertical:
                                                  SizeConfig.blockHeight * 1,
                                              horizontal:
                                                  SizeConfig.blockWidth * 1,
                                            ),
                                            decoration: BoxDecoration(
                                              boxShadow:
                                                  _isContactMeHovered
                                                      ? [
                                                        BoxShadow(
                                                          color: Colors
                                                              .cyanAccent
                                                              .withAlpha(150),
                                                          blurRadius: 40,
                                                          spreadRadius: 1,
                                                          offset: const Offset(
                                                            0,
                                                            4,
                                                          ),
                                                        ),
                                                      ]
                                                      : [],
                                            ),
                                            borderSideColor:
                                                _isContactMeHovered
                                                    ? AppColors.primaryCyan
                                                    : AppColors.grey,
                                            borderRadius: 15,
                                            backgroundColor:
                                                _isContactMeHovered
                                                    ? AppColors.softPurple
                                                    : AppColors.transparent,
                                            overlayColor: AppColors.transparent,
                                            childWidget: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomText(
                                                  text: 'Contact Me',
                                                  fontSize:
                                                      SizeConfig.blockWidth *
                                                      0.9,
                                                  textColor:
                                                      _isContactMeHovered
                                                          ? AppColors.black
                                                          : AppColors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: SizeConfig.blockHeight * 2,
                                  horizontal: SizeConfig.blockWidth * 4,
                                ),
                                child: Row(
                                  children: [
                                    SocialIconButton(
                                      icon: FontAwesomeIcons.github,
                                      iconColor: AppColors.white,
                                      onTap: () {
                                        context.read<HomeBloc>().add(
                                          OpenGithubProfile(),
                                        );
                                      },
                                    ),
                                    SizedBox(width: SizeConfig.blockWidth * 2),
                                    SocialIconButton(
                                      icon: FontAwesomeIcons.linkedin,
                                      iconColor: AppColors.white,
                                      onTap: () {
                                        context.read<HomeBloc>().add(
                                          OpenLinkedInProfile(),
                                        );
                                      },
                                    ),
                                    SizedBox(width: SizeConfig.blockWidth * 2),

                                    Tooltip(
                                      message: 'rohanksunar15@gmail.com',
                                      margin: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: AppColors.grey,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      textStyle: TextStyle(
                                        fontSize: SizeConfig.blockWidth * 1,
                                        color: AppColors.white,
                                      ),

                                      child: SocialIconButton(
                                        icon: Icons.email_outlined,
                                        iconColor: AppColors.white,
                                        onTap: () {
                                          context.read<HomeBloc>().add(
                                            GmailRedirectRequested(),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Center(
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: SizeConfig.blockWidth * 25,
                                height: SizeConfig.blockWidth * 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 2,
                                  ),
                                  image: const DecorationImage(
                                    image: AssetImage(AppImages.profileImage),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              AnimatedSkillTag(
                                label: 'Flutter',
                                color: AppColors.primaryCyan,
                                startOffset: Offset(
                                  SizeConfig.blockWidth * 20,
                                  SizeConfig.blockWidth * -2,
                                ),
                              ),
                              AnimatedSkillTag(
                                label: 'Dart',
                                color: AppColors.softPurple,
                                startOffset: Offset(
                                  SizeConfig.blockWidth * -3,
                                  SizeConfig.blockWidth * 5,
                                ),
                              ),
                              AnimatedSkillTag(
                                label: 'Firebase',
                                color: AppColors.successGreen,
                                startOffset: Offset(
                                  SizeConfig.blockWidth * 23,
                                  SizeConfig.blockWidth * 18,
                                ),
                              ),
                              AnimatedSkillTag(
                                label: 'Node.js',
                                color: AppColors.vibrantOrange,
                                startOffset: Offset(
                                  SizeConfig.blockWidth * -3,
                                  SizeConfig.blockWidth * 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    key: SectionKeys.scrollDownKey,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: DropArrowButton(
                        onTap: () {
                          context.read<HomeBloc>().add(
                            ScrollToSectionEvent('about'),
                          );
                        },
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
