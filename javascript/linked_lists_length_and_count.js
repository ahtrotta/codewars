function Node(data) {
  this.data = data;
  this.next = null;
}

function length(head) {
  if (head === null) {
    return 0;
  } else if (head.next === null) {
    return 1;
  } else {
    return length(head.next);
  }
}

function count(head, data) {
  if (head === null) {
    return 0;
  } else if (head.next === null) {
    return head.data === data ? 1 : 0;
  } else {
    if (head.data === data) {
      return 1 + count(head.next, data);
    } else {
      return count(head.next, data);
    }
  }
}
