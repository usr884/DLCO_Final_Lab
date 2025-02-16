Final Lab of DLCO Class in 2024 of NJU

南京大学2024年数电实验大实验

实现的基本功能：
1. 接受键盘输入并回显在屏幕上
2. 支持换行、删除、滚屏等操作
3. 命令分析：根据键盘输入命令执行对应的子程序，并将执行结果输出到屏幕上
    - 打入 hello，显示 Hello World!
    - 打入 time，显示时间
    - 打入 fib n，计算斐波那契数列并显示结果
    - 打入未知命令，输出 Unknown Command
4. 彩色字符显示
5. 表达式求值
6. 字符界面的贪吃蛇游戏

内存映射 (Memory Mapping) : 

[其中，b[x] 表示 x 处一个字节 (8bit) 的值，h[x] 表示 x 处一个半字 (16bit) 的值，w[x] 表示 x 处一个字 (32bit) 的值]

| 内存区域 | 说明 | 读写类型 |
|---------|---------|---------|
| 0x00000000 ~ 0x0003ffff   | 指令存储器   | 只读   |
| 0x00100000 ~ 0x0011ffff   | 数据存储器（物理内存）   | 可读写   |
| 0x00200000 ~ 0x00200003   | VGA 显示器内存，b[0x00200000] 表示起始行号，b[0x00200001] 表示光标行号，b[0x00200002] 表示光标列号  | 只写   |
| 0x00201000 ~ 0x00201fff   | VGA 显示器内存，64 行 64 列的显示器的字符显存，b[x] 表示一个字符的 ASCII 码，这个字符在 x[11:6] 行，x[5:0] 列   | 只写   |
| 0x00202000 ~ 0x00202fff   | VGA 显示器内存，存储 64 行 64 列字符的颜色信息，b[x] 表示一个字符的颜色信息，这个字符在 x[11:6] 行，x[5:0] 列   | 只写   |
| 0x00300000 ~ 0x00300003   | 键盘输入，b[0x00300000]表示扫描码，b[0x00300001]表示ASCII码（不涉及特殊处理）   | 只读   |
| 0x00400000 ~ 0x00400003   | LED控制，LED[31:0] 表示 w[0x00400000], LED[15:0] 控制 LED15 ~ LED0, 1 表示亮，0 表示灭, LED[21:19], LED[18:16], 分别控制彩色 LED17, LED16, 其中 LED[21], LED[18] 控制 B, LED[20], LED[17] 控制 G, LED[19], LED[16] 控制 R, 1 表示对应的颜色有效，0 表示对应的颜色无效   | 只写   |
| 0x00500000 ~ 0x0050000b   | 七段数码管显示，b[0x00500007] ~ b[0x00500000] 8 个字节分别为从左到右 8 个数码管的段码，每个字节中 0 表示对应的段亮，1 表示对应的段灭，b[0x00500008]: 从高位到低位控制从左到右的 8 个数码管的使能信号, 其余字节无效   | 只写   |
| 0x00600000 ~ 0x00600007   | 定时器，w[0x00600000] 表示从开机至当前微妙数低 32 位，w[0x00600004] 表示高 32 位   | 只读   |
| 0x00700000 ~ 0x00700003   | 开关，h[0x00700000] 从高位到低位分别表示 SW15 ~ SW0 的状态，1 表示上，0表示下，其余字节无效   | 只读   |
