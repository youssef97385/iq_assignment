import 'package:bloc/bloc.dart';
import 'package:iq_sample_app/Ui/home_screen/bloc/home_event.dart';
import 'package:iq_sample_app/Ui/home_screen/bloc/home_state.dart';
import 'package:iq_sample_app/core/constent.dart';
import 'package:iq_sample_app/data/db/db/db_services.dart';
import 'package:iq_sample_app/data/repository/irepository.dart';
import 'package:iq_sample_app/model/home_response_model/home_response_model.dart';
import 'package:iq_sample_app/model/section_model/section_model.dart';
import 'package:built_collection/built_collection.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  IRepository _iRepository;

  DBService _dbService;
  HomeBloc(this._iRepository,this._dbService) : super(HomeState.initial());

  @override
  HomeState get initialState => HomeState.initial();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is GetHomeData) {
      try {



        yield state.rebuild((b) => b..isLoading = true);
        BuiltList<SectionModel> data = await _iRepository.getHomeSections();



        var cats = await _dbService.getItems(sectionType: "categories");

        var products =
            data.firstWhere((data) => data.sectionType == BEST_PRODUCTS);

        var slider =
            data.firstWhere((data) => data.sectionType == SLIDER);

        var bestProducts =
            data.firstWhere((data) => data.sectionType == BEST_OF_THE_BEST);

        var categories =
            data.firstWhere((data) => data.sectionType == CATEGORIES);

        var stores =
            data.firstWhere((data) => data.sectionType == STORES);

        yield state.rebuild((b) => b
          ..isLoading = false
          ..sliderSection = slider.toBuilder()
          ..categoriesSection = categories.toBuilder()
          ..bestProductsSection = bestProducts.toBuilder()
          ..productsSection = products.toBuilder()
          ..storesSection = stores.toBuilder());
      } catch (e) {
        print("error home data $e");
        yield state.rebuild((b) => b..isLoading = false);
      }
    }
  }
}
