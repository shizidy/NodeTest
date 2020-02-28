//
//  NodePractice.h
//  NodeTest
//
//  Created by wdyzmx on 2020/2/28.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 定义一个链表
struct Node {
    int data;
    struct Node *next;
};

@interface NodePractice : NSObject

/// 链表反转
/// @param head 链表头
struct Node *reverseList(struct Node *head);

/// 构造一个链表
struct Node *constructList(void);

/// 打印链表
/// @param head 链表头
void printList(struct Node *head);

@end

NS_ASSUME_NONNULL_END
