//
//  ViewController.m
//  MRCTest
//
//  Created by xulianpeng on 2016/11/18.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString *_testTitle;
    
}

@end


@implementation ViewController

//@synthesize testTitle = _testTitle;

- (void)setTestTitle:(NSString *)testTitle
{
    if (_testTitle != testTitle) {
        
        [_testTitle release];
        _testTitle = [testTitle copy];
    }
}

//- (void)setTestLabel:(UILabel *)testLabel
//{
//    if (_testLabel != testLabel) {
//        
//        [_testLabel release];
//        
//        _testLabel = [testLabel retain];
//    }
//    
////    if(_testLabel == nil)
////    {
////        _testLabel = [[UILabel alloc]init];
////    }
//}

- (UILabel *)testLabel
{
    if(_testLabel == nil)
    {
        _testLabel = [[UILabel alloc]init];
    }
    return _testLabel;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor redColor];
    
    NSString* str = @"askdakjhddjashjash";
    
    [str characterAtIndex:0];
    
    self.testTitle = @"1234";
    
    self.testTitle = @"asdad";
//    _testTitle
    
    NSLog(@"===%@====%@",_testTitle,self.testTitle);
    self.testLabel.frame = CGRectMake(50, 100, 100, 30);
    [self.view addSubview:self.testLabel];
    self.testLabel.text = self.testTitle;
    
    [_testLabel release];
}
- (void)dealloc
{
    [super dealloc];
    _testTitle = nil;
    _testLabel = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
