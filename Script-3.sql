use db_university;


select *
from students s 
where year(date_of_birth ) = 1990;

select *
from courses c 
where cfu > 10;

select *
from students s 
where TIMESTAMPDIFF(year, date_of_birth,curdate()) >= 30;

select * 
from degrees d 
where level = 'magistrale';

select count(id)
from degrees d ;

select count(id)
from teachers t 
where phone is null;


select count(id) ,year(enrolment_date)
from students s 
group by year(enrolment_date);


select avg(es.vote), e.course_id as num_corso 
from exam_student es 
join exams e on exam_id = id
group by exam_id;

select count(id),department_id
from degrees d 
group by department_id;

select *
from students s 
join `degrees` d on s.degree_id = d.id 
where d.name = 'Corso di Laurea in Economia'
 ;



select *
from `degrees` d2 
join departments d on d2.department_id = d.id 
where d.name = 'Dipartimento di Neuroscienze'and `level` ='magistrale';

select *
from  teachers t 
left join course_teacher ct on t.id = ct.teacher_id 
join courses c on ct.course_id = c.id 
where t.name = 'Fulvio' and surname = 'Amato';


select *
from students s 
join `degrees` d on d.id = s.degree_id 
join departments d2 on d.department_id = d2.id
order by s.surname ,s.name ;






