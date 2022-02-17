# ВВЕДЕНИЕ

# Цель
1) Создание моминтальных снимков
2) Восстановление из моментального снимка
3) Удаление моментального снимка

## Моминтальными снимкави

Снимки сохраняют состояние и данные виртуальной машины на момент создания снимка. Когда вы делаете снимок виртуальной машины, образ виртуальной машины в заданном состоянии копируется и сохраняется.
Моментальные снимки полезны, когда вы хотите неоднократно возвращаться к состоянию виртуальной машины, но не хотите создавать несколько виртуальных машин.
Когда делается снимок базового диска, создается дочерний диска. Затем родительский объект считается копией. Теперь рабочая точка виртуальной машины - это дельта. Новые записи виртуальной машиной идут в дельту, но базовый диск или другие моментальные снимки в цепочке производят только чтениям.


![image](https://user-images.githubusercontent.com/79700810/154226780-e0a6c305-b285-4ce3-ab6b-51a08d020735.png)

Одна из основных проблем со снимками журнала заключается в том, что они могут отрицательно повлиять на производительность виртуальной машины. Снижение производительности зависит от того, как долго находится моментальный снимок или дерево моментальных снимков, от глубины дерева и от того, насколько изменились виртуальная машина и ее гостевая операционная система с момента создания моментального снимка


## Моминтальные снимкави с хронением состояния 

Virtual Machines - > VM1 - > правой кнопкой

![image](https://user-images.githubusercontent.com/79700810/154447382-d3c79de5-bcd7-4b86-85df-b938b3f53949.png)

имя и галка

![image](https://user-images.githubusercontent.com/79700810/154447467-a2906385-4e69-451c-a6cd-e202235b244b.png)

для теста создадим файл

![image](https://user-images.githubusercontent.com/79700810/154448740-23d8e65c-7b06-4225-95f9-cb6de2a7fab5.png)

## Моминтальные снимкави без хронением состояния 

Virtual Machines - > VM1 - > правой кнопкой

![image](https://user-images.githubusercontent.com/79700810/154448822-e121e426-ab75-4115-8e33-ed8de4eb9f7b.png)

имя и галка

![image](https://user-images.githubusercontent.com/79700810/154448929-2eb58414-e16f-452b-9d57-fd2fb98daee8.png)\

для теста создадим второй файл

![image](https://user-images.githubusercontent.com/79700810/154449054-9fd1bd5b-0f6f-4143-a0fd-498680dfdd84.png)

## Управление моминтальными снимками и возвращение состояния

Virtual Machines - > VM1 - > правой кнопкой

![image](https://user-images.githubusercontent.com/79700810/154449146-8d4d9a07-b271-46e7-bce6-611898c7e82f.png)

Snapshot_memory - > Restore snapsho

![image](https://user-images.githubusercontent.com/79700810/154449377-853b9450-5978-48e9-8ef6-fb469abdf869.png)

![image](https://user-images.githubusercontent.com/79700810/154449542-cad197be-7ce7-4571-9a8b-f8c5a7569f8b.png)

![image](https://user-images.githubusercontent.com/79700810/154449597-8d971fe8-8f3d-4d00-ad3b-c99eb06ff565.png)

машина осталасть во включенном состоянии но нет файликов которые создавали до мгновенного снимка

![image](https://user-images.githubusercontent.com/79700810/154449678-2aad0e7f-3dc3-4eba-bca3-21b640dec92a.png)


Virtual Machines - > VM1 - > правой кнопкой

![image](https://user-images.githubusercontent.com/79700810/154449146-8d4d9a07-b271-46e7-bce6-611898c7e82f.png)

Snapshot_no_memory - > Restore snapsho

![image](https://user-images.githubusercontent.com/79700810/154449838-4053b2b5-9102-4ab0-8adf-dcce789a78e5.png)

![image](https://user-images.githubusercontent.com/79700810/154449961-745999e7-32af-4fd1-bbe2-98123acf88cd.png)

![image](https://user-images.githubusercontent.com/79700810/154449984-5ed3452f-016f-457d-b9f8-770afaf6b22c.png)

s

## Удаление Моминтальных снимков

