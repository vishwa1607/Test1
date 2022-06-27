#Q1
Select sum(`grandTotal`)
from `test`.`order`;

#Q2
select `firstName` ,count(`userId3`) 
from `test`.`order`
group by(`userId3`)
having count(`userId3`)>=2;

#Q3
select `menu`.`title`,`item`.`slug`
from `test`.`menu`,`test`.`item`
inner join `test`.`menu_item`
where `menu`.`id`=`menu_item`.`menuId` AND `menu_item`.`itemId1`=`item`.`id`; 

#Q4
#select col.column_Name from `test` where constraint_type='primary key';

#Q5
select `firstName` ,count(`userId3`) 
from `test`.`order`
group by(`userId3`)
having count(`userId3`);

#Q6
select firstName,max(grandTotal)
from `test`.`order`
group by(firstName);

#Q7
select chefName,max(manyy)as many
from(
select chefName,count(chefId)as manyy
from `test`.`chef`,`test`.`item_chef`
where chef.id=item_chef.chefId
group by(chefName))as h
limit 1;

#Q8
select `subTotal`,`createdAt` from test.order
where createdAt like '%2021-11-09%';

#Q9
select `firstName` ,count(`userId3`) 
from `test`.`order`
group by(`firstName`);

#Q10
select title
from `test`.`item`
inner join `test`.`order_item`
where order_item.itemId3=item.id and HOUR(order_item.createdAt)>18;