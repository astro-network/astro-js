contract Assertive {
  function assert(bool assertion) internal {
    if (assertion == false) throw;
  }
}
