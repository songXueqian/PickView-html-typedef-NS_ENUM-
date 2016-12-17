//
//  ViewController.h
//  PickView
//
//  Created by 宋学谦 on 16/3/2.
//  Copyright © 2016年 宋学谦. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, CYLGender) {
    CYLGenderMan,
    CYLGenderWoman
};

typedef enum: NSInteger{
    PersonSexMan,
    PersonSexWoman
}PersonSex;




@interface ViewController : UIViewController<UITextViewDelegate>

@property (nonatomic, strong)UIDatePicker *pickerView;

@property (weak, nonatomic) IBOutlet UIButton *button;

@property (nonatomic, assign)NSInteger number;


@property (nonatomic, assign)NSInteger clickType;

@property (nonatomic, readwrite, copy)NSString *name;

@end

