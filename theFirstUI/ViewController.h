//
//  ViewController.h
//  theFirstUI
//
//  Created by JiangXuanke on 2018/8/20.
//  Copyright © 2018年 JiangXuanke. All rights reserved.
//

#import <UIKit/UIKit.h>

//  delegate设置属性的时候要用assign，不要用retain
//  表示ViewController可以实现后面的delegate，这里没有发布委托的代码
//  适用于两个对象，但是如果在B里面重新alloc一个对象A的话，新的对象A和原来的对象A不是同样的
@interface ViewController : UIViewController<UIScrollViewDelegate, UIPickerViewDelegate, UITextFieldDelegate,
                            UITableViewDelegate, UITextViewDelegate, UITableViewDataSource>{
    UIScrollView * myScroll;
    UIImageView * imageView;
    UIScrollView * upperScroll;
    UITextField * myText;
    UIPickerView * myPickerView;
    NSArray * pickerArray;
    //IBOutlet:Type qualifier used by Interface Builder to expose a symbol as a connection point for sending messages from app code to a user interface element.
    IBOutlet UITableView * myTableView;
    NSMutableArray * myData;
    UITextView * myTextView;
    UIPageControl * pageControl;
}
- (void)btn1Click;
- (void)btn2Click;
- (void)btn3Click;
- (void)addNewUITextField;
- (void)sliderAction:(UISlider * )sender;
@end

