"""遍历目录下的文件，将文件根据编码utf-16 le读出来，再以utf-8格式写进去"""
#! python3
# encoding: utf-8
 
 
import os
import chardet
 
def strJudgeCode(str1):
    return chardet.detect(str1)
 
 
def utf16leToUtf8(infile,outfile):
    print(infile)
    content="";
 
    # 文件是utf-16 le编码，故只读取这种，也有不是这种编码的，如果不成功就有可能抛出异常，因此为了避免程序停止，需要捕获异常
    try:
        with open(infile,"r",encoding='utf-16 le') as f:
            content = f.read()
            result = strJudgeCode(str.encode(content))
            if(result['encoding'] == 'utf-8'):      #此处可以去掉，因为有部分是utf-8，故此部分不需要再转换了
                return
            #print(content)
        with open(outfile,"w",encoding='utf-8') as f1:
            #f1.write(bytes.decode(content))
            f1.write(content)
    except UnicodeDecodeError:
        print("UnicodeDecodeError err%s"%infile)
 
 
def listDirFile(dir):
 #print(dir)
 list = os.listdir(dir)
 for line in list:
     filepath = os.path.join(dir, line)
     if os.path.isdir(filepath):
         #print(filepath)
         listDirFile(filepath)
     else:
         #print(line)
         # 过滤出需要转换的文件
         if(filepath.endswith(".v") or filepath.endswith(".hpp") or filepath.endswith(".h")):
         #if (filepath.endswith(".hpp")):
            #converCode(filepath)
            #utf16leToUtf8(filepath,dir+'/1'+line)
            utf16leToUtf8(filepath, filepath)
 
if __name__ == '__main__':
    print("hello")
    listDirFile(r'D:\2021\Verilog_practice\Verilog-Practice-master\2_Circuits')
 