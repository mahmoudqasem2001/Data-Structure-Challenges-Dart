//--------------Define Stack---------------------//
class Stack<T> {
  List<T> _items = [];

  void push(T item) {
    _items.add(item);
  }

  T pop() {
    if (_items.isEmpty) {
      throw StateError('Stack is empty');
    }
    return _items.removeLast();
  }

  bool get isEmpty => _items.isEmpty;
}

//----------------Reverse List---------------//
void reverseList(List<int> list) {
  Stack<int> stack = Stack();
  
  for (int i = 0; i < list.length; i++) {
    stack.push(list[i]);
  }

  while (!stack.isEmpty) {
    print(stack.pop());
  }
}

//----------------isBalancedParentheses----------------//
bool isBalancedParentheses(String str) {
  Stack<String> stack = Stack();

  for (int i = 0; i < str.length; i++) {
    if (str[i] == '(') {
      stack.push('(');
    } else if (str[i] == ')') {
      if (stack.isEmpty) {
        return false; // Unbalanced closing parenthesis
      }
      stack.pop();
    }
  }

  return stack.isEmpty; // If stack is empty, parentheses are balanced
}
//-------------------------------------------------//
void main() {
 
}
