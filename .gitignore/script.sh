#/usr/bin/env sh
function pre-hyperion {
clear
apt-get install c3270 zlib1g-dev uuid-dev libmnl-dev gcc make git autoconf autoconf-archive autogen automake pkg-config curl flex gawk cpp g++ automake cmake nfs-common nfs-kernel-server net-tools portmap
}
function  ifconfig {
clear
/sbin/ifconfig
}
function meminfo {
clear
/bin/ cat /proc/meminfo
}
#Создаем меню
function menu {
clear
echo
echo -e "\t\t\tМеню скрипта\n"
echo -e "\t1. Подготовиться к установке Hyperion"
echo -e "\t2. Информация об интерфейсах"
echo -e "\t3. Информация о памяти"
echo -e "\t0. Выход"
echo -en "\t\tВведите номер раздела: "
read -n 1 option
}
#Используем цикл While и команду Case для создания меню.
while [ $? -ne 1 ]
do
        menu
        case $option in
0)
        break ;;
1)
        pre-hyperion ;;
2)
        ifconfig ;;
3)
        meminfo ;;
*)
        clear
echo "Нужно выбрать раздел";;
esac
echo -en "\n\n\t\t\tНажмите любую клавишу для продолжения"
read -n 1 line
done
