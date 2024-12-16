import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/AT%20cyber%20interview,dec%2016/Q%208/screen/wishlist%20screen.dart';
import 'package:provider/provider.dart';



import '../provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<MovieProvider>(
      create: (BuildContext context) => MovieProvider(),
      child: MaterialApp(home: MovieMain(),)));

}


class MovieMain extends StatelessWidget {
  const MovieMain({super.key});

  @override
  Widget build(BuildContext context) {

    var wishmovies = context.watch<MovieProvider>().moviesWishList;
    var movies = context.watch<MovieProvider>().movie;
    return Scaffold(
      appBar: AppBar(title: Text("Movies"),),
      body: Column(
        children: [
          ElevatedButton.icon(
              onPressed: ()=>Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context)=> WishListScreen())),
              icon: const Icon(Icons.favorite_border),
              label: Text("GoTo WishList ${wishmovies.length}")),
          Expanded(
              child: ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (context,index){
                    //movies are list<map> here currentMovie is now a map
                    final currentMovie = movies[index];
                    return Card(
                      child: ListTile(
                        title: Text(currentMovie.title),
                        subtitle: Text(currentMovie.time!),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: wishmovies.contains(currentMovie)?Colors.red:Colors.black26,
                          ),
                          onPressed: (){
                            if(!wishmovies.contains(currentMovie)){
                              context
                                  .read<MovieProvider>()
                                  .addtoWishList(currentMovie);
                            }else{
                              context
                                  .read<MovieProvider>()
                                  .removeFromWishList(currentMovie);
                            }
                          }, ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}