//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:provider/provider.dart';
// import 'package:smart_movie/data/service/data/movie_detail/data_movie_detail.dart';
//
//
//
// class MovieSearchDelegate extends SearchDelegate {
//
//
//   @override
//   String? get searchFieldLabel => 'Buscar pelicula';
//
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     //Acciones
//     return <Widget>[
//       IconButton(onPressed: (){
//         query = '';
//       }, icon: const Icon(Icons.clear))
//     ];
//   }
//
//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(onPressed: (){
//       //Navigator.of(context).pop();
//       close(context, null);
//     }, icon: const Icon(Icons.arrow_back));
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     return Text('Buils results');
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     if(query.isEmpty){
//       return Center(
//         child: SvgPicture.asset('assets/icons/movie-ilustrations.svg',
//         alignment: Alignment.center,)
//       );
//     }
//
//     // MoviesProvider moviesProvider = Provider.of<MoviesProvider>(context, listen: false);
//     // moviesProvider.getSuggestionsByQuery(query);
//
//     return StreamBuilder(
//      // stream: moviesProvider.suggestionStream,
//    //   builder: (BuildContext context, AsyncSnapshot<List<Movi>> snapshot){
//
//         print('Ejecutando streamBuilder');
//
//         if(!snapshot.hasData){
//           return const Center(
//             child:  CupertinoActivityIndicator(),
//           );
//         }
//
//         if(snapshot.data!.isEmpty){
//           return emptyContainer();
//         }
//
//         final movies = snapshot.data!;
//
//         return ListView.builder(
//           itemCount: movies.length,
//           itemBuilder: ( _, int index){
//             return Container();
//           }
//         );
//     });
//   }
//
//   Widget emptyContainer() {
//     return Container(
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const [
//             Text('No se encontraron coincidencias',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 18
//             ),),
//             Image(
//               width: 200,
//               image: AssetImage('assets/empty.png')
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
// }
//
// // class MovieItem extends StatelessWidget {
// //
// //   final MovieDetail movie;
// //
// //   const MovieItem(this.movie);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //
// //     movie.heroId = 'search-${movie.id}';
// //
// //     return Padding(
// //       padding: const EdgeInsets.all(12.0),
// //       child: Hero(
// //         tag: movie.heroId!,
// //         child: ListTile(
// //
// //           title: Text(movie.title),
// //           subtitle: Text(movie.originalTitle),
// //           leading: FadeInImage.assetNetwork(
// //             height: double.infinity,
// //             fit: BoxFit.cover,
// //             placeholder: 'assets/no-image.jpg',
// //             image: movie.getFullPosterImage()
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }