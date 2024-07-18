# Write your MySQL query statement below
select st.student_id, st.student_name, sub.subject_name, count(ex.subject_name) as attended_exams from Students as st
join Subjects as sub
left join Examinations as ex
on ex.subject_name = sub.subject_name
and ex.student_id = st.student_id
group by st.student_id, sub.subject_name
order by student_id ASC, subject_name ASC