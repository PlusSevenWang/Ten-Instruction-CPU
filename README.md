# 单周期 CPU 设计与实现——十条指令 CPU
设计和实现一个支持如下十条指令的单周期 CPU。    
清除累加器指令 CLA  
累加器取反指令 COM  
算术右移一位指令 SHR：将累加器 ACC 中的数右移一位，结果放回 ACC  
循环左移一位指令 CSL：对累加器中的数据进行操作  
停机指令 STP  
加法指令 ADD X： [X] + [ACC] –> ACC，X为存储器地址，直接寻址  
存数指令 STA X，采用直接寻址方式  
取数指令 LDA X，采用直接寻址  
无条件转移指令 JMP imm：signExt(imm) –> PC  
有条件转移（负则转）指令 BAN X: ACC 最高位为 1 则（PC）+ X –> PC,否则 PC不变  
