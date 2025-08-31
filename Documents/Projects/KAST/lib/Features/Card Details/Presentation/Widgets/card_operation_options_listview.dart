import 'package:flutter/material.dart';
import 'package:kast_assignment/Features/Card%20Details/Domain/card_operation_type.dart';
import 'package:kast_assignment/Features/Card%20Details/Presentation/Mappers/card_operation_ui_mapper.dart';
import '../../../../Core/Common Widgets/options_cell_view.dart';

class CardOperationsListView extends StatelessWidget{
  const CardOperationsListView({
    super.key,
    this.items = CardOperationType.values,
    this.padding = const EdgeInsets.all(16)
  });

  final List<CardOperationType> items;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: ScrollController(keepScrollOffset: false),
      padding: padding,
      itemCount: items.length,

      separatorBuilder: (_, _) => const SizedBox(height: 12),

        itemBuilder: (context, index) {
        final type = items[index];
        return OptionCell(
            title: type.title,
            icon: type.icon
        );
      }
    );
  }
}