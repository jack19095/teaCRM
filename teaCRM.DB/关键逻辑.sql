/************************************************************
 * Code formatted by SoftTree SQL Assistant ?v6.5.258
 * Time: 2014/9/4 13:31:53
 ************************************************************/

USE teacrm;
--客户列表分页  2014-09-1 14:58:50 By 唐有炜
SELECT *
FROM   (
           SELECT TOP 10
                  *
           FROM   (
                      SELECT a.id,
                             a.cus_no,
                             a.cus_name,
                             a.cus_sname,
                             a.cus_lastid,
                             a.cus_tel,
                             a.cus_city,
                             a.cus_address,
                             a.cus_note,
                             (
                                 SELECT cc.con_name
                                 FROM   T_cus_con cc
                                 WHERE  id = a.con_id
                             )           AS con_id,
                             (
                                 SELECT u.user_tname
                                 FROM   t_sys_user AS u
                                 WHERE  u.id = a.user_id
                             )           AS USER_ID,
                             (
                                 SELECT STUFF(
                                            (
                                                SELECT ','
                                                       + u2.user_tname
                                                FROM   t_sys_user AS u2
                                                WHERE  CHARINDEX(CAST(u2.id AS VARCHAR), a.con_team) 
                                                       > 0
                                                       FOR 
                                                       XML PATH('')
                                            ),
                                            1,
                                            1,
                                            ''
                                        )
                             )           AS con_team,
                             a.con_is_pub,
                             a.con_back,
                             a.cus_createTime,
                             b.*
                      FROM   T_cus_base  AS a
                             INNER JOIN T_cus_expvalue_10000 AS b
                                  ON  a.id = b.cus_id
                  ) AS T
           ORDER BY
                  id DESC
       ) AS T
ORDER BY
       id         
       
       
       
       
       
       
       SELECT * FROM ( SELECT TOP 10 * FROM (SELECT a.id, a.cus_no, a.cus_name, a.cus_sname, a.cus_lastid AS cus_lastname, a.cus_tel, a.cus_city, a.cus_address, a.cus_note, ( SELECT cc.con_name FROM T_cus_con cc WHERE id = a.con_id ) AS con_name, (SELECT u.user_tname FROM t_sys_user AS u WHERE u.id=a.user_id) as user_name, ( SELECT STUFF((SELECT ','+u2.user_tname FROM t_sys_user AS u2 WHERE CHARINDEX(CAST(u2.id as VARCHAR),a.con_team) >0 FOR XML PATH ('')),1,1,'') ) as con_team, a.con_is_pub, a.con_back, a.cus_createTime, b.* FROM T_cus_base AS a INNER JOIN T_cus_expvalue_10000 AS b ON a.id = b.cus_id) AS T ORDER BY id DESC ) AS T ORDER BY id   
       
       
       
       
       
        SELECT * FROM ( SELECT TOP 10 * FROM (SELECT a.id, a.cus_no, a.cus_name, a.cus_sname, a.cus_lastid AS cus_lastname, a.cus_tel, a.cus_city, a.cus_address, a.cus_note, ( SELECT cc.con_name FROM T_cus_con cc WHERE id = a.con_id ) AS con_name, (SELECT u.user_tname FROM t_sys_user AS u WHERE u.id=a.user_id) as user_name, ( SELECT STUFF((SELECT ','+u2.user_tname FROM t_sys_user AS u2 WHERE CHARINDEX(CAST(u2.id as VARCHAR),a.con_team) >0 FOR XML PATH ('')),1,1,'') ) as con_team, a.con_is_pub, a.con_back, a.cus_createTime, b.* FROM T_cus_base AS a INNER JOIN T_cus_expvalue_10000 AS b ON a.id = b.cus_id) AS T ORDER BY id DESC ) AS T ORDER BY id 