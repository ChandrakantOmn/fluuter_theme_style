import 'package:flutter/material.dart';

import '../drawer.dart';
import '../ui.dart';
import '../components/buttons/sge_primary_button.dart';
import '../components/buttons/sge_secondary_button.dart';
import '../components/buttons/sge_primary_filter_chip.dart';
import '../components/buttons/sge_primary_input_chip.dart';
import '../components/buttons/sge_secondary_input_chip.dart';

class StyleGuidePage extends StatelessWidget {
  static const routeName = '/style-guide';

  static MaterialPageRoute route() {
    return MaterialPageRoute(
      builder: (context) => StyleGuidePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Style guide'),
      ),
      drawer: SgeDrawer(),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(height: 32),
          Text(
            'SgePrimaryButton',
            style: theme.textTheme.headline5!.copyWith(
              fontWeight: SgeFontWeight.semiBold,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SgePrimaryButton(onTap: () => {}, label: const Text('active button'), icon: null,),
              const SizedBox(width: 16),
               SgePrimaryButton( label: const Text('disabled button'), onTap: () {  }, icon: null,),
            ]),
          ),
          const SizedBox(height: 32),
          Text(
            'SgeSecondaryButton',
            style: theme.textTheme.headline5!.copyWith(
              fontWeight: SgeFontWeight.semiBold,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SgeSecondaryButton(onTap: () => {}, label: const Text('active button'), icon: null,),
              const SizedBox(width: 16),
               SgeSecondaryButton( label: const Text('disabled button'), icon: null, onTap: () {  },),
            ]),
          ),
          const SizedBox(height: 32),
          Text(
            'SgePrimaryFilterChip',
            style: theme.textTheme.headline5!.copyWith(
              fontWeight: SgeFontWeight.semiBold,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(children: [
              SgePrimaryFilterChip(label: const Text('normal'), onSelected: (value) {}),
              const SizedBox(width: 16),
              SgePrimaryFilterChip(label: const Text('selected'), selected: true, onSelected: (value) {}),
              const SizedBox(width: 16),
              SgePrimaryFilterChip(label: const Text('disabled'), onSelected: (bool value) {  },),
            ]),
          ),
          const SizedBox(height: 32),
          Text(
            'SgePrimaryInputChip',
            style: theme.textTheme.headline5!.copyWith(
              fontWeight: SgeFontWeight.semiBold,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(children: [
              SgePrimaryInputChip(label: const Text('Active'), onTap: () => {}),
              const SizedBox(width: 16),
               SgePrimaryInputChip(label: const Text('Disabled'), onTap: () {  },),
            ]),
          ),
          const SizedBox(height: 32),
          Text(
            'SgeSecondaryInputChip',
            style: theme.textTheme.headline5!.copyWith(
              fontWeight: SgeFontWeight.semiBold,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(children: [
              SgeSecondaryInputChip(label: const Text('active'), onTap: () => {}),
              const SizedBox(width: 16),
               SgeSecondaryInputChip(label: const Text('disabled'), onTap: () {  },),
            ]),
          ),
          const SizedBox(height: 32),
          Text(
            'Dialogs',
            style: theme.textTheme.headline5!.copyWith(
              fontWeight: SgeFontWeight.semiBold,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SgeSecondaryButton(
                label: const Text('open alert dialog'),
                onTap: () => showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('Alert dialog example'),
                    content: SingleChildScrollView(
                      child: ListBody(children: const <Widget>[
                        Text('This is a demo alert dialog.'),
                        Text('Would you like to approve of this message?'),
                      ]),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Approve'),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                ), icon: null,
              ),
              const SizedBox(width: 16),
              SgeSecondaryButton(
                label: const Text('open simple dialog'),
                onTap: () => showDialog(
                  context: context,
                  builder: (_) => SimpleDialog(
                    title: const Text('Simple dialog example'),
                    children: <Widget>[
                      SimpleDialogOption(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Option foo'),
                      ),
                      SimpleDialogOption(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Option bar'),
                      ),
                    ],
                  ),
                ), icon: null,
              ),
            ]),
          ),
          const SizedBox(height: 32),
          Text(
            'Text themes',
            style: theme.textTheme.headline5!.copyWith(
              fontWeight: SgeFontWeight.semiBold,
            ),
          ),
          const SizedBox(height: 16),
          Text('headline1', style: theme.textTheme.headline1),
          Text('headline2', style: theme.textTheme.headline2),
          Text('headline3', style: theme.textTheme.headline3),
          Text('headline4', style: theme.textTheme.headline4),
          Text('headline5', style: theme.textTheme.headline5),
          Text('headline6', style: theme.textTheme.headline6),
          Text('subtitle1', style: theme.textTheme.subtitle1),
          Text('subtitle2', style: theme.textTheme.subtitle2),
          Text('bodyText1', style: theme.textTheme.bodyText1),
          Text('bodyText2', style: theme.textTheme.bodyText2),
          Text('button', style: theme.textTheme.button),
          const SizedBox(height: 32),
        ]),
      ),
    );
  }
}
