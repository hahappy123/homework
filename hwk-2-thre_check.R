# HEADER --------------------------------------------
#
# Author:     zhang-yj
# Copyright     Copyright 2025 - zhang-yj
# Email:      3045382472@qq.com
#
# Date:     2025-03-14
#
# Script Description:    eco-class
#
# SETUP ------------------------------------
cat("\014")                 # Clears the console
rm(list = ls())             # Remove all variables of the work space
#写一段R脚本，自定义一个函数，检查随机向量rnorm(n = 10, mean= 35, sd = 10）中的每个值是否高于阈值35（可以用for循环，也可用apply()家族）
check_values_for <- function(n = 10, mean = 35, sd = 10, threshold = 35)#定义函数
  {
  
  random_values <- rnorm(n, mean, sd)#利用函数生成随机变量
  
  
  above_threshold <- logical(n)
  
  
  for (i in 1:n) {
    above_threshold[i] <- random_values[i] > threshold
  }
  
  
  return(data.frame(Value = random_values, Above_Threshold = above_threshold))
}


check_values_for()

