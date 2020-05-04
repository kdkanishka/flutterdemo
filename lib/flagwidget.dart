
import 'package:flutter/material.dart';

import 'flagmodel.dart';
import 'jsonlistutil.dart';

class FlagWidget extends StatefulWidget {
  @override
  _FlagWidgetState createState() => _FlagWidgetState();
}

class _FlagWidgetState extends State<FlagWidget> {

  Future<List<Flag>> _flags;


  @override
  void initState() {
    super.initState();

    _flags = getFlagList("http://www.mocky.io/v2/5eaef90c33000069009f42a3");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flag Widget"),),
      body: FutureBuilder(
        future: _flags,
        builder: (context, snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.done :
              List<Flag> flags = snapshot.data;
              return _createFlagWidget(flags);
            default :
              return Center(child : CircularProgressIndicator());
          }
        },
      )
    );
  }

  Widget _createFlagWidget(List<Flag> flags){
    return ListView.builder(
      itemCount: flags.length,
        itemBuilder: (ctx, index){
        Flag currentFlag = flags[index];
          return Card(
            child: ListTile(
              leading: Image.network("https://www.countryflags.io/${currentFlag.code}/flat/64.png"),
              title: Text("${currentFlag.name}"),),
          );
        }
    );
  }
}
