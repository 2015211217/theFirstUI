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

//  在没有任何用户输入时，显示占位符 正常文本 自动更正型 键盘类型 返回键类型 清除按钮模式 对齐方式 委托
@end

@implementation ViewController

- (void)addNewUITextField {
    
    // 修改背景 注意存放的文件夹
    
    // 占内存 self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"dog.jpg"]];
    //推荐方式 failed
    NSString *path = [[NSBundle mainBundle]pathForResource:@"dog"ofType:@"jpeg"];
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    self.view.layer.contents = (id)image.CGImage;
    
    //button
    UIButton *bu_1 = [[UIButton alloc] initWithFrame:CGRectMake(60, 80, 50, 50)];
    UIButton *bu_2 = [[UIButton alloc] initWithFrame:CGRectMake(180, 80, 50, 50)];
    UIButton *bu_3 = [[UIButton alloc] initWithFrame:CGRectMake(300, 80, 50, 50)];
    [self.view addSubview:bu_1];
    [self.view addSubview:bu_2];
    [self.view addSubview:bu_3];
    bu_1.backgroundColor = [UIColor brownColor];
    bu_2.backgroundColor = [UIColor redColor];
    bu_3.backgroundColor = [UIColor purpleColor];
    [bu_1 setTitle:@"One" forState:UIControlStateNormal];
    [bu_2 setTitle:@"Two" forState:UIControlStateNormal];
    [bu_3 setTitle:@"Three" forState:UIControlStateNormal];
    
    //label
    UILabel *la_1 = [[UILabel alloc] initWithFrame:CGRectMake(60, 130, 50, 50)];
    UILabel *la_2 = [[UILabel alloc] initWithFrame:CGRectMake(180, 130, 50, 50)];
    UILabel *la_3 = [[UILabel alloc] initWithFrame:CGRectMake(300, 130, 50, 50)];
    [self.view addSubview:la_1];
    [self.view addSubview:la_2];
    [self.view addSubview:la_3];
    la_1.textColor = [UIColor blackColor];
    la_2.textColor = [UIColor blackColor];
    la_3.textColor = [UIColor blackColor];
    // deprecated means not recommended anymore
    la_1.textAlignment = NSTextAlignmentCenter;
    la_2.textAlignment = NSTextAlignmentCenter;
    la_3.textAlignment = NSTextAlignmentCenter;
    la_1.text = @"one";
    la_2.text = @"two";
    la_3.text = @"three";
    
    // slide 根据slide调节屏幕亮度
    UISlider *slide = [[UISlider alloc] initWithFrame:CGRectMake(110, 200, 200, 50)];
    [self.view addSubview:slide];
    slide.minimumValue = 0.0;
    slide.maximumValue = 1.0;
    // 设置是否滑动时取值
    slide.continuous = YES;
    // failed
    [self sliderAction:slide];
    
    

  /*
    //picker
    myPickerView = [[UIPickerView alloc] init];
    // [self.view addSubview:myPickerView];
    myPickerView.delegate = self;
    pickerArray = [[NSArray alloc] initWithObjects:@"One", @"Two", @"Three", nil];
    myText = [[UITextField alloc] initWithFrame:CGRectMake(100, 300, 50, 150)];
    myText.borderStyle = UITextBorderStyleRoundedRect;
    myText.textAlignment = NSTextAlignmentCenter;
    myText.delegate = self;
    //[self.view addSubview:myText];
    [myText setPlaceholder:@"Pick One :)"];
    // 数据源
    //  myPickerView.dataSource = self;
    myPickerView.delegate = self;
    myPickerView.showsSelectionIndicator = YES;
    
    //selector 指向一个类方法
    //  UIBarButtonItem * doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(done:)];
    UIBarButtonItem * doneButton = [[UIBarButtonItem alloc] init];
    UIToolbar * toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-myPickerView.frame.size.height-50, 320, 50)];
    [toolBar setBarStyle:UIBarStyleBlackOpaque];
    NSArray *toolbarItems = [NSArray arrayWithObjects:doneButton, nil];
    [toolBar setItems:toolbarItems];
    myText.inputView = myPickerView;
    myText.inputAccessoryView = toolBar;
//    UIBarStyleDefault：默认样式
//    UIBarStyleBlack：黑色
//    UIBarStyleBlackOpaque：黑色不透明
//    UIBarStyleBlackTranslucent：黑色透明
*/
    
    
    
    //scorll
    myScroll = [[UIScrollView alloc] initWithFrame:CGRectMake(60, 300, 300, 300)];
    myScroll.accessibilityActivationPoint = CGPointMake(100, 100);
    myScroll.backgroundColor = [UIColor darkGrayColor];
    imageView = [[UIImageView alloc] init];
    imageView.backgroundColor = [UIColor darkGrayColor];
    [myScroll addSubview:imageView];
    myScroll.minimumZoomScale = 0.0;
    myScroll.maximumZoomScale = 10.0;
    
    myScroll.contentSize = CGSizeMake(imageView.frame.size.width, imageView.frame.size.height);
    myScroll.delegate = self;
    [self.view addSubview:myScroll];
    
    
    
    // 点击按钮分别会出现的效果
    /*
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
    
    //pickers  再看一下
    pickerarray = [[NSArray alloc] initWithObjects:@"one",@"two",@"three", nil];
    myText = [[UITextField alloc] initWithFrame:CGRectMake(10, 100, 300, 30)];
    myText.borderStyle = UITextBorderStyleRoundedRect;
//    [self.view addSubview:myText];
    [myText setPlaceholder:@"Pick a sort"];
    mypicker = [[UIPickerView alloc] init];
    mypicker.dataSource = self;
    mypicker.showsSelectionIndicator = YES;
    
    
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
     */
}

- (void)viewACallBack{
    NSLog(@"ViewA Call Back!!!");
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

- (void)sliderAction:(UISlider * )sender{
    CGFloat send = sender.value;
    [[UIScreen mainScreen]setBrightness:1-send];
}

- (UIView * )viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return imageView;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"Did scroll");
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    NSLog(@"Did end dragging");
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"Did begin dragging");
}
@end
