import 'package:bloc_counter/bloc/counter_bloc.dart';
import 'package:bloc_counter/resources/app_strings.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bloc = BlocProvider.getBloc<CounterBloc>();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.homePageTitle.toUpperCase()),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: _buildCounter(),
        ),
      ),
      bottomNavigationBar: _buildBottomBarControls(),
    );
  }

  Widget _buildCounter() {
    return StreamBuilder<int>(
      stream: _bloc.counterStream,
      builder: (_, AsyncSnapshot<int> snapshot) {
        if (snapshot.hasData) {
          return Text(
            '${snapshot.data}',
            style: Theme.of(context).textTheme.headline2,
          );
        }

        return CircularProgressIndicator();
      },
    );
  }

  Widget _buildBottomBarControls() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: _buildActionButton(
              child: Icon(Icons.add),
              onTap: _bloc.increment,
            ),
          ),
          Expanded(
            child: _buildActionButton(
              child: Icon(Icons.remove),
              onTap: _bloc.decrement,
            ),
          ),
          Expanded(
            child: _buildActionButton(
              child: Icon(Icons.help_outline),
              onTap: _bloc.random,
            ),
          ),
          Expanded(
            child: _buildActionButton(
              child: Icon(Icons.autorenew),
              onTap: _bloc.reset,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    @required Widget child,
    @required VoidCallback onTap,
  }) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: FloatingActionButton(
        child: child,
        onPressed: onTap,
      ),
    );
  }
}
