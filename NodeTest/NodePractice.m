//
//  NodePractice.m
//  NodeTest
//
//  Created by wdyzmx on 2020/2/28.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "NodePractice.h"

@implementation NodePractice

#pragma mark - 链表反转
/// 链表反转
/// @param head 链表头部
struct Node *reverseList(struct Node *head) {
    //定义遍历指针，初始化为头结点
    struct Node *p = head;
    //反转后的链表头部
    struct Node *newH = NULL;
    //遍历链表
    while (p != NULL) {
        //记录下一个结点
        struct Node *temp = p->next;
        //当前结点的next指向新链表头部
        p->next = newH;
        //更改新链表头部为当前结点
        newH = p;
        //移动p指针
        p = temp;
    }
    //返回反转后的链表头结点
    return newH;
}

#pragma mark - 新建链表
/// 新建链表
struct Node *constructList(void) {
    //定义头结点
    struct Node *head = NULL;
    //记录当前尾结点
    struct Node *cur = NULL;
    //
    for (int i = 0; i < 5; i++) {
        //创建链表结点
        struct Node *node = malloc(sizeof(struct Node));
        //给结点data赋值（简单赋值为i）
        node->data = i;
        //头结点为空，新结点即为头结点
        if (head == NULL) {
            head = node;
        } else {
            //当前结点的next为新结点
            cur->next = node;
        }
        //设置当前结点为新结点
        cur = node;
    }
    // 链表尾指向null
    cur->next = NULL;
    return head;
}

#pragma mark - 遍历打印链表数据
/// 遍历打印链表数据
/// @param head 链表头部
void printList(struct Node *head) {
    struct Node *temp = head;
    while (temp != NULL) {
        printf("current node is %d\n", temp->data);
        temp = temp->next;
    }
}


@end
