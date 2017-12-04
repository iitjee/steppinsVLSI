#include<stdio.h>
#include<stdlib.h>

struct node
{
    int data;
    struct node *next;
}*head;
struct node *temp;
void add( int num )
{
    
    temp=(struct node *)malloc(sizeof(struct node));
    temp->data=num;
    if (head== NULL)
    {
	head=temp;
	head->next=NULL;
    }
    else
    {
	temp->next=head;
	head=temp;
    }
}
 
void main()
{
    struct node
    {
        int data;
        struct node *next;
    };
    typedef struct node NODE;
 
    NODE *head, *second, *third= 0;
    int count = 0;
    int choice = 1;
    head = 0;
 
    while (choice)
    {
        third  = (NODE *)malloc(sizeof(NODE));
        printf("Enter the data item\n");
        scanf("%d", &third-> data);
        if (head!= 0)
        {
            second->next = third;
            second = third;
        }
        else
        {
            head= second = third;
        }
        fflush(stdin);
        printf("Do you want to continue(Type 0 or 1)?\n");
        scanf("%d", &choice);
 
    }
    second->next = 0;
    /*  reset temp to the beginning */
    second= temp;
    void add(int num);
    printf("\n status of the linked list is\n");
    while (second!= 0)
    {
        printf("%d=>", second->data);
        count++;
        second = second-> next;
    }
    printf("NULL\n");
    printf("No. of nodes in the list = %d\n", count);
}
