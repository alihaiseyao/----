//
//  DVIViewController.m
//  xmltext
//
//  Created by apple  on 13-10-14.
//  Copyright (c) 2013年 microsoft. All rights reserved.
//

#import "DVIViewController.h"
#import "GDataXMLNode.h"
@interface DVIViewController ()

@end

@implementation DVIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //获取工程目录的xml文件
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"users" ofType:@"xml"];
    NSData *xmlData = [[NSData alloc] initWithContentsOfFile:filePath];
    
    //使用NSData对对象初始化
    GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithData:xmlData options:0 error:nil];
    
    //获取根节点(Users)
    GDataXMLElement *rootElement = [doc rootElement];
    
    //获取根节点下的节点
    NSArray *users = [rootElement elementsForName:@"User"];
    
    for (GDataXMLElement *user in users) {
        //User借点的id属性
        NSString *userId = [[user attributeForName:@"id"] stringValue];
        NSLog(@"user id is:%@",userId);
        
        //获取name节点的值
        GDataXMLElement *nameElement = [[user elementsForName:@"name"] objectAtIndex:0];
        NSString *name = [nameElement stringValue];
        NSLog(@"user name is:%@", name);
        
        //获取age节点的值
        GDataXMLElement *ageElement = [[user elementsForName:@"age"] objectAtIndex:0];
        NSString *age = [ageElement stringValue];
        NSLog(@"User age is :%@",age);
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
