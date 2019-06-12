/// This class consists of all the Code data for different widgets

class Code {
  static const String safeAreaCode = '''
    class SafeAreaWidget extends StatefulWidget {
      @override
      _SafeAreaWidgetState createState() => _SafeAreaWidgetState();
    }
    
    class _SafeAreaWidgetState extends State<SafeAreaWidget> {
      ///Bool value to control the behaviour of SafeArea widget.
      bool _isEnabled = true;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: SafeArea(
            top: _isEnabled,
            bottom: _isEnabled,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  child: Text(
                    "This widget is below safe area. If you remove the SafeArea "
                        "widget then this text will be behind the notch.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
    
                ///Press this button to toggle the value of _isEnabled variable
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.indigo,
                  onPressed: () => setState(() {
                        _isEnabled == true ? _isEnabled = false : _isEnabled = true;
                      }),
                  child: Text(_isEnabled ? "Disable SafeArea" : "Enable SafeArea"),
                ),
    
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  child: Text(
                    "This widget is above safe area",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    } ''';

  static const String expandedCode = ''' 
    class ExpandedWidget extends StatefulWidget {
      @override
      _ExpandedWidgetState createState() => _ExpandedWidgetState();
    }
    
    class _ExpandedWidgetState extends State<ExpandedWidget> {
      ///Flex factor for 1st widget
      int _flexFactor0 = 1;
      ///Flex factor for 2nd widget
      int _flexFactor1 = 2;
      ///Flex factor for 3rd widget
      int _flexFactor2 = 1;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Container(
              child: Center(
                child: Text(
                  'Expanded Widget',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: Utils.ubuntuRegularFont),
                ),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.info_outline,
                  color: Color(0xFF323232),
                ),
                onPressed: () => showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            contentPadding: EdgeInsets.all(0),
                            titlePadding: EdgeInsets.only(top: 28),
                            title: Center(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Description",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: Utils.ubuntuRegularFont),
                                  ),
                                  FlatButton(
                                    onPressed: () =>
                                        Utils.launchURL(Utils.expandedSourceURL),
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    // makes highlight invisible too
                                    child: Text('(Source Code)',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: Utils.crimsonRegularFont,
                                            color: Colors.cyan)),
                                  ),
                                ],
                              ),
                            ),
                            content: Container(
                              padding: EdgeInsets.all(0),
                              margin: EdgeInsets.all(0),
                              child: SvgPicture.asset(
                                Utils.expanded_img,
                                semanticsLabel: "Expanded Description",
                              ),
                            ),
                          ),
                    ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  color: Color(0xFFe0e0e0),
                  child: Row(
                    children: <Widget>[
                      ///First flexible widget
                      Expanded(
                        flex: _flexFactor0,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: GestureDetector(
                            child: Container(
                              child: Center(
                                child: Text(
                                  '_flexFactor0',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              margin: const EdgeInsets.all(10.0),
                              color: const Color(0xFF2196f3),
                              width: 48.0,
                              height: 48.0,
                            ),
                            onTap: () => setState(() {
                                  _flexFactor0++;
                                }),
                          ),
                        ),
                      ),
                      ///Second flexible widget
                      Expanded(
                        flex: _flexFactor1,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: GestureDetector(
                            child: Container(
                              child: Center(
                                child: Text(
                                  '_flexFactor1',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              margin: const EdgeInsets.all(10.0),
                              color: const Color(0xFF673ab7),
                              width: 48.0,
                              height: 48.0,
                            ),
                            onTap: () => setState(() {
                                  _flexFactor1++;
                                }),
                          ),
                        ),
                      ),
                      ///Third flexible widget
                      Expanded(
                        flex: _flexFactor2,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: GestureDetector(
                            child: Container(
                              child: Center(
                                child: Text(
                                  '_flexFactor2',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              margin: const EdgeInsets.all(10.0),
                              color: const Color(0xFF009688),
                              width: 48.0,
                              height: 48.0,
                            ),
                            onTap: () => setState(() {
                                  _flexFactor2++;
                                }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ///Click on this button to RESET the values of flex values
                Container(
                  margin: EdgeInsets.all(16.0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    onPressed: () => setState(() {
                          _flexFactor0 = 1;
                          _flexFactor1 = 2;
                          _flexFactor2 = 1;
                        }),
                    child: Text('RESET'),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }''';

  static const String wrapCode = '''
    class WrapWidget extends StatefulWidget {
        @override
        _WrapWidgetState createState() => _WrapWidgetState();
    }
      
    class _WrapWidgetState extends State<WrapWidget> {
      
        BuildContext context; //global context
      
        @override
        Widget build(BuildContext context) {
          this.context = context;
          return Scaffold(
            appBar: AppBar(
              title: Container(
                child: Center(
                  child: Text(
                    'Wrap Widget',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: Utils.ubuntuRegularFont),
                  ),
                ),
                margin: EdgeInsets.only(right: 48),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 16, bottom: 16),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Without Wrap widget',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: Utils.ubuntuRegularFont),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                              child: Text(
                                'Here we observe that the layout is overflowing 
                                 to the right which results in a broken widget',
                                style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 14.0,
                                    fontStyle: FontStyle.italic,
                                    fontFamily: Utils.ubuntuRegularFont),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
      
                      ///This will create an overflow error
                      Row(
                        children: <Widget>[
                          chipDesign("Food", Color(0xFF4fc3f7)),
                          chipDesign("Lifestyle", Color(0xFFffb74d)),
                          chipDesign("Health", Color(0xFFff8a65)),
                          chipDesign("Sports", Color(0xFF9575cd)),
                          chipDesign("Nature", Color(0xFF4db6ac)),
                          chipDesign("Fashion", Color(0xFFf06292)),
                          chipDesign("Heritage", Color(0xFFa1887f)),
                          chipDesign("City Life", Color(0xFF90a4ae)),
                          chipDesign("Entertainment", Color(0xFFba68c8)),
                        ],
                      ),
                    ],
                  ),
      
                  divider(context),
      
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'With Wrap widget',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: Utils.ubuntuRegularFont),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                              child: Text(
                                'Here we observe that chips are contained inside a Wrap '
                                'widget. It adjusts all the children according to the space'
                                'available and automatically wraps to the next line',
                                style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 14.0,
                                    fontStyle: FontStyle.italic,
                                    fontFamily: Utils.ubuntuRegularFont),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
      
                      ///This will handle itself to get rid of the overflow error
                      Wrap(
                        spacing: 0.0, // gap between adjacent chips
                        runSpacing: 0.0, // gap between lines
                        children: <Widget>[
                          chipDesign("Food", Color(0xFF4fc3f7)),
                          chipDesign("Lifestyle", Color(0xFFffb74d)),
                          chipDesign("Health", Color(0xFFff8a65)),
                          chipDesign("Sports", Color(0xFF9575cd)),
                          chipDesign("Nature", Color(0xFF4db6ac)),
                          chipDesign("Fashion", Color(0xFFf06292)),
                          chipDesign("Heritage", Color(0xFFa1887f)),
                          chipDesign("City Life", Color(0xFF90a4ae)),
                          chipDesign("Entertainment", Color(0xFFba68c8)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      }
      
      
    ///Common method to design a chip with different properties
    ///like label and background color
    Widget chipDesign(String label, Color color) => Container(
          child: Chip(
            label: Text(
                label,
                style: TextStyle(
                    color: Colors.white, fontFamily: Utils.ubuntuRegularFont),
              ),
              backgroundColor: color,
              elevation: 4,
              shadowColor: Colors.grey[50],
              padding: EdgeInsets.all(4),
            ),
            margin: EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2),
          );
      
      ///Method to create a divider with added margin
    Container divider(BuildContext context) => Container(
        child: Divider(),
        margin: EdgeInsets.only(left: 10, right: 10, top: 28, bottom: 28),
    );
   ''';

  static const String animatedContainerCode = ''' 
    class AnimatedContainerWidget extends StatefulWidget {
      @override
      _AnimatedContainerWidgetState createState() =>
          _AnimatedContainerWidgetState();
    }
    
    class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
      Alignment _alignment = Alignment.center;
      double _animatedHeight = 200.0;
      double _animatedWidth = 400.0;
      double _iconHeight = 180.0;
      double _iconWidth = 180.0;
      Color _animatedColor = Colors.red;
      bool _isAnimated = false;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Container(
              child: Center(
                child: Text(
                  'Animated Container Widget',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: Utils.ubuntuRegularFont),
                ),
              ),
              margin: EdgeInsets.only(right: 48),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 24),
              child: Center(
                ///Animated Container to change the background color with
                ///an animation
                child: AnimatedContainer(
                  duration: Duration(seconds: 2),
                  width: _animatedWidth,
                  height: _animatedHeight,
                  color: _animatedColor,
                  curve: Curves.fastOutSlowIn,
                  ///Animated container that changes the alignment of
                  ///FlutterLogo with an animation
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                    alignment: _alignment,
                    ///Animated Container to change the dimentions of the
                    ///FlutterLogo with an animation
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      curve: Curves.fastOutSlowIn,
                      height: _iconHeight,
                      width: _iconWidth,
                      child: FlutterLogo(
                        colors: Colors.amber,
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Colors.green,
            onPressed: () => setState(() {
                  /// Condition to toggle the _isAnimated bool variable
                  _animatedWidth == 400.0
                      ? _isAnimated = true
                      : _isAnimated = false;
                  /// Condition to change the alignment of Flutter logo
                  _isAnimated
                      ? _alignment = Alignment.topCenter
                      : _alignment = Alignment.center;
                  /// Condition to change the width of the background container
                  _isAnimated ? _animatedWidth = 200.0 : _animatedWidth = 400.0;
                  /// Condition to change the height of background container
                  /// MediaQuery.of(context).size.height - 200 is done to keep
                  /// height always above the FAB
                  _isAnimated
                      ? _animatedHeight = MediaQuery.of(context).size.height - 200
                      : _animatedHeight = 200.0;
                  /// Condition to change the background color
                  _isAnimated
                      ? _animatedColor = Colors.lightBlue
                      : _animatedColor = Colors.red;
                  /// Condition to change the width of FlutterLogo
                  _isAnimated ? _iconWidth = 100.0 : _iconWidth = 180.0;
                  /// Condition to change the height of FlutterLogo
                  _isAnimated ? _iconHeight = 100.0 : _iconHeight = 180.0;
                }),
            icon: Icon(
              Icons.movie_filter,
              color: Colors.white,
            ),
            label: Text(
              "Animate",
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      }
    }''';

  static const String opacityCode = ''' 
    class OpacityWidget extends StatefulWidget {
      @override
      _OpacityWidgetState createState() => _OpacityWidgetState();
    }
    
    class _OpacityWidgetState extends State<OpacityWidget> {
    
      ///Initial Slider widget value
      var _value = 0.50;
      ///Initial AnimatedOpacity widget value
      var _animOpacityValue = 1.0;
    
      var _bgColor = Colors.black87;
      var _textColor = Colors.white;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Container(
              child: Center(
                child: Text(
                  'Opacity Widget',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: Utils.ubuntuRegularFont),
                ),
              ),
              margin: EdgeInsets.only(right: 48),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        'Without Animation',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: Utils.ubuntuRegularFont),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
                      child: Text(
                        'Slide the slider widget to change the value of opacity'
                            'to observe changes on the widget with gradient',
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 14.0,
                            fontStyle: FontStyle.italic,
                            fontFamily: Utils.ubuntuRegularFont),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                ///Stack widget to blend FlutterLogo widget with a container
                ///with varying opacity controlled by a Slider Widget
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      child: FlutterLogo(
                        colors: Colors.lightBlue,
                        textColor: Colors.white,
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      child: Opacity(
                        opacity: _value,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.blueAccent, Colors.white]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ///Slider widget to set opacity value
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Slider(
                    value: _value,
                    ///Color for active side of Slider
                    activeColor: Colors.lightBlue,
                    ///Color for inactive side of Slider
                    inactiveColor: Colors.lightBlue[50],
                    ///Minimum value of the slider
                    min: 0.0,
                    ///Maximum value of the slider
                    max: 1.0,
                    ///No.Of divisions from min to max value on the Slider
                    divisions: 100,
                    ///Value indicator above the slider
                    label: "_value.abs()",
                    onChanged: (double value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                ),
                const Text('Drag to change opacity'),
                divider(context),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        'With Animation',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: Utils.ubuntuRegularFont),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
                      child: Text(
                        'Click on the widget below to observe changes in opacity'
                            'of the text widget with Animation',
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 14.0,
                            fontStyle: FontStyle.italic,
                            fontFamily: Utils.ubuntuRegularFont),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ///Widget to make a Container detect clicks
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(top: 24, bottom: 24),
                        height: 50,
                        width: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: _bgColor),
                        ///Widget to animate the change in opacity
                        child: AnimatedOpacity(
                          opacity: _animOpacityValue,
                          duration: Duration(seconds: 1),
                          child: Text(
                            "Click here to toggle Animation",
                            style: TextStyle(
                                color: _textColor,
                                fontSize: 15.0,
                                fontFamily: Utils.ubuntuRegularFont),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      onTap: () => setState(() {
                        _animOpacityValue == 1.0
                            ? _animOpacityValue = 0.0
                            : _animOpacityValue = 1.0;
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }
    }
    
    Container divider(BuildContext context) => Container(
      child: Divider(),
      margin: EdgeInsets.only(left: 10, right: 10, top: 28, bottom: 28),
    );''';

  static const String futurBuilderCode = ''' 
    class FutureBuilderWidget extends StatefulWidget {
      @override
      _FutureBuilderWidgetState createState() => _FutureBuilderWidgetState();
    }
    
    class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
      bool _isButtonClicked = false;
      var _buttonIcon = Icons.cloud_download;
      var _buttonText = "Fetch Data";
      var _buttonColor = Colors.green;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Container(
              child: Center(
                child: Text(
                  'Future Builder Widget',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: Utils.ubuntuRegularFont),
                ),
              ),
              margin: EdgeInsets.only(right: 48),
            ),
          ),
          body: Center(
            child: FutureBuilder<Demo>(
              ///If future is null then API will not be called as soon as the screen
              ///loads. This can be used to make this Future Builder dependent
              ///on a button click.
              future: _isButtonClicked ? getDemoResponse() : null,
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
    
                    ///when the future is null
                  case ConnectionState.none:
                    return Text(
                      'Press the button to fetch data',
                      textAlign: TextAlign.center,
                    );
    
                  case ConnectionState.active:
    
                    ///when data is being fetched
                  case ConnectionState.waiting:
                    return CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue));
    
                  case ConnectionState.done:
                    ///task is complete with an error (eg. When you
                    ///are offline)
                    if (snapshot.hasError)
                      return Text(
                        'Error:snapshot.error',
                        textAlign: TextAlign.center,
                      );
                    ///task is complete with some data
                    return Text(
                      'Fetched Data:snapshot.data.title',
                      textAlign: TextAlign.center,
                    );
                }
              },
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            backgroundColor: _buttonColor,
            onPressed: () {
              ///Calling method to fetch data from the server
              getDemoResponse();
    
              ///You need to reset UI by calling setState.
              setState(() {
                _isButtonClicked == false
                    ? _isButtonClicked = true
                    : _isButtonClicked = false;
    
                if (!_isButtonClicked) {
                  _buttonIcon = Icons.cloud_download;
                  _buttonColor = Colors.green;
                  _buttonText = "Fetch Data";
                } else {
                  _buttonIcon = Icons.replay;
                  _buttonColor = Colors.deepOrange;
                  _buttonText = "Reset";
                }
              });
            },
            icon: Icon(
              _buttonIcon,
              color: Colors.white,
            ),
            label: Text(
              _buttonText,
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      }
    }''';

  static const String fadeTransitionCode = ''' 
    class FadeTransitionWidget extends StatefulWidget {
      @override
      _FadeTransitionWidgetState createState() => _FadeTransitionWidgetState();
    }
    
    class _FadeTransitionWidgetState extends State<FadeTransitionWidget>
        with SingleTickerProviderStateMixin {
      AnimationController _controller;
      Animation _animation;
      CurvedAnimation _curve;
    
      @override
      void initState() {
        ///An animation controller lets you control the
        ///duration of an animation
        ///Here the ticker for vsync provider is provided
        ///by the SingleTickerProviderStateMixin
        _controller = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 500),
        );
    
        ///Providing our animation with a curve (Parent here is the controller
        ///above)
        _curve = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    
        ///Creating a Tween animation with start and end values for the
        ///opacity and providing it with our animation controller
        _animation = Tween(
          begin: 0.0,
          end: 1.0,
        ).animate(_curve);
    
        ///Set a status listener to our animation to control the behaviour
        ///of our animation
        _animation.addStatusListener((status) {
          if (status == AnimationStatus.completed)
            _controller.reverse();
          else if (status == AnimationStatus.dismissed) _controller.forward();
        });
    
        super.initState();
      }
    
      @override
      void dispose() {
        ///Don't forget to clean up resources when you are done using it
        _controller.dispose();
        super.dispose();
      }
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Fade Transition Widget',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: Utils.ubuntuRegularFont),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CodeScreen(code: Code.fadeTransitionCode),
                      ),
                    ),
              )
            ],
          ),
          body: Center(
            child: FadeTransition(
              ///Providing our animation to opacity property
              opacity: _animation,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 300,
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Colors.lightBlue,
            onPressed: () => setState(() {
                  ///We start the animation by calling this
                  _controller.forward();
                }),
            icon: Icon(
              Icons.movie_filter,
              color: Colors.white,
            ),
            label: Text(
              "Animate",
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      }
    }''';

  static const String fabCode = ''' 
    class FloatingActionButtonWidget extends StatefulWidget {
      @override
      _FloatingActionButtonWidgetState createState() =>
          _FloatingActionButtonWidgetState();
    }
    
    class _FloatingActionButtonWidgetState
        extends State<FloatingActionButtonWidget> {
      bool _isMini = false;
      FloatingActionButtonLocation _fabLocation =
          FloatingActionButtonLocation.centerDocked;
    
      static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            centerTitle: true,
            title:Text(
                  'FAB Widget',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: Utils.ubuntuRegularFont),
                ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeScreen(code: Code.fabCode),
                  ),
                ),
              )
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.only(bottom: 88.0),
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Text(
                    'Select Fab Size',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: Utils.ubuntuRegularFont),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    _OptionItem(false, _isMini, _onSizeChange, 'Normal'),
    
                    _OptionItem(true, _isMini, _onSizeChange, 'Mini'),
                  ],
                ),
              ),
    
              divider(context),
    
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Text(
                    'Select Fab Position',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: Utils.ubuntuRegularFont),
                  ),
                ),
              ),
    
              ///Container containing all the Radio buttons
              Container(
                margin: EdgeInsets.all(18),
                child: Wrap(
                  children: <Widget>[
                    _OptionItem(FloatingActionButtonLocation.centerDocked, _fabLocation, _onLocationChanged, 'Center (Docked)'),
    
                    _OptionItem(FloatingActionButtonLocation.endDocked, _fabLocation, _onLocationChanged, 'End (Docked)'),
    
                    _OptionItem(FloatingActionButtonLocation.centerFloat, _fabLocation, _onLocationChanged, 'Center (Float)'),
    
                    _OptionItem(FloatingActionButtonLocation.endFloat, _fabLocation, _onLocationChanged, 'End (Float)'),
                  ],
                ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("You clicked on the FAB"))),
            child: Icon(Icons.add),
            foregroundColor: Colors.white,
            backgroundColor: Colors.orange,
            elevation: 2.0,
            mini: _isMini,
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.blueAccent,
            shape: CircularNotchedRectangle(),
            notchMargin: 4,
            child: Container(
              height: 50.0,
            ),
          ),
          floatingActionButtonLocation: _fabLocation,
        );
      }
    
      ///method called whenever a radio button is clicked on to change position
      _onLocationChanged(FloatingActionButtonLocation value) => setState(() {
        _fabLocation = value;
      });
    
      ///method called whenever you want to change size
      _onSizeChange(bool value) => setState(() {
        _isMini = value;
      });
    
    }
    
    /// Class to create an option for the user to select for any <T> type.
    /// Value -> The value that the radio button will set when it is clicked
    /// Group value -> A value common to a group of radio buttons that is related to the
    /// kind of values that each group member can set eg a boolean value or a
    /// FloatingActionButtonLocation value etc.
    /// onChanged -> the method that is to be called when clicked on a radio button
    ///
    /// When the Group value and Value of a Radio button is same, that radio button
    /// is marked as Selected
    class _OptionItem<T> extends StatelessWidget {
      const _OptionItem(this.value, this.groupValue, this.onChanged, this.title);
    
      final String title;
      final T value;
      final T groupValue;
      final ValueChanged<T> onChanged;
    
      @override
      Widget build(BuildContext context) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio<T>(
                value: value,
                groupValue: groupValue,
                activeColor: Colors.lightBlue,
                onChanged: onChanged
            ),
            GestureDetector(
              onTap: () {
                onChanged(value);
              },
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 14.0, fontFamily: Utils.ubuntuRegularFont),
              ),
            ),
          ],
        );
      }
    }
    
    Container divider(BuildContext context) => Container(
      child: Divider(),
      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
    );''';

  static const String pageViewCode = ''' 
    class PageViewWidget extends StatefulWidget {
      @override
      _PageViewWidgetState createState() => _PageViewWidgetState();
    }
    
    class _PageViewWidgetState extends State<PageViewWidget> {
      static final GlobalKey<ScaffoldState> _scaffoldKey =
          GlobalKey<ScaffoldState>();
      ///Page Controller for the PageView
      final controller = PageController(
        initialPage: 0,
      );
      var scrollDirection = Axis.horizontal;
      var actionIcon = Icons.swap_vert;
    
      @override
      Widget build(BuildContext context) {
        Size _screenSize = MediaQuery.of(context).size;
        return Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
                'Page View Widget',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: Utils.ubuntuRegularFont),
              ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(actionIcon),
                  onPressed: () {
                    setState(() {
                      scrollDirection == Axis.horizontal
                          ? scrollDirection = Axis.vertical
                          : scrollDirection = Axis.horizontal;
                      actionIcon == Icons.swap_vert
                          ? actionIcon = Icons.swap_horiz
                          : actionIcon = Icons.swap_vert;
                      _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Scroll Direction changed to scrollDirection"),
                          duration: Duration(milliseconds: 1000),
                        ),
                      );
                    });
                    controller.position.applyViewportDimension(
                        scrollDirection == Axis.vertical
                            ? _screenSize.height
                            : _screenSize.width);
                  }),
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeScreen(code: Code.pageViewCode),
                  ),
                ),
              )
            ],
          ),
          ///A Page View with 3 children
          body: PageView(
            controller: controller,
            scrollDirection: scrollDirection,
            ///Enable physics property to provide your PageView with a
            ///custom scroll behaviour
            ///Here BouncingScrollPhysics will pull back the boundary
            ///item (first or last) if the user tries to scroll further.
            //physics: BouncingScrollPhysics(),
            pageSnapping: true,
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Card(
                  color: Colors.lightBlue,
                  elevation: 4,
                  margin: EdgeInsets.all(24),
                  child: Center(
                    child: Text(
                      "Card 1",
                      style: TextStyle(
                          fontFamily: Utils.ubuntuRegularFont,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Card(
                  color: Colors.purpleAccent,
                  elevation: 4,
                  margin: EdgeInsets.all(24),
                  child: Center(
                    child: Text(
                      "Card 2",
                      style: TextStyle(
                          fontFamily: Utils.ubuntuRegularFont,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Card(
                  color: Colors.pink,
                  elevation: 4,
                  margin: EdgeInsets.all(24),
                  child: Center(
                    child: Text(
                      "Card 3",
                      style: TextStyle(
                          fontFamily: Utils.ubuntuRegularFont,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    }''';

  static const String tableCode = ''' 
    class TableWidget extends StatefulWidget {
      @override
      _TableWidgetState createState() => _TableWidgetState();
    }
    
    class _TableWidgetState extends State<TableWidget> {
      bool _isBorderEnabled = false;
      var _actionIcon = Icons.border_all;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Container(
              child: Text(
                'Table Widget',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: Utils.ubuntuRegularFont),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(_actionIcon),
                onPressed: () => setState(() {
                      _isBorderEnabled == false
                          ? _isBorderEnabled = true
                          : _isBorderEnabled = false;
    
                      _isBorderEnabled
                          ? _actionIcon = Icons.border_clear
                          : _actionIcon = Icons.border_all;
                    }),
              ),
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeScreen(code: Code.tableCode),
                  ),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(top: 12),
            child: Table(
              border: _isBorderEnabled ? TableBorder.all() : null,
              defaultVerticalAlignment: TableCellVerticalAlignment.top,
              children: <TableRow>[
                ///First table row with 3 children
                TableRow(children: <Widget>[
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      color: Colors.red,
                      width: 48.0,
                      height: 100.0,
                      child: Center(
                        child: Text(
                          "Row 1  Element 1",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 6.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      color: Colors.orange,
                      width: 50.0,
                      height: 50.0,
                      child: Center(
                        child: Text(
                          "Row 1  Element 2",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 6.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      color: Colors.blue,
                      width: 50.0,
                      height: 50.0,
                      child: Center(
                        child: Text(
                          "Row 1  Element 3",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 6.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                  ),
                ]),
                ///Second table row with 3 children
                TableRow(children: <Widget>[
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      color: Colors.lightBlue,
                      width: 50.0,
                      height: 48.0,
                      child: Center(
                        child: Text(
                          "Row 2  Element 1",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 6.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      color: Colors.green,
                      width: 48.0,
                      height: 48.0,
                      child: Center(
                        child: Text(
                          "Row 2  Element 2",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 6.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      color: Colors.blue,
                      width: 50.0,
                      height: 100.0,
                      child: Center(
                        child: Text(
                          "Row 2  Element 3",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 6.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        );
      }
    }''';

  static const String sliverAppBarCode = ''' 
      class SliverAppBarWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          ///Scroll view for Sliver app bar for giving custom scroll behaviour
          body: CustomScrollView(
            slivers: <Widget>[
              ///First sliver is the App Bar
              SliverAppBar(
                ///Properties of app bar
                ///
                /// Color of app bar when it is collapsed
                backgroundColor: Colors.white,
                /// Set to false so that appbar is always invisible after
                /// collapsing
                /// If set to true here, the app bar will expand as soon as you
                /// start scrolling up even if you haven't reached the top
                floating: false,
                /// To make the app bar visible at all times after collapsing
                /// we set pinned to true
                pinned: true,
                expandedHeight: 200.0,
    
                ///Properties of the App Bar when it is expanded
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    "SliverAppBar Widget",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: Utils.ubuntuRegularFont),
                  ),
                  background: Container(
                    color: Colors.lightBlue,
                  ),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.code),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CodeScreen(code: Code.sliverAppBarCode),
                      ),
                    ),
                  )
                ],
              ),
    
              ///Next sliver is the Sliver list that is used here to
              ///allow the user to scroll and observe the collapsing
              ///behaviour of SliverAppBar widget
              SliverFixedExtentList(
                itemExtent: 100.0,
                delegate: SliverChildListDelegate(
                  [
                    listItem(
                      Colors.white,
                      "List item 1",
                    ),
                    listItem(
                      Colors.white,
                      "List item 2",
                    ),
                    listItem(
                      Colors.white,
                      "List item 3",
                    ),
                    listItem(
                      Colors.white,
                      "List item 4",
                    ),
                    listItem(
                      Colors.white,
                      "List item 5",
                    ),
                    listItem(
                      Colors.white,
                      "List item 6",
                    ),
                    listItem(
                      Colors.white,
                      "List item 7",
                    ),
                    listItem(
                      Colors.white,
                      "List item 8",
                    ),
                    listItem(
                      Colors.white,
                      "List item 9",
                    ),
                    listItem(
                      Colors.white,
                      "List item 10",
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    
      Widget listItem(Color color, String title) => Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.black26,
                  width: 1.0,
                ),
              ),
            ),
            child: Center(
              child: Text(
                "title",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: Utils.ubuntuRegularFont),
              ),
            ),
          );
    }''';

  static const String sliverListCode = ''' 
      class SliverListWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              ///First sliver is the App Bar
              SliverAppBar(
                ///Properties of app bar
                backgroundColor: Colors.white,
                floating: false,
                pinned: true,
                expandedHeight: 200.0,
    
                ///Properties of the App Bar when it is expanded
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    "SliverList Widget",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: Utils.ubuntuRegularFont),
                  ),
                  background: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.code),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CodeScreen(code: Code.sliverListCode),
                      ),
                    ),
                  )
                ],
              ),
              SliverList(
                ///Use SliverChildListDelegate and provide a list
                ///of widgets if the count is limited
                ///
                ///Lazy building of list
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    /// To convert this infinite list to a list with "n" no of items,
                    /// uncomment the following line:
                    /// if (index > n) return null;
                    return listItem(Utils.getRandomColor(), "Sliver List item: index");
                  },
                  /// Set childCount to limit no.of items
                  /// childCount: 100,
                ),
              )
            ],
          ),
        );
      }
    
      Widget listItem(Color color, String title) => Container(
        height: 100.0,
        color: color,
        child: Center(
          child: Text(
            "title",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                fontFamily: Utils.ubuntuRegularFont),
          ),
        ),
      );
    }''';

  static const String sliverGridCode = ''' 
      class SliverGridWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              ///First sliver is the App Bar
              SliverAppBar(
                ///Properties of app bar
                backgroundColor: Colors.white,
                floating: false,
                pinned: true,
                expandedHeight: 200.0,
    
                ///Properties of the App Bar when it is expanded
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    "SliverGrid Widget",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: Utils.ubuntuRegularFont),
                  ),
                  background: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.code),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CodeScreen(code: Code.sliverGridCode),
                      ),
                    ),
                  )
                ],
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  ///no.of items in the horizontal axis
                  crossAxisCount: 4,
                ),
                ///Lazy building of list
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    /// To convert this infinite list to a list with "n" no of items,
                    /// uncomment the following line:
                    /// if (index > n) return null;
                    return listItem(Utils.getRandomColor(), "Sliver Grid item: index");
                  },
                  /// Set childCount to limit no.of items
                  /// childCount: 100,
                ),
              )
            ],
          ),
        );
      }
    
      Widget listItem(Color color, String title) => Container(
        height: 100.0,
        color: color,
        child: Center(
          child: Text(
            "title",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
                fontFamily: Utils.ubuntuRegularFont),
          ),
        ),
      );
    }''';

  static const String fadeInImageCode = ''' 
    class FadeInImageWidget extends StatefulWidget {
      @override
      _FadeInImageWidgetState createState() => _FadeInImageWidgetState();
    }
    
    class _FadeInImageWidgetState extends State<FadeInImageWidget> {
      String _url =
          "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350";
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'FadeInImage Widget',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: Utils.ubuntuRegularFont),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CodeScreen(code: Code.fadeInImageCode),
                      ),
                    ),
              )
            ],
          ),
    
          ///Will pop scope is used to detect if the user pressed back button
          body: WillPopScope(
            child: Stack(children: <Widget>[
              ///We can choose to show an indicator as well to let user know that
              ///something is being loaded
              Center(
                  child: CircularProgressIndicator(
    
                      ///this is to specify the color of the CircularProgressIndicator
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue))),
              Center(
                child: Container(
                  child: FadeInImage.memoryNetwork(
    
                      ///Specifying dimensions of the image before and after
                      ///loading
                      height: 350,
                      width: 350,
    
                      ///we are using the transparent_image package
                      ///to show a transparent image as a placeholder.
                      placeholder: kTransparentImage,
                      image: _url),
                ),
              ),
            ]),
            onWillPop: () {
              ///clear image cache and exit screen
              ///this is done so that the image loads every time you open the
              ///screen. (it is cached otherwise)
              painting.imageCache.clear();
              Navigator.of(context).pop(true);
            },
          ),
        );
      }
    }''';

  static const String streamBuilderCode = ''' 
    class StreamBuilderWidget extends StatefulWidget {
      @override
      _StreamBuilderWidgetState createState() => _StreamBuilderWidgetState();
    }
    
    class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {
      ///Preparing a stream of data where a double will be emitted every 100 milliseconds
      ///till the value reaches 101.
      var counterStream = Stream<double>.periodic(
          Duration(milliseconds: 100), (x) => (x * 2).toDouble()).take(101);
      bool _isButtonClicked = false;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'StreamBuilder Widget',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: Utils.ubuntuRegularFont),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CodeScreen(code: Code.streamBuilderCode),
                      ),
                    ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Center(
              child: StreamBuilder(
                stream: _isButtonClicked ? counterStream : null,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Container(
                        //margin: EdgeInsets.all(12),
                        //child: CircularProgressIndicator(
                        //valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),),
                        );
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(24),
                        height: snapshot.data,
                        width: snapshot.data,
                        color: Colors.indigo,
                      ),
                      Container(
                        margin: EdgeInsets.all(24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(6),
                              child: Text(
                                "Height: snapshot.data",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6),
                              child: Text(
                                "Width: snapshot.data",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Colors.green,
            onPressed: _isButtonClicked == false
                ? () {
                    ///You need to reset UI by calling setState.
                    setState(() {
                      _isButtonClicked == false
                          ? _isButtonClicked = true
                          : _isButtonClicked = false;
                    });
                  }
                : null,
            icon: Icon(
              Icons.linear_scale,
              color: Colors.white,
            ),
            label: Text(
              "Start Stream",
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      }
    }''';

  static const String inheritedModelCode = ''' 
    class InheritedModelWidget extends StatefulWidget {
      @override
      _InheritedModelWidgetState createState() => _InheritedModelWidgetState();
    }
    
    class _InheritedModelWidgetState extends State<InheritedModelWidget> {
      Color _colorOne = Utils.getRandomColor();
    
      Color _colorTwo = Utils.getRandomColor();
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title:Text(
                  'InheritedModel Widget',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: Utils.ubuntuRegularFont),
                ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeScreen(code: Code.inheritedModelCode),
                  ),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(top: 12),
            child: Column(
              children: <Widget>[
                Container(
                  child: AncestorWidget(
                      _colorOne,
                      _colorTwo,
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            DependentWidgetOne(),
                            DependentWidgetTwo()
                          ],
                        ),
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(16.0),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.black87,
                          onPressed: () => setState(() {
                                _colorOne = Utils.getRandomColor();
                              }),
                          child: Text('RESET Child 1'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(16.0),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.black87,
                          onPressed: () => setState(() {
                                _colorTwo = Utils.getRandomColor();
                              }),
                          child: Text('RESET Child 2'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }
    }
    
    ///Make a subclass for Parent widget
    class AncestorWidget extends InheritedModel<String> {
      const AncestorWidget(this.colorOne, this.colorTwo, Widget child)
          : super(child: child);
    
      ///Add a field for your data
      final Color colorOne;
      final Color colorTwo;
    
      /// Typically the `inheritFrom` method is called from a model-specific
      /// static `of` method
      static AncestorWidget of(BuildContext context, String aspect) {
        return InheritedModel.inheritFrom<AncestorWidget>(context, aspect: aspect);
      }
    
      ///Runs once for reach widget to determine if that widget should be rebuild
      ///Checks the aspect for a dependent widget and returns true if that
      ///widget should be rebuild depending on a certain condition.
      @override
      bool updateShouldNotifyDependent(
          AncestorWidget oldWidget, Set<String> aspects) {
        if (aspects.contains('one') && colorOne != oldWidget.colorOne) {
          print("Only widget one is rebuild");
          return true;
        }
        if (aspects.contains('two') && colorTwo != oldWidget.colorTwo) {
          print("Only widget two is rebuild");
          return true;
        }
        return false;
      }
    
      /// This decides whether dependent widgets should get rebuild if the
      /// inherited widget is replaced
      /// If [updateShouldNotify] returns true, then the
      /// inherited model's [updateShouldNotifyDependent] method is tested for
      /// each dependent and the set of aspect objects it depends on.
      /// The [updateShouldNotifyDependent] method must compare the set of aspect
      /// dependencies with the changes in the model itself.
      @override
      bool updateShouldNotify(AncestorWidget oldWidget) {
        print("First updateShouldNotify is checked");
        return colorOne != oldWidget.colorOne || colorTwo != oldWidget.colorTwo;
      }
    }
    
    ///Make a subclass for Dependent widget
    class DependentWidgetOne extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        ///Supplying an aspect to indicate which of the ancestor's field this widget cares about
        ///Widgets create a dependency on an [InheritedModel] with a static method
        final ancestor = AncestorWidget.of(context, 'one');
        return Container(
          color: ancestor.colorOne,
          height: 150,
          width: 200,
          child: Center(
            child: Text(
              "Dependent Child 1",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: Utils.ubuntuRegularFont),
            ),
          ),
        );
      }
    }
    
    ///Make a subclass for Dependent widget
    class DependentWidgetTwo extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        ///Supplying an aspect to indicate which of the ancestor's field this widget cares about
        ///Widgets create a dependency on an [InheritedModel] with a static method
        final ancestor = AncestorWidget.of(context, 'two');
        return Container(
          color: ancestor.colorTwo,
          height: 150,
          width: 200,
          child: Center(
            child: Text(
              "Dependent Child 2",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: Utils.ubuntuRegularFont),
            ),
          ),
        );
      }
    }''';

  static const String clipRrectCode = ''' 
    class ClipRRectWidget extends StatefulWidget {
      @override
      _ClipRRectWidgetState createState() => _ClipRRectWidgetState();
    }
    
    class _ClipRRectWidgetState extends State<ClipRRectWidget> {
      var _value = 50.0;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
                  'ClipRRect Widget',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: Utils.ubuntuRegularFont),
                ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeScreen(code: Code.clipRrectCode),
                  ),
                ),
              )
            ],
          ),
          body: ListView(children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 24, bottom: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(12),
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          child: Container(
                            color: Colors.amber,
                          ),
                          borderRadius: BorderRadius.circular(_value),
                          clipBehavior: Clip.antiAlias,
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 100,
                            child: FlutterLogo(
                              colors: Colors.lightBlue,
                              textColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Slide the slider widget to change the value of radius\n'
                              'to observe changes on borders of the widget below',
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14.0,
                              fontStyle: FontStyle.italic,
                              fontFamily: Utils.ubuntuRegularFont),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24),
                    child: Slider(
                      value: _value,
                      activeColor: Colors.lightBlue,
                      inactiveColor: Colors.lightBlue[50],
                      min: 0.0,
                      max: 100.0,
                      divisions: 100,
                      label: '_value.round()',
                      onChanged: (double value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),
                  const Text('Drag to change value of Radius'),
                ],
              ),
            ),
          ]),
        );
      }
    }''';

  static const String heroCode = ''' 
      class HeroWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
                  'Hero Widget',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: Utils.ubuntuRegularFont),
                ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeScreen(code: Code.heroCode),
                  ),
                ),
              )
            ],
          ),
          body: WillPopScope(
            child: GestureDetector(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                      child: Text(
                        'Click the Widget below to observe Hero animation in slow motion',
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 14.0,
                            fontStyle: FontStyle.italic,
                            fontFamily: Utils.ubuntuRegularFont),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Hero(
                          tag: "hero",
                          child: Container(
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.all(12),
                            child: Stack(
                              children: <Widget>[
                                ClipRRect(
                                  child: Container(
                                    color: Colors.amber,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                  clipBehavior: Clip.antiAlias,
                                ),
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    width: 100,
                                    height: 100,
                                    child: FlutterLogo(
                                      colors: Colors.lightBlue,
                                      textColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'Utils.hero2');
                  timeDilation = 4.0;
                }),
            onWillPop: () {
              ///Reset timeDilation since it is a Global property
              timeDilation = 1.0;
              Navigator.of(context).pop(true);
            },
          ),
        );
      }
    }''';

  static const String customPaintCode = ''' 
    class CustomPaintWidget extends StatefulWidget {
      @override
      _CustomPaintWidgetState createState() => _CustomPaintWidgetState();
    }
    
    class _CustomPaintWidgetState extends State<CustomPaintWidget> {
      var _bgColor = Colors.white;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text(
                'CustomPaint Widget',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: Utils.ubuntuRegularFont),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.format_color_fill),
                  onPressed: () => setState(() {
                        _bgColor == Colors.white
                            ? _bgColor = Colors.black87
                            : _bgColor = Colors.white;
                      }),
                ),
                IconButton(
                  icon: Icon(Icons.code),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CodeScreen(code: Code.customPaintCode),
                    ),
                  ),
                )
              ]),
          body: CustomPaint(
            size: Size(MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height),
            painter: MyPainter(_bgColor),
          ),
        );
      }
    }
    
    class MyPainter extends CustomPainter {
      MyPainter(this.color);
    
      final Color color;
    
      @override
      void paint(Canvas canvas, Size size) {
        var rect = Offset.zero & size;
    
        /// The .. syntax here is called a cascade.
        /// With cascades, you can perform multiple operations
        /// on the members of a single object
        Paint rectPaint = Paint()..color = color;
        canvas.drawRect(
          rect,
          rectPaint,
        );
    
        var width = size.width;
        var height = size.height;
    
        ///canvas.drawLine(Offset(to X, to Y), Offset(from X, from Y), linePaint);
    
        ///tilt no1
        canvas.drawLine(Offset(width / 2.5, height / 6),
            Offset(width / 20, height / 2), _paint(Colors.amber));
    
        ///top most line
        canvas.drawLine(Offset(width / 1.7, height / 6),
            Offset(width / 2.5, height / 6), _paint(Colors.red));
    
        ///coming from top right point to back down to match tilt no1
        ///this is tilt no2
        canvas.drawLine(Offset(width / 6.5, height / 1.7),
            Offset(width / 1.7, height / 6), _paint(Colors.green));
    
        ///Line joining bottom of tilt one and two
        canvas.drawLine(Offset(width / 6.5, height / 1.7),
            Offset(width / 20, height / 2), _paint(Colors.blue));
    
        ///parallel line to top most line (joins tilt no3's top and tilt no4's top)
        canvas.drawLine(Offset(width / 2.5, height / 2),
            Offset(width / 1.7, height / 2), _paint(Colors.blue));
    
        ///tilt no 3
        canvas.drawLine(Offset(width / 2.5, height / 2),
            Offset(width / 4.4, height / 1.5), _paint(Colors.amber));
    
        ///titl no 4
        canvas.drawLine(Offset(width / 1.7, height / 2),
            Offset(width / 3.1, height / 1.33), _paint(Colors.green));
    
        ///bottom line joining title no3's bottom and tilt no4's bottom
        canvas.drawLine(Offset(width / 4.4, height / 1.5),
            Offset(width / 2.5, height / 1.2), _paint(Colors.red));
    
        ///bottom most parallel line
        canvas.drawLine(Offset(width / 1.7, height / 1.2),
            Offset(width / 2.5, height / 1.2), _paint(Colors.amber));
    
        ///middle line
        canvas.drawLine(Offset(width / 1.7, height / 1.2),
            Offset(width / 3.17, height / 1.72), _paint(Colors.blue));
      }
    
      @override
      bool shouldRepaint(CustomPainter oldDelegate) {
        return false;
      }
    
      _paint(Color color) {
        return Paint()
          ..color = color
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 4.0;
      }
    }''';

  static const String tooltipCode = ''' 
      class TooltipWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Tooltip Widget',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: Utils.ubuntuRegularFont),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CodeScreen(code: Code.tooltipCode),
                      ),
                    ),
              )
            ],
          ),
    
          /// Tooltip uses your theme data to control its background color and
          /// the text color.
          /// Code from [Tooltip doc] :
          /// textTheme: theme.brightness == Brightness.dark ? theme.textTheme : theme.primaryTextTheme,
          /// background: theme.backgroundColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Wrap(
                  spacing: 20,
                  runAlignment: WrapAlignment.center,
                  alignment: WrapAlignment.center,
                  runSpacing: 48,
                  children: <Widget>[
                    Tooltip(
                      message: "Default Tooltip",
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                        child: Center(
                          child: Text(
                            'Long Press',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: Utils.ubuntuRegularFont),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Tooltip(
                      message: "Tooltip with an offset",
                      verticalOffset: 54,
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.orange,
                        child: Center(
                          child: Text(
                            'Long Press',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: Utils.ubuntuRegularFont),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Tooltip(
                      message: "Tooltip with custom height",
                      height: 50,
                      verticalOffset: 54,
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            'Long Press',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: Utils.ubuntuRegularFont),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      iconSize: 100,
                      onPressed: () {},
                      icon: Icon(Icons.insert_emoticon),
                      tooltip: "Default Icon Tooltip",
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }
    }''';

  static const String fittedBoxCode = ''' 
    class FittedBoxWidget extends StatefulWidget {
      @override
      _FittedBoxWidgetState createState() => _FittedBoxWidgetState();
    }
    
    class _FittedBoxWidgetState extends State<FittedBoxWidget> {
      var _boxFit = BoxFit.contain;
    
      var _heightValue = 400.0;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
                  'FittedBox Widget',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: Utils.ubuntuRegularFont),
                ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeScreen(code: Code.fittedBoxCode),
                  ),
                ),
              )
            ],
          ),
          body: ListView(children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.orange,
                    child: FittedBox(
                      fit: _boxFit,
                      child: Container(
                        color: Colors.yellow,
                        height: _heightValue,
                        width: 300,
                        child: FlutterLogo(
                          colors: Colors.lightBlue,
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(18),
                    child: Wrap(
                      children: <Widget>[
                        _OptionItem(
                            BoxFit.contain, _boxFit, _onFitChanged, 'Fit: Contain'),
                        _OptionItem(
                            BoxFit.fill, _boxFit, _onFitChanged, 'Fit: Fill'),
                        _OptionItem(
                            BoxFit.cover, _boxFit, _onFitChanged, 'Fit: Cover'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
                    child: Text(
                      'Slide the slider widget to change the value of height\n'
                          'to observe how the widget adjusts itself',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: Utils.ubuntuRegularFont),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24),
                    child: Slider(
                      value: _heightValue,
                      activeColor: Colors.lightBlue,
                      inactiveColor: Colors.lightBlue[50],
                      min: 200.0,
                      max: 800.0,
                      divisions: 100,
                      label: '_heightValue.round()',
                      onChanged: (double value) {
                        setState(() {
                          _heightValue = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    child: const Text(
                        'Drag to change height of inner widget (yellow)'),
                    margin: EdgeInsets.only(bottom: 24),
                  ),
                ],
              ),
            ),
          ]),
        );
      }
    
      _onFitChanged(BoxFit value) => setState(() {
            _boxFit = value;
          });
    }
    
    ///Radio button option item
    class _OptionItem<T> extends StatelessWidget {
      const _OptionItem(this.value, this.groupValue, this.onChanged, this.title);
    
      final String title;
      final T value;
      final T groupValue;
      final ValueChanged<T> onChanged;
    
      @override
      Widget build(BuildContext context) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio<T>(
                value: value,
                groupValue: groupValue,
                activeColor: Colors.lightBlue,
                onChanged: onChanged),
            GestureDetector(
              onTap: () {
                onChanged(value);
              },
              child: Text(
                title,
                style:
                    TextStyle(fontSize: 14.0, fontFamily: Utils.ubuntuRegularFont),
              ),
            ),
          ],
        );
      }
    }''';

  static const String layoutBuilderCode = ''' 
      class LayoutBuilderWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
                'LayoutBuilder Widget',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: Utils.ubuntuRegularFont),
              ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeScreen(code: Code.clipRrectCode),
                  ),
                ),
              )
            ],
          ),
          body: Center(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if(constraints.maxWidth < 600 ){
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Expanded(
                          child: Container(color: Colors.lightBlue),
                          flex: 1,
                        ),
                        Expanded(
                          child: Container(color: Colors.indigo),
                          flex: 1,
                        )
                    ],
                  );
                }else{
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(color: Colors.lightBlue),
                        flex: 1,
                      ),
                      Expanded(
                        child: Container(color: Colors.indigo),
                        flex: 1,
                      ),
                      Expanded(
                        child: Container(color: Colors.pink),
                        flex: 1,
                      ),
                      Expanded(
                        child: Container(color: Colors.blue),
                        flex: 1,
                      )
                    ],
                  );
                }
              },
            ),
          ),
        );
      }
    }''';

  static const String absorbPointerCode = ''' 
    class AbsorbPointerWidget extends StatefulWidget {
      @override
      _AbsorbPointerWidgetState createState() => _AbsorbPointerWidgetState();
    }
    
    class _AbsorbPointerWidgetState extends State<AbsorbPointerWidget> {
      static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();
      var _actionIcon = Icons.blur_on;
      var _isAbsorbing = false;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'AbsorbPointer Widget',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: Utils.ubuntuRegularFont),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(_actionIcon),
                onPressed: () => setState(() {
                      _isAbsorbing == false
                          ? _isAbsorbing = true
                          : _isAbsorbing = false;
    
                      _isAbsorbing
                          ? _actionIcon = Icons.blur_off
                          : _actionIcon = Icons.blur_on;
    
                      _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Absorbing Property changed to _isAbsorbing"),
                          duration: Duration(milliseconds: 1000),
                        ),
                      );
                    }),
              ),
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeScreen(code: Code.absorbPointerCode),
                  ),
                ),
              )
            ],
          ),
    
          /// Tooltip uses your theme data to control its background color and
          /// the text color.
          /// Code from [Tooltip doc] :
          /// textTheme: theme.brightness == Brightness.dark ? theme.textTheme : theme.primaryTextTheme,
          /// background: theme.backgroundColor,
          body: AbsorbPointer(
            absorbing: _isAbsorbing,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Absorb Pointer Enabled: _isAbsorbing",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14.0,
                          fontFamily: Utils.ubuntuRegularFont),
                      textAlign: TextAlign.center,
                    ),
                    margin: EdgeInsets.all(24),
                  ),
                  Wrap(
                    spacing: 20,
                    runAlignment: WrapAlignment.center,
                    alignment: WrapAlignment.center,
                    runSpacing: 48,
                    children: <Widget>[
                      Tooltip(
                        message: "Default Tooltip",
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.green,
                          child: Center(
                            child: Text(
                              'Long Press',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontFamily: Utils.ubuntuRegularFont),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Tooltip(
                        message: "Tooltip with an offset",
                        verticalOffset: 54,
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.orange,
                          child: Center(
                            child: Text(
                              'Long Press',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontFamily: Utils.ubuntuRegularFont),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Tooltip(
                        message: "Tooltip with custom height",
                        height: 50,
                        verticalOffset: 54,
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                          child: Center(
                            child: Text(
                              'Long Press',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontFamily: Utils.ubuntuRegularFont),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        iconSize: 100,
                        onPressed: () {},
                        icon: Icon(Icons.insert_emoticon),
                        tooltip: "Default Icon Tooltip",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }
    }''';

  static const String transformCode = ''' 
    class TransformWidget extends StatefulWidget {
      @override
      _TransformWidgetState createState() => _TransformWidgetState();
    }
    
    class _TransformWidgetState extends State<TransformWidget> {
      var _scale = 1.0;
      var _angle = 0.0;
      var _xValue = 0.0;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Container(
              child: Text(
                'Transform Widget',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: Utils.ubuntuRegularFont),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeScreen(code: Code.transformCode),
                  ),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Transform.scale(
                    child: Container(
                      margin: EdgeInsets.all(12),
                      height: 100.0,
                      width: 100.0,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Change my scale",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                    scale: _scale,
                  ),
                  Slider(
                    value: _scale,
                    activeColor: Colors.lightBlue,
                    inactiveColor: Colors.lightBlue[50],
                    min: 0.5,
                    max: 1.0,
                    divisions: 10,
                    label: '_scale.abs()',
                    onChanged: (double value) {
                      setState(() {
                        _scale = value;
                      });
                    },
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: Text(
                      'Drag the slider above to change the scale. Observe how the'
                                   'size of the widget varies',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: Utils.ubuntuRegularFont),
                    ),
                  ),
                  Transform.rotate(
                    child: Container(
                      margin: EdgeInsets.all(12),
                      height: 100.0,
                      width: 100.0,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Rotate me",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                    angle: _angle * 0.0174,
                  ),
                  Slider(
                    value: _angle,
                    activeColor: Colors.lightBlue,
                    inactiveColor: Colors.lightBlue[50],
                    min: 0.0,
                    max: 180.0,
                    divisions: 100,
                    label: '_angle.truncate()',
                    onChanged: (double value) {
                      setState(() {
                        _angle = value;
                      });
                    },
                  ),
    
                  Container(
                    margin: EdgeInsets.all(12),
                    child: Text(
                      'Drag the slider above to change the angle.\nObserve how the'
                                      'widget rotates',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: Utils.ubuntuRegularFont),
                    ),
                  ),
    
                  Transform.translate(
                    child: Container(
                      margin: EdgeInsets.all(12),
                      height: 100.0,
                      width: 100.0,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Shift me",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                    offset: Offset(_xValue, 0.0),
                  ),
                  Slider(
                    value: _xValue,
                    activeColor: Colors.lightBlue,
                    inactiveColor: Colors.lightBlue[50],
                    min: -100.0,
                    max: 100.0,
                    divisions: 100,
                    label: '_xValue.truncate()',
                    onChanged: (double value) {
                      setState(() {
                        _xValue = value;
                      });
                    },
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: Text(
                      'Drag the slider above to change the horizontal component [dx].\nObserve how the'
                          'widget slides along the horizontal axis',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: Utils.ubuntuRegularFont),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    }''';

  static const String backDropFilterCode = ''' 
    class BackdropFilterWidget extends StatefulWidget {
      @override
      _BackdropFilterWidgetState createState() => _BackdropFilterWidgetState();
    }
    
    class _BackdropFilterWidgetState extends State<BackdropFilterWidget> {
      var _blurValue = 0.0;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'BackdropFilter Widget',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: Utils.ubuntuRegularFont),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CodeScreen(code: Code.backDropFilterCode),
                      ),
                    ),
              )
            ],
          ),
          body: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(24),
                    height: 200,
                    width: 200,
                    child: FlutterLogo(
                      colors: Colors.lightBlue,
                      textColor: Colors.white,
                    ),
                  ),
    
                  /// This is to make sure the filter covers the widget beneath it
                  Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: _blurValue,
                        sigmaY: _blurValue,
                      ),
    
                      /// Child is not affected by the filter, only the widgets
                      /// beneath it will be affected by the filter.
                      /// So we use an empty container to demonstrate the changes
                      /// on the FlutterLogo widget
                      child: Container(
                        color: Colors.black.withOpacity(0.0),
                      ),
                    ),
                  ),
                ],
              ),
              Slider(
                value: _blurValue,
                activeColor: Colors.lightBlue,
                inactiveColor: Colors.lightBlue[50],
                min: 0.0,
                max: 10.0,
                divisions: 10,
                label: '_blurValue.truncate()',
                onChanged: (double value) {
                  setState(() {
                    _blurValue = value;
                  });
                },
              ),
              Container(
                margin: EdgeInsets.all(12),
                child: Text(
                  'Drag the slider above to change the blur effect on the FLutter Widget',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14.0,
                      fontStyle: FontStyle.italic,
                      fontFamily: Utils.ubuntuRegularFont),
                ),
              ),
            ],
          ),
        );
      }
    }''';

  static const String alignCode = ''' 
    class AlignWidget extends StatefulWidget {
      @override
      _AlignWidgetState createState() => _AlignWidgetState();
    }
    
    class _AlignWidgetState extends State<AlignWidget> {
      Alignment _textAlignment = Alignment.center;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Align Widget',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: Utils.ubuntuRegularFont),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CodeScreen(code: Code.alignCode),
                      ),
                    ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 12, right: 12, top: 12),
                  height: 300,
                  color: Colors.lightBlue,
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: _textAlignment,
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: Text(
                        'Position Me',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                divider(context),
                Container(
                  margin: EdgeInsets.only(left: 12, right: 12),
                  child: Wrap(
                    children: <Widget>[
                      _OptionItem(Alignment.center, _textAlignment,
                          _onAlignmentChanged, 'Center'),
                      _OptionItem(Alignment.topLeft, _textAlignment,
                          _onAlignmentChanged, 'Top Left'),
                      _OptionItem(Alignment.bottomRight, _textAlignment,
                          _onAlignmentChanged, 'Bottom Right'),
                      _OptionItem(Alignment.bottomLeft, _textAlignment,
                          _onAlignmentChanged, 'Bottom left'),
                      _OptionItem(Alignment.topRight, _textAlignment,
                          _onAlignmentChanged, 'Top Right'),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }
    
      _onAlignmentChanged(Alignment value) => setState(() {
            _textAlignment = value;
          });
    }
    
    class _OptionItem<T> extends StatelessWidget {
      const _OptionItem(this.value, this.groupValue, this.onChanged, this.title);
    
      final String title;
      final T value;
      final T groupValue;
      final ValueChanged<T> onChanged;
    
      @override
      Widget build(BuildContext context) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio<T>(
                value: value,
                groupValue: groupValue,
                activeColor: Colors.lightBlue,
                onChanged: onChanged),
            GestureDetector(
              onTap: () {
                onChanged(value);
              },
              child: Text(
                title,
                style:
                    TextStyle(fontSize: 14.0, fontFamily: Utils.ubuntuRegularFont),
              ),
            ),
          ],
        );
      }
    }
    
    Container divider(BuildContext context) => Container(
          child: Divider(),
          margin: EdgeInsets.only(left: 10, right: 10, top: 14),
    );''';

  static const String positionedCode = ''' 
    class PositionedWidget extends StatefulWidget {
      @override
      _PositionedWidgetState createState() => _PositionedWidgetState();
    }
    
    class _PositionedWidgetState extends State<PositionedWidget> {
      var _topPosition = 20.0;
      var _leftPosition = 20.0;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Positioned Widget',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: Utils.ubuntuRegularFont),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CodeScreen(code: Code.positionedCode),
                      ),
                    ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 12, right: 12, top: 12),
                      height: 300,
                      color: Colors.amber,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Positioned(
                      top: _topPosition,
                      left: _leftPosition,
                      width: 50,
                      height: 50,
                      child: FlutterLogo(
                        colors: Colors.lightBlue,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'Drag the slider below to change the value of position of Flutter widget'
                    ' from the top of the container',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14.0,
                        fontStyle: FontStyle.italic,
                        fontFamily: Utils.ubuntuRegularFont),
                  ),
                ),
                Container(
                  child: Slider(
                    value: _topPosition,
                    activeColor: Colors.lightBlue,
                    inactiveColor: Colors.lightBlue[50],
                    min: 20.0,
                    max: 250.0,
                    divisions: 100,
                    label: '_topPosition.round()',
                    onChanged: (double value) {
                      setState(() {
                        _topPosition = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'Drag the slider below to change the value of position of Flutter widget'
                    ' from the left of the container',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14.0,
                        fontStyle: FontStyle.italic,
                        fontFamily: Utils.ubuntuRegularFont),
                  ),
                ),
                Container(
                  child: Slider(
                    value: _leftPosition,
                    activeColor: Colors.lightBlue,
                    inactiveColor: Colors.lightBlue[50],
                    min: 20.0,
                    max: (MediaQuery.of(context).size.width) - 60.0,
                    divisions: 100,
                    label: '_leftPosition.round()',
                    onChanged: (double value) {
                      setState(() {
                        _leftPosition = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }''';

  static const String animatedBuilderCode = ''' 
    class AnimatedBuilderWidget extends StatefulWidget {
      @override
      _AnimatedBuilderWidgetState createState() => _AnimatedBuilderWidgetState();
    }
    
    class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
        with TickerProviderStateMixin {
      AnimationController _controller1;
      AnimationController _controller2;
      AnimationController _controller3;
      Animation widthAnimation;
      Animation scaleAnimation;
    
      @override
      void initState() {
        super.initState();
    
        _controller1 = AnimationController(
          duration: const Duration(seconds: 10),
          vsync: this,
        );
    
        _controller2 =
            AnimationController(duration: const Duration(seconds: 1), vsync: this);
    
        widthAnimation = Tween(begin: 50.0, end: 300.0).animate(_controller2)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed)
              _controller2.reverse();
            else if (status == AnimationStatus.dismissed) _controller2.forward();
          });
    
        _controller3 =
            AnimationController(duration: const Duration(seconds: 1), vsync: this);
    
        scaleAnimation = Tween(begin: 10.0, end: 100.0).animate(_controller3)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed)
              _controller3.reverse();
            else if (status == AnimationStatus.dismissed) _controller3.forward();
          });
      }
    
      @override
      void dispose() {
        _controller1.dispose();
        _controller2.dispose();
        _controller3.dispose();
        super.dispose();
      }
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'AnimatedBuilder Widget',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: Utils.ubuntuRegularFont),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CodeScreen(code: Code.animatedBuilderCode),
                      ),
                    ),
              )
            ],
          ),
          body: ListView(
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(12),
                        child: AnimatedBuilder(
                          animation: scaleAnimation,
                          child: null,
                          builder: (context, child) => ClipRRect(
                              child: Container(
                                height: scaleAnimation.value,
                                width: scaleAnimation.value,
                                color: Colors.indigo,
                                child: child,
                              ),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(12),
                        child: AnimatedBuilder(
                          animation: scaleAnimation,
                          child: null,
                          builder: (context, child) => ClipRRect(
                              child: Container(
                                height: scaleAnimation.value,
                                width: scaleAnimation.value,
                                color: Colors.lightBlue,
                                child: child,
                              ),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(12),
                        child: AnimatedBuilder(
                          animation: _controller1,
                          child: Container(
                              width: 100.0, height: 100.0, color: Colors.lightBlue),
                          builder: (BuildContext context, Widget child) {
                            return Transform.rotate(
                              angle: _controller1.value * 2.0 * math.pi,
                              child: child,
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(12),
                        child: AnimatedBuilder(
                          animation: _controller1,
                          child: Container(
                              width: 100.0, height: 100.0, color: Colors.indigo),
                          builder: (BuildContext context, Widget child) {
                            return Transform.rotate(
                              angle: _controller1.value * 2.0 * math.pi,
                              child: child,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: AnimatedBuilder(
                      animation: widthAnimation,
                      child: null,
                      builder: (context, child) => Container(
                            height: 100,
                            width: widthAnimation.value,
                            color: Colors.indigo,
                            child: child,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Colors.green,
            onPressed: () => setState(() {
                  _controller1.repeat();
                  _controller2.forward();
                  _controller3.forward();
                }),
            icon: Icon(
              Icons.movie_filter,
              color: Colors.white,
            ),
            label: Text(
              "Animate",
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      }
    }''';

  static const String dismissibleCode = ''' 
    class DismissibleWidget extends StatefulWidget {
      @override
      _DismissibleWidgetState createState() => _DismissibleWidgetState();
    }
    
    class _DismissibleWidgetState extends State<DismissibleWidget> {
      final items = List<String>.generate(30, (i) => "Item i + 1");
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
                  'Dismissible Widget',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: Utils.ubuntuRegularFont),
                ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeScreen(code: Code.dismissibleCode),
                  ),
                ),
              )
            ],
          ),
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
    
              return Dismissible(
                // Each Dismissible must contain a Key. Keys allow Flutter to
                // uniquely identify Widgets.
                key: Key(item),
                // We also need to provide a function that tells our app
                // what to do after an item has been swiped away.
                onDismissed: (direction) {
                  // Remove the item from our data source.
                  setState(() {
                    items.removeAt(index);
                  });
    
                  // Then show a snackbar!
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text("item dismissed")));
                },
                // Show a green background as the item is swiped from left to right
                background: Container(
                  padding: EdgeInsets.only(left: 12),
                  alignment: Alignment.centerLeft,
                  color: Colors.green,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "Positive Action",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                // Show a red background as the item is swiped from right to left
                secondaryBackground: Container(
                  padding: EdgeInsets.only(right: 12),
                  alignment: Alignment.centerRight,
                  color: Colors.red,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "Negative Action",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Icon(
                        Icons.cancel,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                child: ListTile(
                  leading: Icon(Icons.swap_horiz),
                  title: Text('item'),
                ),
              );
            },
          ),
        );
      }
    }''';

  static const String sizedCode = ''' 
    class SizedBoxWidget extends StatefulWidget {
      @override
      _SizedBoxWidgetState createState() => _SizedBoxWidgetState();
    }
    
    class _SizedBoxWidgetState extends State<SizedBoxWidget> {
      ///Using a list to control both the dimensions at once
      List<double> _dimentions = [100.0, 100.0];
      List<double> _dimentions1 = [200.0, 200.0];
      List<double> _dimentions2 = [300.0, 100.0];
      List<double> _dimentions3 = [200.0, double.infinity];
      List<double> _dimentions4 = [300.0, 300.0];
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'SizedBox Widget',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: Utils.ubuntuRegularFont),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CodeScreen(code: Code.sizedCode),
                      ),
                    ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(18),
                  child: Center(
                    child: SizedBox(
                      width: _dimentions[1],
                      height: _dimentions[0],
                      child: RaisedButton(
                        child: Text(
                          'Change my size',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          print("Pressed");
                        },
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ),
                divider(context),
                Container(
                  margin: EdgeInsets.only(left: 12, right: 12),
                  child: Wrap(
                    children: <Widget>[
                      _OptionItem(_dimentions1, _dimentions, _onDimentionsChanged,
                          'h: 200 | w: 200'),
                      _OptionItem(_dimentions2, _dimentions, _onDimentionsChanged,
                          'h: 300 | w: 100'),
                      _OptionItem(_dimentions3, _dimentions, _onDimentionsChanged,
                          'h: 200 | w: double.infinity'),
                      _OptionItem(_dimentions4, _dimentions, _onDimentionsChanged,
                          'h: 300 | w: 300'),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }
    
      _onDimentionsChanged(List<double> list) => setState(() {
            _dimentions = list;
          });
    }
    
    class _OptionItem<T> extends StatelessWidget {
      const _OptionItem(this.value, this.groupValue, this.onChanged, this.title);
    
      final String title;
      final T value;
      final T groupValue;
      final ValueChanged<T> onChanged;
    
      @override
      Widget build(BuildContext context) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio<T>(
                value: value,
                groupValue: groupValue,
                activeColor: Colors.lightBlue,
                onChanged: onChanged),
            GestureDetector(
              onTap: () {
                onChanged(value);
              },
              child: Text(
                title,
                style:
                    TextStyle(fontSize: 14.0, fontFamily: Utils.ubuntuRegularFont),
              ),
            ),
          ],
        );
      }
    }
    
    Container divider(BuildContext context) => Container(
          child: Divider(),
          margin: EdgeInsets.only(left: 10, right: 10, top: 14),
    );''';
}