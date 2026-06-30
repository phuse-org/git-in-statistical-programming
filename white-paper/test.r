floatinginequality <- function(x, y, inequality, ...){
  compare <- isTRUE(all.equal(x,y, ...))
  if (compare){
    if (inequality %in% c("==", "<=", ">=")) return(TRUE)
    return(FALSE)
  }
  if (inequality == "==") return(FALSE)
  
  if (inequality %in% c("<=", "<")) return(x<y)
  
  return(x>y)

}

# Version 2: accepts an operator symbol instead of a string
# Infix operators must be wrapped in backticks: `==`, `<=`, `>=`, `<`, `>`
# Usage: floatinginequality_op(0.1+0.2, 0.3, `==`)
floatinginequality_op <- function(x, y, inequality, ...) {
  op_str <- deparse(substitute(inequality))
  floatinginequality(x, y, op_str, ...)
}

# Version 3: accepts a full expression, e.g. floatinginequality_expr(0.9 > 3*0.3)
# Self-contained: captures expression unevaluated, extracts LHS, operator, and RHS,
# then applies floating-point-safe comparison logic directly.
floatinginequality_expr <- function(expr, ...) {
  e <- substitute(expr)
  if (!is.call(e) || length(e) != 3) {
    stop("expr must be a binary comparison expression, e.g. 0.9 > 3*0.3")
  }
  op  <- deparse(e[[1]])
  x   <- eval(e[[2]], parent.frame())
  y   <- eval(e[[3]], parent.frame())

  if (isTRUE(all.equal(x, y, ...))) {
    return(op %in% c("==", "<=", ">="))
  }
  if (op == "==")              return(FALSE)
  if (op %in% c("<=", "<"))   return(x < y)
  return(x > y)
}

# Tests
cat("--- Floating point equality (would fail with naive ==) ---\n")
cat("(0.1+0.2 == 0.3) :", floatinginequality_expr(0.1+0.2 == 0.3), "\n")  # TRUE
cat("(0.9 == 3*0.3)   :", floatinginequality_expr(0.9 == 3*0.3),   "\n")  # TRUE

cat("\n--- Strict inequality on near-equal values ---\n")
cat("(0.1+0.2 < 0.3)  :", floatinginequality_expr(0.1+0.2 < 0.3),  "\n")  # FALSE
cat("(0.1+0.2 > 0.3)  :", floatinginequality_expr(0.1+0.2 > 0.3),  "\n")  # FALSE
cat("(0.1+0.2 <= 0.3) :", floatinginequality_expr(0.1+0.2 <= 0.3), "\n")  # TRUE
cat("(0.1+0.2 >= 0.3) :", floatinginequality_expr(0.1+0.2 >= 0.3), "\n")  # TRUE
cat("(0.9 > 3*0.3)    :", floatinginequality_expr(0.9 > 3*0.3),    "\n")  # FALSE
cat("(0.9 >= 3*0.3)   :", floatinginequality_expr(0.9 >= 3*0.3),   "\n")  # TRUE

cat("\n--- Clearly unequal values ---\n")
cat("(1 < 2)          :", floatinginequality_expr(1 < 2),           "\n")  # TRUE
cat("(1 > 2)          :", floatinginequality_expr(1 > 2),           "\n")  # FALSE
cat("(1 == 2)         :", floatinginequality_expr(1 == 2),          "\n")  # FALSE
cat("(1 <= 2)         :", floatinginequality_expr(1 <= 2),          "\n")  # TRUE
cat("(2 >= 1)         :", floatinginequality_expr(2 >= 1),          "\n")  # TRUE

  
floatinginequality <- function(expr, ...) {
  e <- substitute(expr)
  if (!is.call(e) || length(e) != 3) {
    stop("expr must be a binary comparison expression, e.g. 0.9 > 3*0.3")
  }
  op  <- deparse(e[[1]])
  x   <- eval(e[[2]], parent.frame())
  y   <- eval(e[[3]], parent.frame())

  if (isTRUE(all.equal(x, y, ...))) {
    return(op %in% c("==", "<=", ">="))
  }
  if (op == "==")              return(FALSE)
  if (op %in% c("<=", "<"))   return(x < y)
  return(x > y)
}
 floatinginequality(0.9 >= 0.3*3)
 floatinginequality(0.9 ==0.3*3)