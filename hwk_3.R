# HEADER --------------------------------------------
#
# Author:     zhang-yj
# Copyright     Copyright 2025 - zhang-yj
# Email:      3045382472@qq.com
#
# Date:     2025-03-19
#
# Script Description:    eco-class
#
# SETUP ------------------------------------
cat("\014")                 # Clears the console
rm(list = ls())             # Remove all variables of the work space
# Exercise 1 用整数创建三个向量x，y，z，每个向量都有3个元素。将这三个向量合并成一个3×3的矩阵A，其中每一列代表一个向量。将行名更改为a、b、c。如果每一行代表一个向量，如何修改代码来实现它？
x <-c(11,15,17)
y <-c(12,16,18)
z <-c(96,97,98)
m <- cbind(x, y, z)
rownames(m) <- c("a", "b", "c")
m <-t(m)
print(m)
# Exercise 2 编写一段代码，将ade4包中内置的doubs数据集导入R环境，查看doubs数据类型和数据结构，并将其保存在本地。
install.packages("ade4")
library(ade4)
data("doubs", package = "ade4")
class(doubs)
str(doubs)
library(tidyverse)
write_csv(doubs$env,"D:/Downloads/HuaweiMoveData/Users/华为/Desktop/my_class/results/hwk_3/env.csv")
write_csv(doubs$fish,"D:/Downloads/HuaweiMoveData/Users/华为/Desktop/my_class/results/hwk_3/fish.csv")
write_csv(doubs$xy,"D:/Downloads/HuaweiMoveData/Users/华为/Desktop/my_class/results/hwk_3/xy.csv")
write_csv(doubs$species,"D:/Downloads/HuaweiMoveData/Users/华为/Desktop/my_class/results/hwk_3/species.csv")
