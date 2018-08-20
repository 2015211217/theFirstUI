//
//  ViewController.m
//  theFirstUI
//
//  Created by JiangXuanke on 2018/8/20.
//  Copyright © 2018年 JiangXuanke. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface ViewController ()
//  UItextfield
{
    
}
//  在没有任何用户输入时，显示占位符 正常文本 自动更正型 键盘类型 返回键类型 清除按钮模式 对齐方式 委托
@end

@implementation ViewController

- (void)addNewUITextField {
    // text
    UITextField * text = [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 100, 50)];
    text.borderStyle = UITextBorderStyleRoundedRect;
    [text setFont:[UIFont boldSystemFontOfSize:12]];
    text.placeholder = @"this is a textField";
    // text.delegate = self;
    // 这里有不同的键盘模式
    text.keyboardType = UIKeyboardTypePhonePad;
    [self.view addSubview:text];
    
    //button imageview titleLabel
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(200, 350, 50, 200)];
    [button1 setTitle:@"The first button" forState:UIControlStateNormal];
    button1.backgroundColor = [UIColor brownColor];
    [self.view addSubview:button1];
    
    //label
    UILabel * label2 = [[UILabel alloc] initWithFrame:CGRectMake(200, 200, 50, 50)];
    label2.textColor = [UIColor blueColor];
    label2.textAlignment = UITextAlignmentCenter;
    label2.text = @"11111";
    label2.numberOfLines = 2;
    [self.view addSubview:label2];
    
    //image View can display A image or a set of animated images
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 400, 200, 200)];
    imageView.animationImages = [NSArray arrayWithObjects:
                                 [UIImage imageNamed:@"dog"],
                                 [UIImage imageNamed:@"dog2"], nil];
    imageView.animationDuration = 4.0;
    imageView.backgroundColor = [UIColor blackColor];
    imageView.contentMode = UIViewContentModeCenter;
    //图片在正中央
    [imageView startAnimating];
    [self.view addSubview:imageView];
    //textView
    
    UITextView * textView = [[UITextView alloc] initWithFrame:CGRectMake(100, 500, 50, 50)];
    [textView setText:@"mukashi mukashi, mukashi mukashi, mukashi mukashi, mukashi mukashi."];
    textView.delegate = self;
    textView.textColor = [UIColor redColor];
    [self.view addSubview:textView];
    
    //switch
    UISwitch * swit = [[UISwitch alloc] init];
    swit.center = CGPointMake(150, 200);
    [self.view addSubview:swit];
    
    //pickers
    
    
    //slider
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(300, 500, 50, 100)];
    slider.minimumValue = 0.0;
    slider.maximumValue = 100.0;
    slider.continuous = YES;
    [self.view addSubview:slider];
//  [mySlider addTarget:self action:@selector(sliderChanged:)
//  forControlEvents:UIControlEventValueChanged];
    
    //alert
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"This is a test!" message:@"Are you sure to close the window?" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"yes", nil];
    [alert show];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addNewUITextField];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
