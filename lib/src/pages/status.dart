import 'package:band_names/src/services/socket_service.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('ServerStatus: ${socketService.serverStatus}')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {
          socketService.socket.emit('emitir-mensaje',
              {'Nombre': 'Flutter', 'mensaje': 'Hola desde flutter'});
        },
      ),
    );
  }
}
