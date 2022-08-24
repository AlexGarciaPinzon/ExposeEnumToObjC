//
//  ViewController.m
//  ExposeEnumToObjC
//
//  Created by Alex Garcia on 18/08/22.
//

#import "ViewController.h"
#import "ExposeEnumToObjC-Swift.h"
@interface ViewController ()
@property (nonatomic) SwiftFile * sf;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     
    socialPlatform socialplat = socialPlatformInstagram;
    self.sf = [SwiftFile shared];
    [self.sf trackSocialWithPlatform:socialPlatformInstagram];
   
    NSLog(@"Something To Print");
}
@end
