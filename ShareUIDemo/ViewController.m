//
//  ViewController.m
//  ShareUIDemo
//
//  Created by wandou on 22/11/2017.
//  Copyright © 2017 wandou. All rights reserved.
//

#import "ViewController.h"
#import "XYShareUI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)shareClick:(id)sender {
    NSArray* arr=@[@{@"img":@"friend",@"title":@"微信好友"},@{@"img":@"circle",@"title":@"朋友圈"},@{@"img":@"qq",@"title":@"QQ"}];
    
    XYShareUI * shareUI=[[XYShareUI alloc]initWithItems:arr];
    shareUI.sendBlock=^(NSString* title){
        
        if ([title isEqualToString:@"微信好友"]) {
            
            //[self shareWeichat:tit discription:share_tit img:share_img_url isWeichatFriend:YES];
            
        }else if ([title isEqualToString:@"朋友圈"]){
            
            //[self shareWeichat:tit discription:share_tit img:share_img_url isWeichatFriend:NO];
            
        }
        
    };
    
    [shareUI show];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
