//
//  ProfileViewController.m
//  InstaPhoto
//
//  Created by Ronak Jangir on 15/05/13.
//  Copyright (c) 2013 Ronak Jangir. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Profile";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.contentSize = CGSizeMake(320, 540);
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    
    self.scrollView.backgroundColor = [UIColor whiteColor];
    
    UIImageView * userView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"business_user"]];
    userView.frame = CGRectMake(20, 20, 100, 114);
    [self.scrollView addSubview:userView];
    
    UILabel *lblName = [[UILabel alloc] initWithFrame:CGRectMake(20, 140, 280, 40)];
    lblName.text = @"Name: Ronak Jangir";
    [self.scrollView addSubview:lblName];

    UILabel *lblCity = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 280, 40)];
    lblCity.text = @"City: Jaipur";
    [self.scrollView addSubview:lblCity];
    
    UITextView *txvBioGraphy = [[UITextView alloc] initWithFrame:CGRectMake(12, 260, 300, 180)];
    txvBioGraphy.font = [UIFont fontWithName:@"Helvetica" size:15];
    txvBioGraphy.editable = NO;
    txvBioGraphy.text = @"I am Learning IPHONE Development!";
    [self.scrollView addSubview:txvBioGraphy];
    
    UILabel *lblMemberSince = [[UILabel alloc] initWithFrame:CGRectMake(20, 440, 280, 40)];
    lblMemberSince.text = @"November 2012";
    [self.scrollView addSubview:lblMemberSince];

    UILabel *lblTwitterName = [[UILabel alloc] initWithFrame:CGRectMake(20, 500, 280, 40)];
    lblTwitterName.text = @"@rnkjangir";
    [self.scrollView addSubview:lblTwitterName];
    
    [self.view addSubview:self.scrollView];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
