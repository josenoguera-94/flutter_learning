import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {

  static const name = 'infinite_screen';

  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {

  List<int> imagesIds = [1,2,3,4,5];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      // scrollController.position.maxScrollExtent; // Para saber el máximo scroll
      // scrollController.position.pixels; // Para saber el scroll actual

        if( (scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent ) {
          // Load next page
          loadNextPage();
        }
    });


  }

  @override
  void dispose() {
    scrollController.dispose();
    isMounted = false;
    super.dispose();
  }

  Future loadNextPage() async {

    if ( isLoading ) return;
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));

    addFiveImages();
    isLoading = false;

    if( !isMounted ) return;

    setState(() {});
    moveScrollToBottom();
  }

  Future<void> onRefresh() async {
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    if ( !isMounted ) return;

    isLoading = false;
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1 );
    addFiveImages();

    setState(() {});
    

  }


  void moveScrollToBottom() {

    if( scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent ) return;

    scrollController.animateTo(
      scrollController.position.pixels + 120, // 0, subira al inicio 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.fastOutSlowIn
    );

  }



  void addFiveImages() {
    final lastId = imagesIds.last;
    // imagesIds.clear(); // Para que no se dupliquen las imágenes
    // imagesIds.add(value) // Para agregar un valor
    imagesIds.addAll(
      [1,2,3,4,5].map((e) => lastId + e)
    );

    // setState(() {
      
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding( // MediaQuery.removePadding para que no haya padding en la parte superior e inferior del ListView
        // removeTop y removeBottom para que no haya padding en la parte superior e inferior del ListView
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          onRefresh: onRefresh,
          edgeOffset: 10,
          strokeWidth: 2,
          child: ListView.builder( // ListView.builder para que se rendericen solo los elementos que se ven en pantalla, bajo demanda
            controller: scrollController,
            itemCount: imagesIds.length,
            itemBuilder: (context, index) {
              return FadeInImage( // FadeInImage es un widget que muestra una imagen con un efecto de fade in, es decir muestra una imagen mientras se carga la imagen definitiva
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
                placeholder: const AssetImage('assets/images/jar-loading.gif'), 
                image: NetworkImage('https://picsum.photos/id/${ imagesIds[index] }/500/300'),
              );
            },
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: ()=> context.pop(),
        // child: const Icon(Icons.arrow_back_ios_new_outlined),
        child: isLoading 
          ? SpinPerfect(
              infinite: true,
              child: const Icon(Icons.refresh_rounded)
            )
          : FadeIn(child: const Icon(Icons.arrow_back_ios_new_outlined)),
      ),
    );
  }
}