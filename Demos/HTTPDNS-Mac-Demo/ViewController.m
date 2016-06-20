//
//  ViewController.m
//  HTTPDNS-Mac-Demo
//
//  Created by YourtionGuo on 6/9/16.
//  Copyright © 2016 Yourtion. All rights reserved.
//

#import "ViewController.h"
#import <HTTPDNS/HTTPDNS.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    HTTPDNSClient *dns = [[HTTPDNSClient alloc] init];
    [dns getRecord:@"www.taobao.com" callback:^(HTTPDNSRecord *record) {
        NSLog(@"%@", record.description);
    }];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
