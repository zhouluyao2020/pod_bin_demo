
exec_install () {
#把pod install 执行结果赋值给变量result
echo "pod install begin..."
result=`pod install`

# 检查变量里面是否包含安装失败的提示
if [[ $result =~ "Error installing" ]];
then
   # 安装失败，记录安装失败的次数，并重新安装
    ((count ++))
    echo "第 $count 次pod install失败,继续重试中..."
   exec_install
else
   # 安装成功，打印安装成功的信息
   echo ">>>>>>>> \n  install success $result \n <<<<<<<"
fi
}


cd `dirname $0`

#当前目录下没有Podfile文件，提示目录不对
if [[ ! -f "Podfile" ]]; then
   echo "当前目录不对，请把脚本放在正确的目录执行"
else
   count=0
   exec_install
fi




