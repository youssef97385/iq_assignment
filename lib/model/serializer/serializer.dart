library serializer;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:iq_sample_app/model/category_item_model/category_item_model.dart';
import 'package:iq_sample_app/model/contact_model/contact_model.dart';
import 'package:iq_sample_app/model/home_response_model/home_response_model.dart';
import 'package:iq_sample_app/model/item_model/item_model.dart';
import 'package:iq_sample_app/model/product_item_model/product_item_model.dart';
import 'package:iq_sample_app/model/section_model/section_model.dart';
import 'package:iq_sample_app/model/slider_item_model/slider_item_model.dart';
import 'package:iq_sample_app/model/store_info_model/store_info_model.dart';
import 'package:iq_sample_app/model/store_item_model/store_item_model.dart';
import 'package:built_collection/built_collection.dart';
part 'serializer.g.dart';

@SerializersFor(const [
      CategoryItemModel,
      ContactModel,
      HomeResponseModel,
      ProductItemModel,
      SectionModel,
      SliderItemModel,
      StoreInfoModel,
      StoreItemModel,
  ItemModel
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())

      // ..addBuilderFactory(
      //     (FullType(
      //           SectionModel,
      //           [
      //                 const FullType(CategoryItemModel),
      //           ],
      //     )),
      //         () => SectionModelBuilder<CategoryItemModel>())


      // ..addBuilderFactory(
      //     (FullType(
      //           SectionModel,
      //           [
      //                 const FullType(ProductItemModel),
      //           ],
      //     )),
      //         () => SectionModelBuilder<ProductItemModel>())

      //
      // ..addBuilderFactory(
      //     (FullType(
      //           SectionModel,
      //           [
      //                 const FullType(SliderItemModel),
      //           ],
      //     )),
      //         () => SectionModelBuilder<SliderItemModel>())

      //
      // ..addBuilderFactory(
      //     (FullType(
      //           SectionModel,
      //           [
      //                 const FullType(
      //                     StoreItemModel),
      //           ],
      //     )),
      //         () => SectionModelBuilder<StoreItemModel>())

  ..addBuilderFactory(
      (FullType(

        BuiltList,
        [
          const FullType(HomeResponseModel),
        ],)),
          () => ListBuilder<HomeResponseModel>())

  ..addBuilderFactory(
      (FullType(

        BuiltList,
        [
          const FullType(ItemModel),
        ],)),
          () => ListBuilder<ItemModel>())



  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(SectionModel),
        ],
      )),
          () => ListBuilder<SectionModel>())


  // ..addBuilderFactory(
  //     (FullType(
  //       SectionModel,
  //       [
  //         FullType(
  //           BuiltList,
  //           [
  //             const FullType(ItemModel),
  //           ],
  //         ),
  //       ],
  //     )),
  //         () => SectionModelBuilder<BuiltList<ItemModel>>())


  // ..addBuilderFactory(
  //     (FullType(
  //       SectionModel,
  //       [
  //         FullType(
  //           BuiltList,
  //           [
  //             const FullType(ProductItemModel),
  //           ],
  //         ),
  //       ],
  //     )),
  //         () => SectionModelBuilder<BuiltList<ProductItemModel>>())

  //
  // ..addBuilderFactory(
  //     (FullType(
  //       SectionModel,
  //       [
  //         FullType(
  //           BuiltList,
  //           [
  //             const FullType(SliderItemModel),
  //           ],
  //         ),
  //       ],
  //     )),
  //         () => SectionModelBuilder<BuiltList<SliderItemModel>>())

  // ..addBuilderFactory(
  //     (FullType(
  //       SectionModel,
  //       [
  //         FullType(
  //           BuiltList,
  //           [
  //             const FullType(StoreItemModel),
  //           ],
  //         ),
  //       ],
  //     )),
  //         () => SectionModelBuilder<BuiltList<StoreItemModel>>())
  //


  //
  // ..addBuilderFactory(
  //     (FullType(
  //       SectionModel,
  //       [
  //         const FullType( BuiltList,
  //           [
  //             const FullType(CategoryItemModel),
  //           ],),
  //       ],
  //     )),
  //         () => SectionModelBuilder<CategoryItemModel>())


  //
  // ..addBuilderFactory(
  //     (FullType(
  //       SectionModel,
  //       [
  //         const FullType( BuiltList,
  //           [
  //             const FullType(ProductItemModel),
  //           ],),
  //       ],
  //     )),
  //         () => SectionModelBuilder<ProductItemModel>())


  // ..addBuilderFactory(
  //     (FullType(
  //       SectionModel,
  //       [
  //         const FullType( BuiltList,
  //           [
  //             const FullType(SliderItemModel),
  //           ],),
  //       ],
  //     )),
  //         () => SectionModelBuilder<SliderItemModel>())


  // ..addBuilderFactory(
  //     (FullType(
  //       SectionModel,
  //       [
  //         const FullType( BuiltList,
  //           [
  //             const FullType(StoreItemModel),
  //           ],),
  //       ],
  //     )),
  //         () => SectionModelBuilder<StoreItemModel>())



  ..addBuilderFactory(
      const FullType(
          BuiltList, const [const FullType(CategoryItemModel)]),
          () => new ListBuilder<CategoryItemModel>())
  ..addBuilderFactory(
      const FullType(
          BuiltList, const [const FullType(ProductItemModel)]),
          () => new ListBuilder<ProductItemModel>())

  ..addBuilderFactory(
      const FullType(
          BuiltList, const [const FullType(SliderItemModel)]),
          () => new ListBuilder<SliderItemModel>())
  ..addBuilderFactory(
      const FullType(
          BuiltList, const [const FullType(StoreItemModel)]),
          () => new ListBuilder<StoreItemModel>())

  ..addBuilderFactory(

         const FullType(SectionModel),
          () => new ListBuilder<SectionModel>())


  ..addBuilderFactory(

      const FullType(HomeResponseModel),
          () => new ListBuilder<HomeResponseModel>())



  ..addBuilderFactory(
      const FullType(
          BuiltList, const [const FullType(ItemModel)]),
          () => new ListBuilder<ItemModel>())
)
    .build();
