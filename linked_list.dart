
//--------------Define LinkedList---------------------//
class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data, [this.next]);
}

class LinkedList<T> {
  Node<T>? head;

  void add(T data) {
    head = Node(data, head);
  }


//------------------Print Reverse------------------------//
  void printReverse() {
    _printReverseHelper(head);
  }

  void _printReverseHelper(Node<T>? node) {
    if (node == null) {
      return;
    }
    _printReverseHelper(node.next);
    print(node.data);
  }

//---------------------Find The middle----------------------------------//
  Node<T>? findMiddleNode() {
    if (head == null) {
      return null;
    }
    Node<T>? slowPointer = head;
    Node<T>? fastPointer = head;

    while (fastPointer != null && fastPointer.next != null) {
      slowPointer = slowPointer?.next;
      fastPointer = fastPointer.next?.next;
    }

    return slowPointer;
  }

//----------------Reverse Linked List --------------------------//
  void reverse() {
    Node<T>? prev;
    Node<T>? current = head;
    Node<T>? next;

    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }

    head = prev;
  }
// -------------------------Remove All Occurrences-----------------//
void removeAllOccurrences(T target) {
    while (head != null && head?.data == target) {
      head = head?.next;
    }

    Node<T>? current = head;
    Node<T>? prev;

    while (current != null) {
      if (current.data == target) {
        prev?.next = current.next;
      } else {
        prev = current;
      }
      current = current.next;
    }
  }

}

void main() {
 
}
