import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohansunar_portfolio/core/config/section_scroller/section_scroller.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_social_icon_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';
import 'package:rohansunar_portfolio/features/bloc/home_bloc.dart';
import 'package:rohansunar_portfolio/features/bloc/home_event.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is ScrollToSectionState) {
          SectionScroller.scrollToSection(state.section);
        }
      },
      builder: (context, state) {
        return SizeConfig.isMobile(context)
            ? Container(
                color: AppColors.black.withAlpha(50),
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockWidth * 4,
                  vertical: SizeConfig.blockHeight * 4,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Rohan Kamal Sunar',
                              fontSize: SizeConfig.blockWidth * 4,
                              fontWeight: FontWeight.bold,
                              isGradient: true,
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 1),
                            SizedBox(
                              width: SizeConfig.blockWidth * 40,
                              child: CustomText(
                                text:
                                    'Flutter Developer passionate about creating beautiful, performant mobile applications.',
                                fontSize: SizeConfig.blockWidth * 2,
                                textColor: AppColors.white.withAlpha(190),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 2),
                            Row(
                              children: [
                                SocialIconButton(
                                  icon: FontAwesomeIcons.github,
                                  iconColor: AppColors.white,
                                  iconSize: SizeConfig.blockWidth * 5,
                                  padding: EdgeInsets.symmetric(
                                    vertical: SizeConfig.blockWidth * 0.8,
                                    horizontal: SizeConfig.blockWidth * 1.2,
                                  ),
                                  onTap: () {
                                    context.read<HomeBloc>().add(
                                          OpenGithubProfile(),
                                        );
                                  },
                                ),
                                SocialIconButton(
                                  icon: FontAwesomeIcons.linkedin,
                                  iconColor: AppColors.white,
                                  iconSize: SizeConfig.blockWidth * 5,
                                  padding: EdgeInsets.symmetric(
                                    vertical: SizeConfig.blockWidth * 0.8,
                                    horizontal: SizeConfig.blockWidth * 1.2,
                                  ),
                                  onTap: () {
                                    context.read<HomeBloc>().add(
                                          OpenLinkedInProfile(),
                                        );
                                  },
                                ),
                                SocialIconButton(
                                  icon: Icons.email_outlined,
                                  iconColor: AppColors.white,
                                  iconSize: SizeConfig.blockWidth * 5,
                                  padding: EdgeInsets.symmetric(
                                    vertical: SizeConfig.blockWidth * 0.8,
                                    horizontal: SizeConfig.blockWidth * 1.2,
                                  ),
                                  onTap: () {
                                    context.read<HomeBloc>().add(
                                          GmailRedirectRequested(),
                                        );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Quick Links',
                              fontSize: SizeConfig.blockWidth * 3,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 1.5),
                            CustomText(
                              onTap: () {
                                context.read<HomeBloc>().add(
                                      ScrollToSectionEvent('about'),
                                    );
                              },
                              text: 'About',
                              fontSize: SizeConfig.blockWidth * 1.8,
                              fontWeight: FontWeight.bold,
                              textColor: AppColors.white.withAlpha(190),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 1),
                            CustomText(
                              onTap: () {
                                context.read<HomeBloc>().add(
                                      ScrollToSectionEvent('skills'),
                                    );
                              },
                              text: 'Skills',
                              fontSize: SizeConfig.blockWidth * 1.8,
                              fontWeight: FontWeight.bold,
                              textColor: AppColors.white.withAlpha(190),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 1),
                            CustomText(
                              onTap: () {
                                context.read<HomeBloc>().add(
                                      ScrollToSectionEvent('projects'),
                                    );
                              },
                              text: 'Projects',
                              fontSize: SizeConfig.blockWidth * 1.8,
                              fontWeight: FontWeight.bold,
                              textColor: AppColors.white.withAlpha(190),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 1),
                            CustomText(
                              onTap: () {
                                context.read<HomeBloc>().add(
                                      ScrollToSectionEvent('contact'),
                                    );
                              },
                              text: 'Contact',
                              fontSize: SizeConfig.blockWidth * 1.8,
                              fontWeight: FontWeight.bold,
                              textColor: AppColors.white.withAlpha(190),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Get in Touch',
                              fontSize: SizeConfig.blockWidth * 3,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 1.5),
                            CustomText(
                              text: 'rohanksunar15@gmail.com',
                              fontSize: SizeConfig.blockWidth * 2.3,
                              fontWeight: FontWeight.bold,
                              textColor: AppColors.white.withAlpha(190),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 1),
                            CustomText(
                              text: 'Available For Work',
                              fontSize: SizeConfig.blockWidth * 2.3,
                              fontWeight: FontWeight.bold,
                              textColor: AppColors.white.withAlpha(190),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: SizeConfig.blockHeight * 1),
                    Divider(thickness: 1, color: AppColors.grey),
                    SizedBox(height: SizeConfig.blockHeight * 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text:
                              '© 2025 Rohan Kamal Sunar. All rights reserved.',
                          fontSize: SizeConfig.blockWidth * 2.3,
                          fontWeight: FontWeight.bold,
                          textColor: AppColors.grey,
                        ),
                        CustomText(
                          text: 'Made with ❤️ using Flutter ',
                          fontSize: SizeConfig.blockWidth * 2.3,
                          fontWeight: FontWeight.bold,
                          textColor: AppColors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : Container(
                color: AppColors.black.withAlpha(50),
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockWidth * 4,
                  vertical: SizeConfig.blockHeight * 4,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Rohan Kamal Sunar',
                              fontSize: SizeConfig.blockWidth * 1.5,
                              fontWeight: FontWeight.bold,
                              isGradient: true,
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 3),
                            SizedBox(
                              width: SizeConfig.blockWidth * 30,
                              child: CustomText(
                                text:
                                    'Flutter Developer passionate about creating beautiful, performant mobile applications.',
                                fontSize: SizeConfig.blockWidth * 1.2,
                                textColor: AppColors.white.withAlpha(190),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 3),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                SocialIconButton(
                                  icon: FontAwesomeIcons.linkedin,
                                  iconColor: AppColors.white,
                                  onTap: () {
                                    context.read<HomeBloc>().add(
                                          OpenLinkedInProfile(),
                                        );
                                  },
                                ),
                                SocialIconButton(
                                  icon: Icons.email_outlined,
                                  iconColor: AppColors.white,
                                  onTap: () {
                                    context.read<HomeBloc>().add(
                                          GmailRedirectRequested(),
                                        );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Quick Links',
                              fontSize: SizeConfig.blockWidth * 1.5,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 3),
                            CustomText(
                              onTap: () {
                                context.read<HomeBloc>().add(
                                      ScrollToSectionEvent('about'),
                                    );
                              },
                              text: 'About',
                              fontSize: SizeConfig.blockWidth * 1.2,
                              textColor: AppColors.white.withAlpha(190),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 1.5),
                            CustomText(
                              onTap: () {
                                context.read<HomeBloc>().add(
                                      ScrollToSectionEvent('skills'),
                                    );
                              },
                              text: 'Skills',
                              fontSize: SizeConfig.blockWidth * 1.2,
                              textColor: AppColors.white.withAlpha(190),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 1.5),
                            CustomText(
                              onTap: () {
                                context.read<HomeBloc>().add(
                                      ScrollToSectionEvent('projects'),
                                    );
                              },
                              text: 'Projects',
                              fontSize: SizeConfig.blockWidth * 1.2,
                              textColor: AppColors.white.withAlpha(190),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 1.5),
                            CustomText(
                              onTap: () {
                                context.read<HomeBloc>().add(
                                      ScrollToSectionEvent('contact'),
                                    );
                              },
                              text: 'Contact',
                              fontSize: SizeConfig.blockWidth * 1.2,
                              textColor: AppColors.white.withAlpha(190),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Get in Touch',
                              fontSize: SizeConfig.blockWidth * 1.5,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 3),
                            CustomText(
                              text: 'rohanksunar15@gmail.com',
                              fontSize: SizeConfig.blockWidth * 1.2,
                              textColor: AppColors.white.withAlpha(190),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: SizeConfig.blockHeight * 1.5),
                            CustomText(
                              text: 'Available For Work',
                              fontSize: SizeConfig.blockWidth * 1.2,
                              textColor: AppColors.white.withAlpha(190),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: SizeConfig.blockHeight * 3),
                    Divider(thickness: 1, color: AppColors.grey),
                    SizedBox(height: SizeConfig.blockHeight * 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text:
                              '© 2025 Rohan Kamal Sunar. All rights reserved.',
                          fontSize: SizeConfig.blockWidth * 1,
                          textColor: AppColors.grey,
                        ),
                        CustomText(
                          text: 'Made with ❤️ using Flutter ',
                          fontSize: SizeConfig.blockWidth * 1,
                          textColor: AppColors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              );
      },
    );
  }
}
