# HEADER --------------------------------------------
#
# Author:     zhang-yj
# Copyright     Copyright 2025 - zhang-yj
# Email:      3045382472@qq.com
#
# Date:     2025-03-31
#
# Script Description:    eco-class
#
# SETUP ------------------------------------
cat("\014")                 # Clears the console
rm(list = ls())             # Remove all variables of the work space
#针对ade4包内置的doubs数据集中的env，写一段代码，用管道“|>”、select()、filter()、rename()、arrange()等操作，选取 dfs, alt, oxy 列，重命名 dfs 为 distance、oxy为 oxygen。另外，保留alt大于 200米行，按 alt 降序排列，新增一列oxygen_category，根据oxygen_category是否大于90，分为high和low类别，并计算每个类别的平均alt和平均PH，得到如下形式的结果。
library(ade4)
library(dplyr)
data(doubs)
result <-doubs$env |>#提取env数据框
  select(dfs, alt, oxy, pH) |> #选择dfs,alt oxy列
  rename(distance = dfs, oxygen = oxy) |>#重命名
  filter(alt > 200) |>#筛选alt值大于200的行
  arrange(desc(alt)) |>#按照alt值降序排列
  mutate(oxygen_category = ifelse(oxygen > 90, "high", "low")) |>#新增一列
  group_by(oxygen_category) |>#分组
  summarise(
    mean_alt = mean(alt, na.rm = TRUE),
    mean_PH = mean(pH, na.rm = TRUE)
    )
print(result)
library("ggplot2")
# 绘制散点图：alt (海拔) 与 oxy (溶解氧) 之间的关系
ggplot(data = doubs$env) + 
  geom_point(mapping = aes(x = alt, y = oxy))

# 绘制散点图，并使用 dfs (距离) 调整颜色
ggplot(data = doubs$env) + 
  geom_point(mapping = aes(x = alt, y = oxy, color = dfs))
