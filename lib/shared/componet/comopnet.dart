


import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nppnews/modules/Webview/Webview.dart';
Widget buildArticalitem(Map articles,context)
{
  return InkWell(
    onTap: ()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => WebviewScrenn(articles['url']),));
    },
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(

        children: [
          Container(
            height: 150.0,
            width: 150.0,

            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("${articles['urlToImage']}"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          SizedBox(width: 10.0,),
          Container(
            height: 120.0,
            width: 230.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Expanded(child: Container(child: Text("${articles['title']}",
                    style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,),
                  maxLines:3,
                  overflow: TextOverflow.ellipsis,
                ),
                )),
                Text("${articles['publishedAt']}",style: TextStyle(color: Colors.grey),),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
Widget myDivader()
{
  return SizedBox(
    child: Container(
      color: Colors.grey,
      width: double.infinity,
      height: 1.0,
    ),
  );
}
Widget articaleBluder(list,context,{isSearch=false})
{
  return ConditionalBuilder(condition:list.length>0 , builder: (context) => ListView.separated(
      itemBuilder: (context, index) => buildArticalitem(list[index],context) ,
      physics: BouncingScrollPhysics(),
      separatorBuilder:(context, index) =>myDivader(),
      itemCount: list.length),
  fallback: (context) =>isSearch? Container():Center(
    child: CircularProgressIndicator(),
  ),
  );

}
