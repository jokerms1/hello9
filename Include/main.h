#ifndef   _MAIN_H
#define   _MAIN_H

typedef struct  link
{
   char ClassName[30];
}Class1;
typedef struct node
{
   int StudentNum;
   char StudentName[30];
   Class1   c[5];
   int sum; 
   struct node *next;
}Student;
typedef struct nl
{
      int ClassNum;
      char ClassName[30];
      char ClassQuality[30];
      int ClassTime;
      int ClassScore;
      int StuNum;
      int StuLimit;     
      struct nl *next;
}Class;
int student();
int class();
Student *read(Student *head);
void cat(Student *head);
void window();
void window1();
void window2();
void window3();

void addClass();
void updateStu();
void update(Student *head);
void delete(Student *head);
void alter(Student *head);
void catStu(Student *head);
void add();
void input();
void initStu();
Class *readClass(Class *head);
void catClass(Class *head);
void catCla1(Class *head);
void updateClass1(Class *head);
void deleteClass(Class *head);
void alterClass(Class *head);
void updateClass();
void initClass();
void window4();
void window5();
void catStu(Student *head);
#endif

