struct Child
{
	int name;
  int age;
};
struct Parent
{
  struct Child c;
  int cc;
};
int test_2_r13()
{
  struct Parent father;
  struct Parent mother;
  father.c.name = 1;
  father.c.age = 1;
  father.cc = 30;
  mother.c.name = father.c.name;
  mother.cc.age = father.cc.age;
  mother.cc = father.cc;
  return 0;
}
