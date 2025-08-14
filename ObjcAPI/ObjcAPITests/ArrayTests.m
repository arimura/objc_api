//
//  ArrayTests.m
//  ObjcAPITests
//
//  Created by Kotaro Arimura on 2025/08/14.
//

#import <XCTest/XCTest.h>

@interface ArrayTests : XCTestCase

@end

@implementation ArrayTests


- (void)testArray {
    NSMutableArray<NSNumber*>* a = @[].mutableCopy;
    [a addObjectsFromArray:@[@1]];
    XCTAssertEqual(a.count, 1);
    
    NSMutableArray<NSNumber*>* b = nil;
    [b addObjectsFromArray:@[@1]];
    XCTAssertEqual(b.count, 0);
    
    NSMutableArray<NSNumber*>* c = @[].mutableCopy;
    [c addObjectsFromArray:nil];
    XCTAssertEqual(c.count, 0);

}
@end
