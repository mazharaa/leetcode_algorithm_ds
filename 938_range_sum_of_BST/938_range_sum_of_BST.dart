void main(List<String> args) {}

int rangeSumBST(TreeNode? root, int low, int high) {
  int count = 0;
  if (root != null) {
    if (root.val >= low && root.val <= high) {
      count += root.val;
    }

    if (root.val < low) {
      count += rangeSumBST(root.right, low, high);
    }

    if (root.val > high) {
      count += rangeSumBST(root.left, low, high);
    }
  }

  return count;
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}
