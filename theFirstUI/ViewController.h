//
//  ViewController.h
//  theFirstUI
//
//  Created by JiangXuanke on 2018/8/20.
//  Copyright © 2018年 JiangXuanke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate, UIPickerViewDelegate, UITextFieldDelegate>{
    UIScrollView * myScroll;
    UIImageView * imageView;
    
    UITextField * myText;
    UIPickerView * myPickerView;
    NSArray * pickerArray;
}
- (void)addNewUITextField;
- (void)sliderAction:(UISlider * )sender;
@end

