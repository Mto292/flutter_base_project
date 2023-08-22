import 'package:flutter/material.dart';

typedef SipNotifier = ChangeNotifier;

extension AppStateExtension on BuildContext {
  T getState<T extends SipNotifier>() {
    return _SipInheritedWidget.of<T>(this).notifier;
  }
}

class _SipInheritedWidget<T extends SipNotifier> extends InheritedWidget {
  final T notifier;

  const _SipInheritedWidget({
    super.key,
    required this.notifier,
    required super.child,
  });

  static _SipInheritedWidget<T>? maybeOf<T extends SipNotifier>(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_SipInheritedWidget<T>>();
  }

  static _SipInheritedWidget<T> of<T extends SipNotifier>(BuildContext context) {
    final _SipInheritedWidget<T>? result = maybeOf<T>(context);
    assert(result != null, 'No AppConfig found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(_SipInheritedWidget oldWidget) {
    return true;
  }
}

class SipState<T extends SipNotifier> extends StatefulWidget {
  final T sipState;
  final WidgetBuilder builder;

  const SipState({
    Key? key,
    required this.sipState,
    required this.builder,
  }) : super(key: key);

  @override
  State<SipState> createState() => _SipStateState<T>();
}

class _SipStateState<T extends SipNotifier> extends State<SipState> {
  @override
  void initState() {
    super.initState();
    widget.sipState.addListener(_update);
  }

  @override
  didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.sipState != widget.sipState) {
      oldWidget.sipState.removeListener(_update);
      widget.sipState.addListener(_update);
    }
  }

  @override
  dispose() {
    widget.sipState.removeListener(_update);
    super.dispose();
  }

  _update() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return _SipInheritedWidget<T>(
      notifier: widget.sipState as T,
      child: Builder(
        builder: (ctx) {
          return widget.builder(ctx);
        },
      ),
    );
  }
}
