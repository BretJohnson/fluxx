﻿import LuxSvg
 
data SettingsData {
	firstName: String
	lastName: String
	partTime: Boolean
}

triple{val: Int} =
  val * 3

<myRect strokeWidth:PositiveLength/> =>
  <Rect x:5; y:5; width:13; height:55; rx:8; ry:2; style:<DrawStyle strokeWidth:strokeWidth/> />

<myRect strokeWidth:PositiveLength/> =>
  <Rect x=5; y=5; width=13; height=55; rx=8; ry=2; style=<DrawStyle strokeWidth:strokeWidth/> />

<myRect strokeWidth:PositiveLength/> =>
  Rect x:5  y:5  width:13  height:55  rx:8  ry:2  style: DrawStyle{ strokeWidth:{strokeWidth} } />

myCircle{strokeWidth:PositiveLength} = 
  Circle cx:35  cy:55  r:13  style: DrawStyle{ strokeWidth:{strokeWidth} }

svg1{strokeWidth:PositiveLength  width:PositiveLength} = 
  Svg width:{width} height:210
    myRect strokeWidth:{strokeWidth}
    Rect x:5  y:10  width:150  height:20  rx:12  ry:12  style:DrawStyle{ strokeWidth:{strokeWidth} fill:#00FF00 } 
    Rect x:30  y:30  width:50  height:30  rx:8  ry:2  style:DrawStyle{ strokeWidth:{strokeWidth} }
    Rect x:60  y:30  width:60  height:30  rx:8  ry:2  style:DrawStyle{ strokeWidth:{strokeWidth} }

examples
  example Label:Narrow edge
    svg1{strokeWidth:13  width:250}
  example Label:Medium edge
    svg1{strokeWidth:5  width:250}
  example Label:Wide edge
    svg1{strokeWidth:7  width:250}
  example Label:Just a couple circles
    Svg width:200 height:200
      myCircle{strokeWidth:7}
      myCircle{strokeWidth:10}


examples
  example Label:My label 
    svg1{strokeWidth:5  width:200}
  example Label:My label is this
    svg1{strokeWidth:10  width:300}
  example Label:My label is this
    svg1{strokeWidth:7  width:400}
