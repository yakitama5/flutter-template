import 'package:features_goods/src/domain/entity/goods.dart';
import 'package:flutter/material.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

class GoodsDetailPage extends StatefulWidget {
  const GoodsDetailPage({super.key, required this.goods});

  final Goods goods;

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<GoodsDetailPage> {
  final LinkedScrollControllerGroup _controllerGroup =
      LinkedScrollControllerGroup();

  static const imageHeight = 480.0;
  static const duplicateHeight = 16.0;

  late final ScrollController _appBarController;
  late final ScrollController _bodyController;

  @override
  void initState() {
    super.initState();
    _appBarController = _controllerGroup.addAndGet();
    _bodyController = _controllerGroup.addAndGet();
  }

  @override
  void dispose() {
    _appBarController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Body > AppBarの順で配置し、`LinkedScroll`で同期する
      body: Stack(
        children: [
          CustomScrollView(
            controller: _appBarController,
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: imageHeight,
                title: const Text('Linked Scroll Controller Group'),
                flexibleSpace: FlexibleSpaceBar(
                  background: OverflowBox(
                    child: Image.network(
                      height: imageHeight,
                      fit: BoxFit.fitHeight,
                      widget.goods.imageUrl!,
                    ),
                  ),
                ),
              ),
              const SliverFillRemaining(),
            ],
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: kToolbarHeight),
              child: CustomScrollView(
                controller: _bodyController,
                slivers: [
                  SliverPadding(
                    // AppBarとBodyに重なりを持たせて表示
                    padding: const EdgeInsets.only(
                      top: imageHeight - kToolbarHeight - duplicateHeight,
                    ),
                    sliver: SliverList.separated(
                      itemBuilder: (context, index) {
                        if (index <= 0) {
                          return const _FirstTile();
                        }
                        return ListTile(title: Text('Index $index'));
                      },
                      separatorBuilder: (_, __) => const Divider(),
                    ),
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

class _FirstTile extends StatelessWidget {
  const _FirstTile();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: cs.primary,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: const SizedBox(
        height: 160,
        width: double.infinity,
      ),
    );
  }
}




// import 'package:features_goods/src/domain/entity/goods.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:linked_scroll_controller/linked_scroll_controller.dart';

// class GoodsDetailPage extends StatefulWidget {
//   const GoodsDetailPage({
//     super.key,
//     required this.goods,
//   });

//   final Goods goods;

//   @override
//   State<StatefulWidget> createState() => _State();
// }

// class _State extends State<GoodsDetailPage> {
//   final LinkedScrollControllerGroup _controllers =
//       LinkedScrollControllerGroup();
//   late final ScrollController _appbar;
//   late final ScrollController _body;

//   @override
//   void initState() {
//     super.initState();
//     _appbar = _controllers.addAndGet();
//     _body = _controllers.addAndGet();
//   }

//   @override
//   void dispose() {
//     _appbar.dispose();
//     _body.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           CustomScrollView(
//             controller: _appbar,
//             slivers: [
//               SliverAppBar(
//                 toolbarHeight: 110,
//                 pinned: true,
//                 expandedHeight: 500,
//                 flexibleSpace: FlexibleSpaceBar(
//                   background: OverflowBox(
//                     fit: OverflowBoxFit.max,
//                     child: Image.network(
//                         height: 500,
//                         fit: BoxFit.fitWidth,
//                         'https://static.amanaimages.com/imgroom/rf_preview640/10734/10734000115.jpg'),
//                   ),
//                 ),
//               ),
//               SliverFillRemaining()
//             ],
//           ),
//           SafeArea(
//             top: true,
//             child: Padding(
//               padding: EdgeInsets.only(top: 110),
//               child: CustomScrollView(
//                 controller: _body,
//                 slivers: [
//                   SliverPadding(
//                     padding: EdgeInsets.only(top: 360),
//                     sliver: SampleList(),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SampleList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SliverList.separated(
//       itemBuilder: (context, index) {
//         if (index <= 0) {
//           return DecoratedBox(
//             decoration: BoxDecoration(
//                 color: Colors.red,
//                 borderRadius: BorderRadius.vertical(top: Radius.circular(32))),
//             child: SizedBox(
//               height: 100,
//               width: double.infinity,
//             ),
//           );
//         }

//         return ListTile(
//           title: Text('Index $index'),
//         );
//       },
//       separatorBuilder: (context, index) => Divider(),
//     );
//   }
// }
