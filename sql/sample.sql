-- サンプルSQL
-- 医療品目マスターテーブルの抽出クエリ

-- 有効な品目のみ取得
SELECT 
    INSTCD,
    ITEMTYPCD,
    ITEMTYPNM,
    NMFORLST,
    DLFLG,
    UPDDATE,
    UPDPID
FROM MITEMTYPE
WHERE DLFLG = '0'
  AND UPDDATE >= TRUNC(SYSDATE) - 30
ORDER BY UPDDATE DESC, INSTCD ASC;

-- 削除済み品目の確認
SELECT COUNT(*) AS delete_count
FROM MITEMTYPE
WHERE DLFLG = '1';

-- 施設別品目数
SELECT 
    INSTCD,
    COUNT(*) AS item_count
FROM MITEMTYPE
WHERE DLFLG = '0'
GROUP BY INSTCD
ORDER BY item_count DESC;

-- 品目タイプ別の最新
-- orororororororroro
-- 品目タイプ別の最新更新日

