// trans rights
// https://codeforces.com/blog/entry/11080
#include <bits/extc++.h>
using namespace std;
using ll = long long;

using namespace __gnu_pbds;
typedef tree<int, null_type, less<int>, rb_tree_tag, tree_order_statistics_node_update> ordered_set;

int main(int argc, const char *argv[])
{
	ios::sync_with_stdio(false);
	cin.tie(0);
	ordered_set X;
	X.insert(1);
	X.insert(2);
	X.insert(4);
	X.insert(8);
	X.insert(16);

	cout << *X.find_by_order(1) << endl;		// 2
	cout << *X.find_by_order(2) << endl;		// 4
	cout << *X.find_by_order(4) << endl;		// 16
	cout << (end(X) == X.find_by_order(6)) << endl; // true

	cout << X.order_of_key(-5) << endl;  // 0
	cout << X.order_of_key(1) << endl;   // 0
	cout << X.order_of_key(3) << endl;   // 2
	cout << X.order_of_key(4) << endl;   // 2
	cout << X.order_of_key(400) << endl; // 5
	return 0;
}
