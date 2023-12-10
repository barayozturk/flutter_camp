import 'package:flutter/material.dart';
import 'package:pokedexa_pp/models/pokemon_model.dart';
import 'package:pokedexa_pp/sevices/pokidex_api.dart'; // Fixed typo here

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key); // Fixed constructor syntax

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<PokemonModel>> _pokemonListFuture;

  @override
  void initState() {
    super.initState();
    _pokemonListFuture = PokeApi.getPokemonData();
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: FutureBuilder<List<PokemonModel>>(
      future: _pokemonListFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> _listem = snapshot.data!;
          return ListView.builder(
            itemCount: _listem.length,
            itemBuilder: (context, index) {
              var oankipokemon = _listem[index];
              return ListTile(
                title: Text(oankipokemon.name.toString()),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Hata: ${snapshot.error}'),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ),
  );
}
}
