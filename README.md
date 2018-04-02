# NBCustomTransition for iOS #

NBCustomTransition is an experiment I made to play with the [Hero](https://github.com/lkzhao/Hero) library, which allows you to create view controller transition easily.

I used the design of an app I'm currently working on to create a transition between two view controllers.

![Custom transition animation](animation.gif)

Using Hero is really easy, you just have to specify the `heroID` on the source and destination views, and it will automatically make the transition between the two views.

The little challenge I had in my sample project was to move up the navigation bar and the previous cells, and move down the next cells, to give the impression that the cell is pushing the other elements on the screen.

I recommend you to read this great article about [how to create great UI animations](https://uxdesign.cc/good-to-great-ui-animation-tips-7850805c12e5#fc61).
