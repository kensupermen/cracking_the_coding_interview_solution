#include<stdio.h>
#include <stdlib.h>

struct Node {
  int data;
  Node *pNext;
};

Node *createNode(int value) {
  Node *p = NULL;
  p = (Node*) malloc(sizeof(Node));
  p->data = value;
  p->pNext = NULL;
  return p;
}

void show(Node *pHead) {
  Node *p = pHead;
  int count = 0;

  while (p != NULL) {
    printf("%d \t", p->data);
    count++;
    p = p->pNext;
  }
  printf("\n");
  printf("Number element: %d", count);
}

void addFirst(Node* &pHead, Node *p) {
  if (pHead == NULL) {
    pHead = p;
  } else {
    p->pNext = pHead;
    pHead = p;
  }
}

void addLast(Node* &pHead, Node *p) {
  if (pHead == NULL) {
    pHead = p;
  } else {
    addLast(pHead->pNext, p);
  }
}


int main() {
  int a[] = {1, 2, 3, 4, 5, 6, 7}, n = 7;
  Node *pHead = NULL;

  for(int i = 0; i < n; i++) {
    Node *p = createNode(a[i]);
    addLast(pHead, p);
    printf("pHead = %d \n", pHead->data);
    //addFirst(pHead, p);
  }

  show(pHead);

  return 0;
}
