/*
function loop_size(node, nodes = []){
  if (nodes.includes(node)) {
    return nodes.length - nodes.indexOf(node);
  } else {
    nodes.push(node);
    return loop_size(node.getNext(), nodes);
  }
}
*/

function loop_size(node) {
  let nodes = [node];
  while (true) {
    node = node.getNext();
    if (nodes.includes(node)) {
      return nodes.length - nodes.indexOf(node);
    }

    nodes.push(node);
  }
}
