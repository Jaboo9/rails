/**
 * @name Unsafe SQL string construction
 * @kind problem
 * @problem.severity warning
 */

import ruby

from MethodCall call
where
  call.getMethodName() = "execute" and
  call.getArgument(0).toString().regexpMatch(".*#\\{.*\\}.*")
select call, "Possible SQL injection via string interpolation."
