import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:new_api_explain/view_model/search_cubit/search_cubit.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  bool showEmptyCase = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff242A32),
      appBar: AppBar(
        backgroundColor: Color(0xff242A32),
        title: Text(
          "Search",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          // search _ api
          TextFormField(
            onChanged: (value) {
              // api call
              context.read<SearchCubit>().search(value);
            },
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              hintText: "Search",
              fillColor: Color(0xff3A3F47),
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          //handle case loading , case success , case failure
          Lottie.asset('assets/animations/No Item In Box.json'),
        ],
      ),
    );
  }
}
