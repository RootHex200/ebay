

<div id="top"></div>
<!-- PROJECT LOGO -->
<br />
<div align="center">



## **Ebay**
  <p align="center">
    Ebay is another task project. that have like product biding system
    <br />
    <div>
  <img src="https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android" width="130" height="40" >
      <img src="https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white" alt="Android" width="130" height="40" >
</div>
    <a href="https://github.com/RootHex200/ebay/issues">Report Bug</a>
    ·
    <a href="https://github.com/RootHex200/ebay/issues">Request Feature</a>
  </p>

</div>



<!-- TABLE OF CONTENTS -->
<details open >
  <summary style="cursor: pointer;">Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#features-with-snapshots">Features with Snapshots</a></li>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    <li><a href="#roadmap">Roadmap</a></li>
   
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project
<div align="center">
</div><br>
Ebay is android app version.this is another practice project.The app was made with Flutter as a Frontend technology and Firebase as a backend

<p align="right">(<a href="#top">back to top</a>)</p>

## Features with Snapshots
1. User Login and Registers.
   <details ><summary>snapshot</summary>
   
    <img src="login.jpeg" width="200" height="400" />

   </details>
2. home page
   <details ><summary>snapshot</summary>

    <img src="gallery.jpeg" width="200" height="400" /> <img src="myitem.jpeg" width="200" height="400" /> 
   </details>
3. Details Page
   <details ><summary>snapshot</summary>

   <img src="details.jpeg" width="200" height="400" />

   </details>
3. Add item
   <details ><summary>snapshot</summary>

   <img src="additem.jpeg" width="200" height="400" />

   </details>
4. Get chart view from running bid ,completed bid ,i have 4 item in firebase that's why time series line is simple but when you added more item then it is will be more beautiful
   <details ><summary>snapshot</summary>

   <img src="chart.jpeg" width="200" height="400" /> <img src="chart2.jpeg" width="200" height="400" />

   </details>
## Built With 
#### Frontend Technology  
* [Flutter](https://flutter.dev/?gclsrc=ds&gclsrc=ds) <br>
Features and Plugins I've used: 
   - Getx
   - Image_picker
   - firebase

  
   
*  APk Link: https://drive.google.com/file/d/1mN4g4z67RJyH3s6IJ04b90de1DC42imC/view?usp=share_link



<p align="right">(<a href="#top">back to top</a>)</p>


## Prerequisites

######
* **Flutter**

  Flutter has a greate [documentation](https://docs.flutter.dev/get-started/install) for enviroment setup 


## Roadmap
#### Frontend
- [x] Login and Register screen was a simple with firebase
- [x] after login when you click in floatingActionButton then you see simple from that is input from you to post item . in this case i use from and image_picker to pick image from camera and gallery and  datetime picker to get datetime for endtime of bid .. that's why i use those
- [x] home page --> create 2 tab one is gallery another is my posted items.


    gallery tab--> when you add new post then you show this post in you gallery tab with other user post.
    to make this function i use getx with rxdart to get all item as a reactive approach.but i use user.email for unique identifier because firebase not allow to registration as a duplicated email that why i use but i know this harmful for database security this is my bad and sorry for that.. and i create a current user check function to get current user.email for unique identifier
        
    my posted item--> in this section just show you post when you add new post.. you can see how many post you.
    this is like same just filter user.email and you get just your post item

- [x] details page----> when you click item and you go to details page.you can see product image,price , description ,all bids, and add bit button for make new bid . and if timeend for this item then you can see winner of bids.. and you can add new bid and update this bids to make this function 


------>i check in ui that if (currentDateTime.isAfter(enddate) ||enddate == currentDateTime) {"can't make bid time is gone"} otherwise you can make new bid

------> your current user.email is queal your bid userid that manse you created a bid. then show update option otherwise don't show update option

------> i face simple problem for update bid price in firebase that is "i can't update map item of list" after thinking i make simple solution that fist remove previous item and add new item
-->for remove
"users.doc(bitListUpdatedModel.auctionid).update({
      "bidlist": FieldValue.arrayRemove([
        {"useremail": currentUserEmail, "bidprice": bitListUpdatedModel.previousbidprice}
      ])
    });"
-->for add 
"    users.doc(auctionid).update({
      "bidlist": FieldValue.arrayUnion([
        {"useremail": currentUserEmail, "bidprice": bidprice}
      ])
    });
"
then i see my updated bid price .. this my solution..

- [x] and when your item date gone you show in details page who is winner to make this function.this is easy this is max numner find algorithm 