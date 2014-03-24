//
//  MainViewController.m
//  Localization
//
//  Created by wangtao on 14-3-24.
//  Copyright (c) 2014年 wangtao. All rights reserved.
//  http://blog.csdn.net/tangren03/article/details/8081032

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 实现国际化
    /*
     Returns a localized version of the string designated by the specified key and residing in the specified table.
    
     - (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName
     Parameters
     key
     The key for a string in the table identified by tableName.
     value
     The value to return if key is nil or if a localized string for key can’t be found in the table.
     tableName
     The receiver’s string table to search. If tableName is nil or is an empty string, the method attempts to use the table in Localizable.strings.
     Return Value
     A localized version of the string designated by key in table tableName. If value is nil or an empty string, and a localized string is not found in the table, returns key. If key and value are both nil, returns the empty string.
     */
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(20, 40, 250, 60);
    label.text = NSLocalizedStringFromTable(@"key", @"Localizable", @"");
    [self.view addSubview:label];
    
    UILabel *labelColor = [[UILabel alloc] init];
    labelColor.frame = CGRectMake(20, 120, 250, 60);
    labelColor.text = NSLocalizedStringFromTable(@"hello", @"Colors", @"");
    [self.view addSubview:labelColor];
    
    // 获取所有语言设置
    NSUserDefaults *defaults = [ NSUserDefaults standardUserDefaults ];
    // 取得 iPhone 支持的所有语言设置
    NSArray *languages = [defaults objectForKey : @"AppleLanguages"];
    NSLog (@"%@" , languages);
    
    // 获取当前使用的语言
    NSArray *language = [NSLocale preferredLanguages];
    NSString *currentLanguage = [language objectAtIndex:0];
    NSLog (@"%@", currentLanguage);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
