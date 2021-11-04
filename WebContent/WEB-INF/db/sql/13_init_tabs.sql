---------------------------------------
-- 料理テーブル
---------------------------------------
-- TRUNCATE goods;
INSERT INTO goods VALUES('101001', '日替りＡランチ', 780, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101002', '日替りＢランチ', 880, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101003', 'パスタランチ', 780, 0, '2003-06-01', NULL);
INSERT INTO goods VALUES('101004', 'ビーフカツランチ', 880, 0, '2003-07-01', '(1).パネされたロース肉150gをミートハンマーで叩きます。(2).180度のフライヤーで6分間揚げます。(3).ホワイトプレートに、塩茹でされたほうれん草50gとナチュラルポテト50gを載せ、それに立てかけるように揚がったカツを置きます。(4).カツソースをホワイトカップに20g入れ、ビーフカツ左側に置きます。(5).パセリ1切れをビーフカツ中央奥に置きます。');
INSERT INTO goods VALUES('101101', 'チキンソテー和風ソース', 780, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101102', 'チキンソテーオニオンソース', 780, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101103', '和風ハンバーグステーキ', 780, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101104', 'チーズハンバーグステーキ', 780, 0, '2003-07-01', NULL);
INSERT INTO goods VALUES('101105', 'ハンバーグステーキデミグラスソース', 780, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101201', 'ミートソース', 780, 0, '2003-05-15', '(1).下茹でされたパスタ180gを30秒間湯通しします。(2).フライパンにサラダ油5gを落とし熱します。(3).湯通ししたパスタを湯切りし、菜ばしで混ぜながら、フライパンでサラダ油と良く絡ませます。塩・こしょう・バジリコをフライパンでまぶし、オリーブオイルを一振りします。(4).スパゲティボールにパスタを盛り付け、その中央に良く温められたミートソース1袋を開封してかけます。(5).エキストラバージンオイル、アッシェされたパセリをソースの上に振りかけます。');
INSERT INTO goods VALUES('101202', 'カルボナーラ', 880, 0, '2003-06-01', NULL);
INSERT INTO goods VALUES('101203', 'ペペロンチーニ', 780, 0, '2003-06-01', NULL);
INSERT INTO goods VALUES('101301', 'コーヒー', 250, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101302', 'アイスコーヒー', 300, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101303', '紅茶', 250, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101304', 'アイスティ', 300, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101305', 'オレンジジュース', 300, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101306', 'アップルジュース', 300, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('101401', 'とんかつ定食', 1000, 0, '2003-07-01', NULL);
INSERT INTO goods VALUES('102101', 'ライス', 160, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('102102', 'パン', 160, 0, '2003-05-15', NULL);
INSERT INTO goods VALUES('102103', 'トースト', 160, 0, '2003-05-15', NULL);

---------------------------------------
-- 仕入先テーブル
---------------------------------------
-- TRUNCATE supplier;
INSERT INTO supplier VALUES('301101', '明治屋', '埼玉県川越市', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301102', 'パスコ', '東京都江戸川区', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301103', 'ライヘルフ', '大阪府東大阪市', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301104', 'リプトン紅茶', '東京都港区', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301105', '上島珈琲', '横浜市中区', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301106', '流通パートナーズ', NULL, NULL, NULL, NULL);
INSERT INTO supplier VALUES('301107', '全食', '千葉市美浜区', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301108', '大地', '新潟県新潟市', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301109', '明治乳業', '東京都江東区', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301200', 'キッコーマン', '千葉県野田市', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301201', '片岡物産', '川崎市川崎区', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301202', 'ロイヤル食品', '福岡市那珂区', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301203', '東京製菓', '東京都大田区', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301204', '武州フーズ', '埼玉県入間郡', NULL, NULL, NULL);
INSERT INTO supplier VALUES('301205', 'コカコーラボトリング', NULL, NULL, NULL, NULL);

---------------------------------------
-- 食材テーブル
---------------------------------------
-- TRUNCATE food;
INSERT INTO food VALUES('201101', '新潟こしひかり', '301103', 350, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201102', 'あきたこまち', '301103', 330, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201103', 'カリフォルニア米', '301103', 160, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201104', 'スパゲティスピガドロ', '301201', 1700, 'ケース', 200, 'g');
INSERT INTO food VALUES('201105', '３斤棒', '301102', 190, '本', 36, '枚');
INSERT INTO food VALUES('201106', '８枚スライス', '301102', 190, '本', 8, '枚');
INSERT INTO food VALUES('201107', 'バターロール', '301102', 100, '袋', 12, '個');
INSERT INTO food VALUES('201108', '冷凍イギリスパン', '301102', 1120, 'ケース', 120, '個');
INSERT INTO food VALUES('201109', '博多の塩', '301201', 200, '本', 500, 'g');
INSERT INTO food VALUES('201110', '濃口しょうゆ', '301200', 1680, 'ケース', 12000, 'cc');
INSERT INTO food VALUES('201111', 'ウスターソース', '301200', 1680, 'ケース', 12000, 'cc');
INSERT INTO food VALUES('201112', '中濃ソース', '301200', 1680, 'ケース', 12000, 'cc');
INSERT INTO food VALUES('201113', '冷凍ミートソース', '301107', 2250, 'ケース', 60, '袋');
INSERT INTO food VALUES('201114', 'サラダ油', '301107', 1200, 'ケース', 12000, 'cc');
INSERT INTO food VALUES('201115', 'ゴマ油', '301107', 1400, 'ケース', 1200, 'cc');
INSERT INTO food VALUES('201116', 'ラード', '301106', 900, 'ケース', 12000, 'g');
INSERT INTO food VALUES('201117', 'パルメザン', '301106', 1990, '箱', 1200, 'g');
INSERT INTO food VALUES('201118', 'エキストラバージンオイル', '301106', 2280, '箱', 1200, 'cc');
INSERT INTO food VALUES('201119', '七味唐辛子', '301103', 280, '袋', 200, '本');
INSERT INTO food VALUES('201120', 'レタス', '301103', 1480, 'ケース', 6000, 'g');
INSERT INTO food VALUES('201121', '刻みキャベツ', '301103', 1380, 'ケース', 12000, 'g');
INSERT INTO food VALUES('201122', 'ブロッコリー', '301103', 590, '袋', 1000, 'g');
INSERT INTO food VALUES('201123', 'アスパラガス', '301103', 160, '缶', 30, '本');
INSERT INTO food VALUES('201124', '冷凍ほうれん草', '301103', 1500, 'ケース', 6000, 'g');
INSERT INTO food VALUES('201125', '味付キャロット', '301103', 1200, 'ケース', 6000, 'g');
INSERT INTO food VALUES('201126', 'いんげん', '301103', 800, '袋', 200, '本');
INSERT INTO food VALUES('201127', 'オリーブオイル', '301106', 1350, '箱', 2400, 'cc');
INSERT INTO food VALUES('201128', 'クリアアップル100', '301201', 2350, 'ケース', 12000, 'cc');
INSERT INTO food VALUES('201129', 'オレンジ100', '301201', 2250, 'ケース', 12000, 'cc');
INSERT INTO food VALUES('201130', 'ブレンドコーヒー豆粗挽き', '301105', 3400, 'ケース', 48000, 'cc');
INSERT INTO food VALUES('201131', 'しめじ', '301103', 550, '袋', 1000, 'g');
INSERT INTO food VALUES('201132', '大葉', '301103', 350, '袋', 120, '枚');
INSERT INTO food VALUES('201133', 'タバスコソース', '301106', 1280, '箱', 600, 'g');
INSERT INTO food VALUES('201134', 'ホワイトペッパー', '301106', 900, '缶', 1000, 'g');
INSERT INTO food VALUES('201135', 'ブラックペッパー', '301106', 1200, '袋', 500, 'g');
INSERT INTO food VALUES('201136', 'レッドペッパー', '301106', 300, '本', 50, 'g');
INSERT INTO food VALUES('201137', '牛肉サーロイン', '301108', 420, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201138', '和牛サーロイン', '301108', 860, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201139', '和牛ヒレ肉', '301108', 1060, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201140', '牛ヒレ肉', '301108', 670, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201141', '豚ロース', '301108', 350, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201142', 'フレッシュバジル', '301103', 980, '袋', 200, 'g');
INSERT INTO food VALUES('201143', 'パセリ', '301103', 380, '袋', 200, 'g');
INSERT INTO food VALUES('201144', 'アイスコーヒー豆粗挽き', '301105', 4500, 'ケース', 48000, 'cc');
INSERT INTO food VALUES('201145', '牛ロース肉', '301108', 470, 'Kg', 1000, 'g');
INSERT INTO food VALUES('201146', 'トマトケチャップ', '301200', 1100, '箱', 2400, 'g');
INSERT INTO food VALUES('201147', 'ナチュラルポテト', '301103', 1200, 'ケース', 3000, 'g');
INSERT INTO food VALUES('201148', 'レモン', '301103', 80, '個', 8, '枚');
INSERT INTO food VALUES('201149', 'オレンジ', '301103', 90, '個', 8, '切');
INSERT INTO food VALUES('201150', 'ポーションバター', '301106', 1980, '箱', 100, '個');

---------------------------------------
-- レシピテーブル
---------------------------------------
-- TRUNCATE recipe;
INSERT INTO recipe VALUES('101201', '201104', 100);
INSERT INTO recipe VALUES('101201', '201114', 30);
INSERT INTO recipe VALUES('101201', '201109', 0.5);
INSERT INTO recipe VALUES('101201', '201135', 0.5);
INSERT INTO recipe VALUES('101201', '201142', 1);
INSERT INTO recipe VALUES('101201', '201127', 10);
INSERT INTO recipe VALUES('101201', '201118', 5);
INSERT INTO recipe VALUES('101201', '201113', 1);
INSERT INTO recipe VALUES('101201', '201143', 0.5);
INSERT INTO recipe VALUES('101301', '201144', 200);
INSERT INTO recipe VALUES('101401', '201141', 180);
INSERT INTO recipe VALUES('101401', '201116', 10);
INSERT INTO recipe VALUES('101401', '201121', 50);
INSERT INTO recipe VALUES('101401', '201143', 5);
INSERT INTO recipe VALUES('101401', '201112', 20);
INSERT INTO recipe VALUES('101401', '201114', 30);
INSERT INTO recipe VALUES('101401', '201115', 5);
INSERT INTO recipe VALUES('101004', '201145', 120);
INSERT INTO recipe VALUES('101004', '201116', 10);
INSERT INTO recipe VALUES('101004', '201124', 50);
INSERT INTO recipe VALUES('101004', '201143', 5);
INSERT INTO recipe VALUES('101004', '201112', 10);
INSERT INTO recipe VALUES('101004', '201114', 30);
INSERT INTO recipe VALUES('101004', '201115', 5);
INSERT INTO recipe VALUES('101004', '201147', 50);
INSERT INTO recipe VALUES('101004', '201111', 5);
INSERT INTO recipe VALUES('101004', '201110', 5);
INSERT INTO recipe VALUES('101004', '201146', 5);
INSERT INTO recipe VALUES('101303', '201145', 1);
INSERT INTO recipe VALUES('101304', '201145', 2);
INSERT INTO recipe VALUES('101303', '201148', 1);
INSERT INTO recipe VALUES('101304', '201148', 1);
INSERT INTO recipe VALUES('101305', '201129', 150);
INSERT INTO recipe VALUES('101306', '201128', 150);
INSERT INTO recipe VALUES('102101', '201101', 100);
INSERT INTO recipe VALUES('102102', '201108', 1);
INSERT INTO recipe VALUES('102103', '201106', 2);
INSERT INTO recipe VALUES('102102', '201107', 1);
INSERT INTO recipe VALUES('102103', '201150', 1);
INSERT INTO recipe VALUES('102102', '201150', 1);
