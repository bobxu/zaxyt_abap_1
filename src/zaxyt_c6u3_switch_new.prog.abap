*&---------------------------------------------------------------------*
*& Report zaxyt_c6u3_switch_old
*&---------------------------------------------------------------------*
*&  课程：ABAP 开发入门
*&  章节：第六单元第三课时
*&  作者：A_216 @ Aug 20, 2018
*&---------------------------------------------------------------------*
REPORT zaxyt_c6u3_switch_new.

PARAMETERS: p_date LIKE sy-datum.
DATA: l_indicator LIKE scal-indicator,
      l_day       TYPE char10.

CALL FUNCTION 'DATE_COMPUTE_DAY'
  EXPORTING
    date = p_date
  IMPORTING
    day  = l_indicator.

l_day = switch #( l_indicator
  when 1 THEN 'Monday'(326)
  when 2 THEN 'Tuesday'(327)
  when 3 THEN 'Wednesday'(328)
  when 4 THEN 'Thursday'(329)
  when 5 THEN 'Friday'(330)
  when 6 THEN 'Saturday'(331)
  when 7 THEN 'Sunday'(332)
  ELSE 'nothing'
).

WRITE: l_day.
