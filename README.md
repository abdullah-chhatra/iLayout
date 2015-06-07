# iLayout

Auto Layout in iOS is great to arrange and layout views on a screen. It is quite easy to use it via Interface Builder, but it becomes quite a pain when you want to layout your subviews via code. `NSLayoutContraint` class does not expose friendly methods though use of visual format language makes it a bit easier. This framework provides a bunch of high level, intuitive and easy to use APIs for creating and using Auto Layout Constraints.

# The `Layout` Class

The central element in this framework is `Layout` class. It not only provides set of intuitive and easy to use methods for creating Auto Layout constraints but also helps you manage these constraints. An instance of `Layout` class is bound to one top level view and could be used to create constraints for the view and all of its subviews. 

## Instantiating `Layout` and managing constraints

```Swift
//This instance will be used to create and manage auto layout constraints for rootView and all of its subives.
let layout = Layout(view: rootView)

//Create constraints ...

//Install all constraints
layout.installConstraints()

//Uninstall all constraints but keep them
layout.uninstallConstraints()

//Activate all constraints
layout.activateConstraints()

//Deactivate all constraints
layout.deactivateConstraints()

//Clear all constraints i.e. uninstall and remove.
layout.clearConstraints()

```

# Creating constraints

Each method for creating constraints also returns the constraints that it creates so if you want any specific constraint to manipulate at later time you could do so. 
Please go through documentation of specific method for more information.

## Dimensions

Following methods are for creating constraints to set size, height and width. 

```
setForView(view: UIView, size: CGSize)

setForView(view: UIView, width: CGFloat, height: CGFloat)

setForView(view: UIView, height: CGFloat)

setForView(view: UIView, width: CGFloat)

setForView(view: UIView, heightLessOrEqual: CGFloat)

setForView(view: UIView, heightGreaterOrEqual: CGFloat)

setForView(view: UIView, widthLessOrEqual: CGFloat)

setForView(view: UIView, widthGreaterOrEqual: CGFloat)

```

## Relative dimensions

User following methods to create constraints to set size, height or width of a view relative to another view.

```
makeWidthOfView(view: UIView, equalTo: UIView, offset: CGFloat = 0)

makeHeightOfView(view: UIView, equalTo: UIView, offset: CGFloat = 0)

makeSizeOfView(view: UIView, equalTo: UIView, offsetWidth: CGFloat = 0, offsetHeight: CGFloat = 0)

makeWidthOfView(view: UIView, greaterOrEqualTo: UIView, offset: CGFloat = 0)

makeHeightOfView(view: UIView, greaterOrEqualTo: UIView, offset: CGFloat = 0)

makeWidthOfView(view: UIView, lessOrEqualTo: UIView, offset: CGFloat = 0)

makeHeightOfView(view: UIView, lessOrEqualTo: UIView, offset: CGFloat = 0)

//Following two method will make width or height of a view relative to another view i.e 
//half, double, 3/4 etc.
makeWidthOfView(view: UIView, relativeTo: UIView, multiplier: CGFloat)

makeHeightOfView(view: UIView, relativeTo: UIView, multiplier: CGFloat)
```

## View alignment

Following methods will align a view to another view along axis or edges.

```
alignCenterOfView(view: UIView, withView: UIView, offsetX: CGFloat = 0, offsetY: CGFloat = 0)

alignCenterWithSuperview(view: UIView, offsetX: CGFloat = 0, offsetY: CGFloat = 0)

alignCenterWithSuperview(views: [UIView], offsetX: CGFloat = 0, offsetY: CGFloat = 0)

verticallyAlignView(view: UIView, withView: UIView, offset: CGFloat = 0)

verticallyAlignWithSuperview(view: UIView, offset: CGFloat = 0)

verticallyAlignWithSuperview(views: [UIView], offset: CGFloat = 0)

horizontallyAlignView(view: UIView, withView: UIView, offset: CGFloat = 0)

horizontallyAlignWithSuperview(view: UIView, offset: CGFloat = 0)

horizontallyAlignWithSuperview(views: [UIView], offset: CGFloat = 0)

alignTopOfView(view: UIView, withView: UIView, offset: CGFloat = 0)

alignBottomOfView(view: UIView, withView: UIView, offset: CGFloat = 0)

alignLeadingOfView(view: UIView, withView: UIView, offset: CGFloat = 0)

alignTrailingOfView(view: UIView, withView: UIView, offset: CGFloat = 0)

```

## View placement

Following methods will place a view relative to another view

```
placeView(view: UIView, below: UIView, spacing: CGFloat = 0)

placeView(view: UIView, above: UIView, spacing: CGFloat = 0)

placeView(view: UIView, leftOf: UIView, spacing: CGFloat = 0)

placeView(view: UIView, rightOf: UIView, spacing: CGFloat = 0)
```

## Pin edges to superview

Use following methods to pin edges of a view to edges or margins of its superview.

```
pinToTopEdgeOfSuperview(view: UIView, offset: CGFloat = 0)

pinToTopMarginOfSuperview(view: UIView, offset: CGFloat = 0)

pinToBottomEdgeOfSuperview(view: UIView, offset: CGFloat = 0)

pinToBottomMarginOfSuperview(view: UIView, offset: CGFloat = 0)

pinToLeadingEdgeOfSuperview(view: UIView, offset: CGFloat = 0)

pinToLeadingMarginOfSuperview(view: UIView, offset: CGFloat = 0)

pinToTrailingEdgeOfSuperview(view: UIView, offset: CGFloat = 0)

pinToTrailingMarginOfSuperview(view: UIView, offset: CGFloat = 0)

```

## Fill super view

Following method creates constraints to fill super view with given view in a specific manner. 

```
fillWidthOfSuperview(view: UIView, respectMargin: Bool = true)

fillHeightOfSuperview(view: UIView, respectMargin: Bool = true)

fillTopOfSuperview(view: UIView, respectMargin: Bool = true)

fillBottomOfSuperview(view: UIView, respectMargin: Bool = true)

fillLeadingSideOfSuperview(view: UIView, respectMargin: Bool = true)

fillTrailingSideOfSuperview(view: UIView, respectMargin: Bool = true)

fillSuperview(view: UIView, respectMargin: Bool = true)

```

## Using visual format language

If you would like to use visual format language to create some of the constraints you could do so as follows:

```Swift
//Use this special initializer to initialize Layout object
let layout = Layout(view: rootView, viewMap:["rootView": rootView, "subview1": subview1, "subview2": subview2])

layout.createWithVisualFormat(“V:|-[subivew1]-|”)

```


# Creating custom views with auto layout

Extend `AutoLayout` class to create custom views with auto layout. Following example shows how to create a custom view with auto layout.

```Swift
class PinSuverviewView : AutoLayoutView {
    
    var topLabel = UILabel.instanceWithAutoLayout()
    var bottomLabel = UILabel.instanceWithAutoLayout()
    var leadingLabel = UILabel.instanceWithAutoLayout()
    var trailingLabel = UILabel.instanceWithAutoLayout()
    
	/**
		Initialize your view and its subviews here. This method will be called 
		from initializer so you do not need to call it manually
	*/
    override func initializeView() {
        super.initializeView()  //Do not forget to call super method.
        
        backgroundColor = UIColor.whiteColor()

		//Initialize all the views here
		topLabel.textAlignment = .Center

		//Lot more initialization.

        addSubview(topLabel)
        addSubview(bottomLabel)
        addSubview(leadingLabel)
        addSubview(trailingLabel)
    }
    
	/**
		Add all the constraints in this method. Use the `Layout` object that 
		is passed to it to create and add constraints.
	*/
    override func addConstraints(layout: Layout) {
        
        layout.pinToTopMarginOfSuperview(topLabel, offset: 10)
        layout.horizontallyAlignView(topLabel, withView: self)
        
        layout.pinToBottomMarginOfSuperview(bottomLabel)
        layout.horizontallyAlignView(bottomLabel, withView: self)
        
        layout.pinToLeadingEdgeOfSuperview(leadingLabel)
        layout.verticallyAlignView(leadingLabel, withView: self)
        
        layout.pinToTrailingMarginOfSuperview(trailingLabel)
        layout.verticallyAlignView(trailingLabel, withView: self)
    }
}
```

Extend `AutoLayoutTableViewCell` in similar way to create custom table view cell with auto layout.


## Linear layout

`VerticalLinearLayoutView` and `HorizontalLinearLayoutView` arranges their subviews in vertical and horizontal fashion respectively. These works in similar way as LinearLayout in Android. 

Please check example code for examples and docs for more information.


## Auto adjust content size in scroll view

Managing subviews and adjusting content size dynamically in `UIScrollView` is quite pain. Two classes provided in this framework makes it easy for you, they are `AutoAdjustContentSizeVerticalScrollView` and `AutoAdjustContentSizeHorizontalScrollView`. Think of them as scroll enabled Linear layouts. 

Please check example code for examples and docs for more information.

# Lincense

The MIT License (MIT)

Copyright (c) 2015 abdullah-chhatra

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

