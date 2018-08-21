//
//  ViewController.h
//  theFirstUI
//
//  Created by JiangXuanke on 2018/8/20.
//  Copyright © 2018年 JiangXuanke. All rights reserved.
//

#import <UIKit/UIKit.h>


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

