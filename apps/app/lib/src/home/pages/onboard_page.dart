import 'package:cores_core/presentation.dart';
import 'package:cores_designsystem/presentation.dart';
import 'package:features_setting/presentation.dart';
import 'package:features_user/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/packages/cores/domain/lib/src/user/usecase/user_usecase.dart';
import 'package:flutter_app/packages/features/user/lib/src/gen/assets/assets.gen.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 16, end: 16, top: 40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _WelcomeImage(),
                Gap(16),
                _StartButton(),
                Gap(40),
                _SignInWithGoogleButton(),
                Gap(16),
                _SignInWithAppleButton(),
                Gap(16),
                _Links(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _WelcomeImage extends StatelessWidget {
  const _WelcomeImage();

  static const Color _rawPrimary = Color(0xff21005D);

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return ImageAspectRatio(
      child: SvgAssetImage(
        path: Assets.images.welcomeCats,
        replaceColors: [
          SvgReplaceColors(rawColor: _rawPrimary, color: cs.primary),
        ],
      ),
    );
  }
}

class _StartButton extends ConsumerWidget with PresentationMixin {
  const _StartButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final tt = theme.textTheme;

    return Column(
      children: [
        WidthFillBox(
          child: FilledButton(
            onPressed: () => execute(
              action: () async => ref.read(userUsecaseProvider).signUp(),
            ),
            child: Text(i18n.user.onboardPage.start),
          ),
        ),
        Text(
          i18n.user.onboardPage.startCaption,
          style: tt.labelMedium?.copyWith(color: cs.onSurfaceVariant),
        ),
      ],
    );
  }
}

class _SignInWithGoogleButton extends ConsumerWidget with PresentationMixin {
  const _SignInWithGoogleButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WidthFillBox(
      child: OutlinedButton.icon(
        onPressed: () => execute(
          action: () => ref.read(userUsecaseProvider).signInWithGoogle(),
        ),
        label: Text(i18n.user.onboardPage.signInWithGoogle),
        icon: Icon(MdiIcons.google),
      ),
    );
  }
}

class _SignInWithAppleButton extends ConsumerWidget with PresentationMixin {
  const _SignInWithAppleButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;

    return WidthFillBox(
      child: OutlinedButton.icon(
        onPressed: () => execute(
          action: () => ref.read(userUsecaseProvider).signInWithApple(),
        ),
        label: Text(i18n.user.onboardPage.signInWithApple),
        icon: Icon(
          MdiIcons.apple,
          color: cs.onSurface,
        ),
      ),
    );
  }
}

class _Links extends HookWidget {
  const _Links();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HowToUseLink(),
        Gap(32),
        WidthFillBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: ContactUsLink(),
              ),
              Flexible(
                child: PrivacyPollicyLink(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
