select * from employee;
select * from department;
select * from manager;
select * from projects;

-- we will learn inner join/join,left join/left outer join,right join/right outer join,full join/full outer join, 
--innerjoin
-- fetch the employee name and departmnt Name they belong to
select e.emp_name ,d.dep_name from employee e join  department d on e.dep_id = d.dep_id;
-- inner join = fetch matchin records only
--left join
-- fetch all the employee name and their departmnt Name they belong to
select e.emp_name ,d.dep_name from employee e left join department d on e.dep_id = d.dep_id
--left join = inner join + other additional data from left table(employee table)

--right join
-- fetch  the employee name and all their departmnt Name they belong to
select e.emp_name ,d.dep_name from employee e right join department d on e.dep_id = d.dep_id
--right join = inner join + other additional data from right table(department table)

-- fetch details of all employees,their manager, their department and the project they work on
select e.emp_name,d.dep_name ,m.manager_name,p.project_name
from employee e 
left join department d on e.dep_id = d.dep_id 
join manager m on e.manager_id = m.manager_id
left join projects p on e.emp_id = p.team_member_id

--full join 
select e.emp_name ,d.dep_name from employee e full join department d on e.dep_id = d.dep_id
-- full join = inner join + all remaining data from right and left table 