struct Person
{
  int name;
  int friends[10];
};
int test_2_r10()
{
  struct Person tom;
  struct Person people[10];
  int i = 0;
  while (i < 10)
  {
    people[i].name = i;
    tom.friends[i] = i;
    i = i + 1;
  }
  return tom.name[i-1];
}
