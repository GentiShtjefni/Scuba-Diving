import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:project/mainDirectory/AppBar.dart';


class Recherche extends StatefulWidget {
  const Recherche({Key key}) : super(key: key);

  @override
  _RechercheState createState() => _RechercheState();
}

class _RechercheState extends State<Recherche> {

  static const historyLength = 5;
  List<String> _searchHistory = [
    'Scuba',
    'Diving',
    'cool app',
    'hello',
    'aventure',
  ];
  List<String> filteredSearchHistory;
  String selectedTerm;
  List<String> filterSearchTerm({
  @required String filter,
}) {
    if(filter!= null && filter.isNotEmpty){
      return _searchHistory.reversed.where((term) => term.startsWith(filter)).toList();
    }else {
      return _searchHistory.reversed.toList();
    }
  }

  void addSearchTerm(String term){
    if(_searchHistory.contains(term)){
      putSearchTermFirst(term);
      return;
    }

    _searchHistory.add(term);
    if(_searchHistory.length > historyLength){
        _searchHistory.removeRange(0, _searchHistory.length-historyLength);
    }

    filteredSearchHistory = filterSearchTerm(filter: null);
  }

  void deleteSearchTerm(String term){
    _searchHistory.removeWhere((t) => t == term);
    filteredSearchHistory = filterSearchTerm(filter: null);
  }

  void putSearchTermFirst(String term){
    deleteSearchTerm(term);
    addSearchTerm(term);
  }

  FloatingSearchBarController searchController;

  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    searchController = FloatingSearchBarController();
    filteredSearchHistory = filterSearchTerm(filter: null);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      currentIndex: 0,
      isSelectedHome: false,
      isSelectedSecond: false,
      isSelectedThird: false,
      isSelectedFourth: false,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage('images/bg1.png'),
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
          ),
          child: new FloatingSearchBar(
                  controller: searchController,
                    body: FloatingSearchBarScrollNotifier(
                        child: SearchResultsListView(
                            searchTerm: selectedTerm
                        )
                    ),
                  transition: CircularFloatingSearchBarTransition(),
                  physics: BouncingScrollPhysics(),
                  title: Text(
                      selectedTerm ?? 'Recherche Rapide',
                  style: Theme.of(context).textTheme.headline6,
                  ),
                  hint: 'Recherche par nom',
                  actions: [
                    FloatingSearchBarAction.searchToClear(),
                  ],
                  onQueryChanged: (query){
                    setState(() {
                      filteredSearchHistory = filterSearchTerm(filter: query);
                    });
                  },
                  onSubmitted: (query){
                    setState(() {
                      addSearchTerm(query);
                      selectedTerm = query;
                    });
                    searchController.close();
                  },
                  builder: (context, transition){
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Material(
                        color: Colors.white,
                        elevation: 8,
                        child: Builder(
                          builder: (context){
                            if(filteredSearchHistory.isEmpty && searchController.query.isEmpty){
                              return Container(
                                height: 56,
                                width: double.infinity,
                                alignment: Alignment.center,
                                child: Text(
                                  'Start searching',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              );
                            }else if(filteredSearchHistory.isEmpty){
                              return ListTile(
                                title: Text(searchController.query),
                                leading: Icon(Icons.search),
                                onTap: (){
                                  setState(() {
                                    addSearchTerm(searchController.query);
                                    selectedTerm = searchController.query;
                                  });
                                  searchController.close();
                                },

                              );
                            }else {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: filteredSearchHistory
                                    .map(
                                      (term) => ListTile(
                                    title: Text(
                                      term,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    leading: const Icon(Icons.history),
                                    trailing: IconButton(
                                      icon: const Icon(Icons.clear),
                                      onPressed: () {
                                        setState(() {
                                          deleteSearchTerm(term);
                                        });
                                      },
                                    ),
                                    onTap: () {
                                      setState(() {
                                        putSearchTermFirst(term);
                                        selectedTerm = term;
                                      });
                                      searchController.close();
                                    },
                                  ),
                                )
                                    .toList(),
                              );
                            }
                          },
                        ),
                      ),
                    );
                  },
                ),
        ),
              //     Padding(
          //       padding: const EdgeInsets.fromLTRB(20, 10, 20,10),
          //       child: new Material(
          //   elevation: 5.0,
          //   borderRadius: BorderRadius.circular(22.0),
          //   child: new TextField(
          //       // autofocus: true,
          //       textAlign: TextAlign.start,
          //       decoration: InputDecoration(
          //         hintText: 'Recherche par Nom, Lieu',
          //         hintStyle: TextStyle(
          //           fontSize: 20,
          //         ),
          //         suffixIcon: new Container(
          //           margin: const EdgeInsets.all(5.1),
          //           decoration: new BoxDecoration(
          //             color: Colors.green,
          //             borderRadius: BorderRadius.only(
          //                 topRight: Radius.circular(15.0),
          //                 bottomRight: Radius.circular(15.0)),
          //           ),
          //           child: Icon(
          //               Icons.search,
          //               size: 24.0,
          //               color: Colors.white,
          //             ),
          //
          //         ),
          //         border: InputBorder.none,
          //         contentPadding:
          //         EdgeInsets.symmetric(horizontal: 22.0, vertical: 15.0),
          //       ),
          //   ),
          // ),
          //     ),
          //     Center(
          //       child: new Text('Dernières recherches',
          //       style: TextStyle(
          //         color: Colors.blue.shade900,
          //         fontSize: 18,
          //       )),
          //     ),
      ),
    );
  }
}

class SearchResultsListView extends StatelessWidget {
  final String searchTerm;

  const SearchResultsListView({
    Key key,
    @required this.searchTerm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (searchTerm == null) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.search,
              size: 64,
              color: Colors.blue,
            ),
            Text(
              'Start searching',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
              ),
            )
          ],
        ),
      );
    }


    return ListView(
      padding: EdgeInsets.only(top: 70),
      children: List.generate(
        9,
            (index) => ListTile(
          title: Text('$searchTerm search result'),
          subtitle: Text(index.toString()),
        ),
      ),
    );
  }
}

