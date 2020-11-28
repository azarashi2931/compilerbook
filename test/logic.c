
int main() {
  assert(0, !(10 == 10), "!(10 == 10)");
  assert(1, !(10 < 10), "!(10 < 10)");
  assert(0, !(20 - 10 * 1 + 2 <= 2 * 7), "!(20 - 10 * 1 + 2 <= 2 * 7)");
  assert(1, !(80 - 50 > 20 * 2), "!(80 - 50 > 20 * 2)");
  assert(0, !(80 - 50 < 20 * 2), "!(80 - 50 < 20 * 2)");
  assert(1, !(80 - 0 <= 20 * 2), "!(80 - 0 <= 20 * 2)");

  assert(0, !(10 == 10) && 10 == 10, "!(10 == 10) && 10 == 10");
  assert(1, !(10 == 10) || 10 == 10, "!(10 == 10) || 10 == 10");
  assert(0, !(1), "!(1)");
  assert(0, !(1) || 10 == 10 && !(10 == 10), "!(1) || 10 == 10 && !(10 == 10)");

  printf("OK\n");
  return 0;
}
