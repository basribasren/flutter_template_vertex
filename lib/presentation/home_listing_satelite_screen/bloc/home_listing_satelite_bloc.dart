import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application31/widgets/custom_bottom_bar.dart';import 'package:basri_s_application31/presentation/home_listing_satelite_screen/models/home_listing_satelite_model.dart';part 'home_listing_satelite_event.dart';part 'home_listing_satelite_state.dart';class HomeListingSateliteBloc extends Bloc<HomeListingSateliteEvent, HomeListingSateliteState> {HomeListingSateliteBloc(HomeListingSateliteState initialState) : super(initialState) { on<HomeListingSateliteInitialEvent>(_onInitialize); }

_onInitialize(HomeListingSateliteInitialEvent event, Emitter<HomeListingSateliteState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
