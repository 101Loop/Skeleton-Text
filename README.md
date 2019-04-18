# skeleton_text  
  
A package provides an easy way to add skeleton text loading animation in Flutter project  
  
<p>  
 <img src="https://github.com/imlegend19/Skeleton-Text/blob/master/skeleton_text.gif?raw=true"/>
</p>  
 
## Dependency 
```
dependencies:
  skeleton_text:
```
 
## How To Use  
  

  ```
  import 'package:skeleton_text/skeleton_text.dart';
  ```

> To achieve the above example animation use the following code :

     ListView.builder(  
        scrollDirection: Axis.vertical,  
        physics: BouncingScrollPhysics(),  
        itemCount: 10,  
        itemBuilder: (BuildContext context, int index) {  
            return Padding(  
              padding: const EdgeInsets.all(8.0),  
              child: Container(  
                  decoration: BoxDecoration(  
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),  
                      color: Colors.white70),  
                  child: Container(  
                    child: Row(  
                        crossAxisAlignment: CrossAxisAlignment.center,  
                        mainAxisSize: MainAxisSize.max,  
                        mainAxisAlignment: MainAxisAlignment.start,  
                        children: <Widget>[  
                            SkeletonAnimation(  
                              child: Container(  
                                width: 70.0,  
                                height: 70.0,  
                                decoration: BoxDecoration(  
                                    color: Colors.grey[300],  
                                ),  
                              ),  
                            ),  
                            Column(  
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                              crossAxisAlignment: CrossAxisAlignment.start,  
                              mainAxisSize: MainAxisSize.max,  
                              children: <Widget>[  
                                Padding(  
                                  padding:  
                                      const EdgeInsets.only(left: 15.0, bottom: 5.0),  
                                  child: SkeletonAnimation(  
                                    child: Container(  
                                    height: 15,  
                                    width: MediaQuery.of(context).size.width * 0.6,  
                                    decoration: BoxDecoration(  
                                      borderRadius: BorderRadius.circular(10.0),  
                                      color: Colors.grey[300]),  
                                    ),  
                                  ),  
                                ),  
                                Padding(  
                                  padding: const EdgeInsets.only(left: 15.0),  
                                  child: Padding(  
                                    padding: const EdgeInsets.only(right: 5.0),  
                                    child: SkeletonAnimation(  
                                      child: Container(  
                                        width: 60,  
                                        height: 13,  
                                        decoration: BoxDecoration(  
                                          borderRadius: BorderRadius.circular(10.0),  
                                          color: Colors.grey[300]),  
                                        ),  
                                      ),  
                                    ),  
                                  ),  
                                ],  
                              ),  
                            ],  
                        ),  
                    ),  
                  ),  
              );  
            })

## Explanation 

I have created a List builder of 10 Containers. Wrapping any widget by SkeletonAnimation would give a beautiful loading animation.

## SkeletonAnimation<T> Constructor :

```
  SkeletonAnimation(
      {@required this.child,
      this.shimmerColor = Colors.white54,
      this.gradientColor = const Color.fromARGB(0, 244, 244, 244),
      this.curve = Curves.fastOutSlowIn,
      Key key}
  )
```

The above example uses default value for `shimmerColor` and `gradientColor`.

