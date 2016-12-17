//
//  ViewController.m
//  PickView
//
//  Created by 宋学谦 on 16/3/2.
//  Copyright © 2016年 宋学谦. All rights reserved.
//1.枚举用法
//2.pick用法
//3.html简单用法
/////////////////

#import "ViewController.h"
#import "ZHPickView.h"
#import "HZAreaPickerView.h"
#import "WebViewController.h"

@interface ViewController ()<ZHPickViewDelegate, HZAreaPickerDelegate>
@property (nonatomic, strong)ZHPickView *zhPickView;
@property (nonatomic, strong)HZAreaPickerView *hzPickView;

@property (nonatomic, strong)NSMutableArray *array;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.array = [NSMutableArray arrayWithObjects:@"男", @"女", nil];
    
    self.pickerView = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 50, [[UIScreen mainScreen] bounds].size.width, 100)];
    self.pickerView.backgroundColor = [UIColor lightGrayColor];
    [self.pickerView setDatePickerMode:UIDatePickerModeDate];
    [self.view addSubview:self.pickerView];
    
    
    self.zhPickView = [[ZHPickView alloc] initWithFrame:CGRectMake(0, 250, [[UIScreen mainScreen] bounds].size.width, 100)];
    self.zhPickView.delegate = self;

//    self.zhPickView = [[ZHPickView alloc] initPickviewWithArray:self.array isHaveNavControler:NO];
    
    NSDate *date=[NSDate dateWithTimeIntervalSinceNow:0];
    self.zhPickView = [[ZHPickView alloc] initDatePickWithDate:date datePickerMode:UIDatePickerModeDate isHaveNavControler:NO];

    
    [self.view addSubview:self.zhPickView];
    
    
    
    self.hzPickView = [[HZAreaPickerView alloc] initWithStyle:HZAreaPickerWithStateAndCity delegate:self];
    [self.hzPickView showInView:self.view];
    
    UITextView *textView = [[UITextView alloc] init];
    textView.delegate = self;
    [textView setFrame:CGRectMake(10, 200, self.view.frame.size.width - 20, 80)];
    [self.view addSubview:textView];
    textView.text = @"6267836481237461873641872364817236481723648123641872364812734681273461827346128734612862678364812374618736418723648172364817236481236418723648127346812734618273461287346128626783648123746187364187236481723648172364812364187236481273468127346182734612873461286267836481237461873641872364817236481723648123641872364812734681273461827346128734612862678364812374618736418723648172364817236481236418723648127346812734618273461287346128";
    textView.userInteractionEnabled = YES;
    textView.editable = NO;
    
    
    //1 枚举在h中声明，在m中可以用区分不同事物
    if (self.clickType == CYLGenderMan) {
        self.number = 1;;
    
    } else if (self.clickType == PersonSexMan) {
        self.number = 2;
    } else {
        
    }
    
    
    //2 枚举在h中声明，在m中可以用switch case表示
    switch (self.number) {
//        case CYLGenderMan:
//        {
//        }
//            break;
//        case CYLGenderWoman:
//        {
//        }
//            break;
        case PersonSexMan:
        {
        }
            break;
        case PersonSexWoman:
        {
        }
            break;

            
        default:
            break;
    }

}


- (IBAction)tiao:(id)sender {
    WebViewController *webVC = [[WebViewController alloc] init];
    [self presentViewController:webVC animated:YES completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
