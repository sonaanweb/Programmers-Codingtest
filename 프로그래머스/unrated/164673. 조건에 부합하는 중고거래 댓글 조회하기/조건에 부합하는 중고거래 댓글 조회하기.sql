-- `22년 10월에` 작성된 제목,게시글 id,댓글id,댓글작성자id,댓글작성일 조회(오름차순 정렬)
-- 댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬
-- USED_GOODS_REPLY = r / USED_GOODS_BOARD = b
SELECT B.TITLE, B.BOARD_ID, R.REPLY_ID, R.WRITER_ID, R.CONTENTS,
DATE_FORMAT(R.CREATED_DATE, '%Y-%m-%d') CREATED_DATE
FROM USED_GOODS_BOARD AS B
INNER JOIN USED_GOODS_REPLY AS R ON B.BOARD_ID = R.BOARD_ID
WHERE B.CREATED_DATE LIKE '2022-10%'
ORDER BY R.CREATED_DATE ASC, B.TITLE ASC;