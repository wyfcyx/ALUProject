# 16位ALU实验

## 标志寄存器设定

* 只考虑下面几种状态寄存器
  1. Zero Flag，`Z=1`时表示上次运算结果为`0`
  2. Carry Flag，`c=1`时表示上次运算的最高位产生了一个进位或错位
  3. Sign Flag，`S=1`时表示上次运算结果为负数
  4. Overflow Flag，`O=1`表示上次运算结果超过了有符号整数能表示的范围

## git使用

* 直接提交到主分支上，将对应的.vhd文件保存在根目录上

## 分工情况

### 吴一凡

* `main.vhd`

  负责进行管脚分配、状态机设定、并根据操作码进行选择调用其他某个模块

* `op=0000,add16.vhd`

  输入：`a,b`为两个16位补码（下同）

  输出：16位补码形式（下同）的加法结果$a+b$，`Z,C,S,O`四个标志位变化

* `op=0001,sub16.vhd`

  输入：`a,b`

  输出：减法结果$a-b$，`Z,C,S,O`四个标志位变化

### 高佳圆

* `op=0010,and16.vhd`

  输入：`a,b`

  输出：$a\&b$，`Z`标志位变化

* `op=0011,or16.vhd`

  输入：`a,b`

  输出：$a|b$，`Z`标志位变化

* `op=0100,xor16.vhd`

  输入：`a,b`

  输出：$a\oplus b$，`Z`标志位变化

* `op=0101,not16.vhd`

  输入：`a`

  输出：$\sim a$，`Z,S`标志位变化

### 陈智康

* `op=0110,sll16.vhd`

  输入：`a`,`d`长度为四位，表示左移或右移的位数（下同）

  输出：逻辑左移`a<<d`，`Z,C`标志位变化

* `op=0111,srl16_.vhd`

  输入：`a,d`

  输出：逻辑右移`a>>d`，`Z`标志位变化

* `op=1000,sra16.vhd`

  输入：`a,d`

  输出：算术右移`a>>d`，`Z`标志位变化

* `op=1001,rol16.vhd`

  输入：`a,d`

  输出：循环左移`a<<d`（即最低位移到最高位如此重复`d`次），`Z,C`标志位变化
