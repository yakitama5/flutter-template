import 'package:features_goods/src/domain/entity/goods.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

class GoodsDetailPage extends StatefulWidget {
  const GoodsDetailPage({
    super.key,
    required this.goods,
  });

  final Goods goods;

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<GoodsDetailPage> {
  final LinkedScrollControllerGroup _controllers =
      LinkedScrollControllerGroup();
  late final ScrollController _appbar;
  late final ScrollController _body;

  @override
  void initState() {
    super.initState();
    _appbar = _controllers.addAndGet();
    _body = _controllers.addAndGet();
  }

  @override
  void dispose() {
    _appbar.dispose();
    _body.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: _appbar,
            slivers: [
              SliverAppBar(
                toolbarHeight: 110,
                pinned: true,
                expandedHeight: 500,
                flexibleSpace: FlexibleSpaceBar(
                  background: OverflowBox(
                    fit: OverflowBoxFit.max,
                    child: Image.network(
                        height: 500,
                        fit: BoxFit.fitWidth,
                        'https://static.amanaimages.com/imgroom/rf_preview640/10734/10734000115.jpg'),
                  ),
                ),
              ),
              SliverFillRemaining()
            ],
          ),
          SafeArea(
            top: true,
            child: Padding(
              padding: EdgeInsets.only(top: 110),
              child: CustomScrollView(
                controller: _body,
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.only(top: 360),
                    sliver: SampleList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SampleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) {
        if (index <= 0) {
          return DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.vertical(top: Radius.circular(32))),
            child: SizedBox(
              height: 100,
              width: double.infinity,
            ),
          );
        }

        return ListTile(
          title: Text('Index $index'),
        );
      },
      separatorBuilder: (context, index) => Divider(),
    );
  }
}
