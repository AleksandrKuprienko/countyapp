import 'dart:convert';

import 'package:countyapp/data/entities/flutter_widget_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widgetkit/flutter_widgetkit.dart';

import 'package:countyapp/presentation/ui/pages/home/bloc/home_bloc.dart';
import 'package:countyapp/presentation/ui/pages/country/country.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Country App'),
      ),
      child: BlocProvider<HomeBloc>(
        create: (context) => HomeBloc()..add(InitialHomePageEvent()),
        child: SafeArea(
          bottom: false,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            height: double.infinity,
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is ResponseSuccessState) {
                  return ListView.builder(
                    itemCount: state.contry.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CountryPage(
                                country: state.contry[index],
                              ),
                            ),
                          );
                          WidgetKit.setItem('widgetData', jsonEncode(FlutterWidgetData(state.contry[index].name)),
                              'group.com.akuper');
                          WidgetKit.reloadAllTimelines();
                        },
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                          margin: EdgeInsets.only(bottom: 5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 2.0, color: Colors.grey[100]),
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.network(
                                state.contry[index].flag,
                                width: 50,
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Text(
                                  state.contry[index].name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(state.contry[index].numericCode ?? 'Error')
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                    child: CupertinoActivityIndicator(),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
