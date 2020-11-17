//////////////////////////////类型定义///////////////////////////////
class SortedCollection {
  Function compare;

  SortedCollection(int f(Object a,Object b)){
    compare = f;
  }
}

int sort(Object a,Object b) => 0;

typedef Compare = int Function(Object a,Object b);

class SortedCollectionType {
  Compare compare;

  SortedCollectionType(this.compare);
}

typedef CompareGeneric<T> = int Function(T a,T b);
int sortInt(int a,int b) => a - b;

void main () {
  var coll = SortedCollection(sort);

  assert(coll.compare is Function);

  var collType = SortedCollectionType(sort);
  assert(collType.compare is Function);
  assert(collType.compare is Compare);

  assert(sortInt is CompareGeneric<int>);
}





