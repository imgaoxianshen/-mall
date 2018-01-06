-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-07-31 10:39:14
-- 服务器版本： 5.6.17
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_mall`
--

-- --------------------------------------------------------

--
-- 表的结构 `mall_goods`
--

CREATE TABLE `mall_goods` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `des` varchar(200) DEFAULT NULL,
  `content` longtext,
  `user_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `mall_goods`
--

INSERT INTO `mall_goods` (`id`, `name`, `price`, `pic`, `des`, `content`, `user_id`, `create_time`, `update_time`, `view`) VALUES
(1, '史蒂芬森', 19999999, 'http://v7.yunruikj.com/test/mall/static/file/2017/0727/5979bc0751144.jpg', 'sdff ', '<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, å®‹ä½“, sans-serif;background-color:#FFFFFF;\">\r\n	<br />\r\n</div>\r\n<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, å®‹ä½“, sans-serif;background-color:#FFFFFF;\">\r\n	åœ¨è¿™å¹…ç”»ä¸­ï¼Œå¤©åœ°é—´çš„æ™¯è±¡åŒ–ä½œäº†<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B5%93%E5%8E%9A\">æµ“åŽš</a>ã€æœ‰åŠ›çš„é¢œæ–™æµ†ï¼Œé¡ºç€ç”»ç¬”è·³åŠ¨çš„è½¨è¿¹ï¼Œè€Œæ¶Œèµ·é˜µé˜µæ—‹æ¶¡ã€‚æ•´ä¸ªç”»é¢ï¼Œä¼¼ä¹Žè¢«ä¸€è‚¡æ±¹æ¶Œã€åŠ¨è¡çš„æ¿€æµæ‰€åžå™¬ã€‚é£Žæ™¯åœ¨å‘ç‹‚ï¼Œå±±åœ¨éªšåŠ¨ï¼Œæœˆäº®ã€æ˜Ÿäº‘åœ¨æ—‹è½¬ï¼Œè€Œé‚£ç¿»å·ç¼­ç»•ã€ç›´ä¸Šäº‘ç«¯çš„æŸæ ‘ï¼Œçœ‹èµ·æ¥åƒæ˜¯ä¸€å›¢å·¨å¤§çš„é»‘è‰²ç«èˆŒï¼Œåæ˜ å‡ºç”»å®¶èºåŠ¨ä¸å®‰çš„æƒ…æ„Ÿå’Œç‹‚è¿·çš„å¹»è§‰ä¸–ç•Œã€‚\r\n</div>\r\n<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, å®‹ä½“, sans-serif;background-color:#FFFFFF;\">\r\n	æ¢µé«˜åœ¨è¿™é‡Œï¼Œå¹¶æ²¡æœ‰<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B6%88%E6%9E%81\">æ¶ˆæž</a>ã€è¢«åŠ¨åœ°æ²‰æººäºŽä»–é‚£æ„Ÿæƒ…æ¿€æµçš„å›¾åƒä¸­ã€‚ä»–èƒ½å°†è‡ªå·±ä½œä¸ºä¸€ä¸ªè‰ºæœ¯å®¶è€Œä»Žä½œå“ä¸­<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%8A%BD%E7%A6%BB\">æŠ½ç¦»</a>å‡ºæ¥ï¼Œå¹¶ä¸”ï¼Œå¯»æ‰¾æŸç§æ–¹å¼ï¼Œç”¨å¯¹æ¯”çš„å› ç´ ä¸Žç”»é¢å¤§çš„è¶‹åŠ¿ç›¸å†²çª,ä»Žè€Œå¼ºåŒ–æƒ…æ„Ÿçš„åˆºæ¿€ã€‚æˆ‘ä»¬åœ¨ç”»ä¸­çœ‹è§ï¼Œå‰æ™¯çš„å°é•‡æ˜¯ä»¥çŸ­ä¿ƒã€æ¸…æ™°çš„æ°´å¹³çº¿ç¬”è§¦æ¥æç»˜çš„ï¼Œä¸Žä¸Šéƒ¨å‘ˆä¸»å¯¼è¶‹åŠ¿çš„æ›²çº¿ç¬”è§¦ï¼Œäº§ç”Ÿå¼ºçƒˆå¯¹æ¯”ï¼› é‚£ç‚¹ç‚¹é»„è‰²ç¯å…‰ï¼Œå‡ç”»æˆå°å—æ–¹å½¢ï¼Œæ°ä¸Žæ˜Ÿå…‰çš„åœ†å½¢é€ åž‹å½¢æˆé²œæ˜Žå¯¹æ¯”ã€‚æ•™å ‚çš„ç»†é•¿å°–é¡¶ä¸Žåœ°å¹³çº¿äº¤å‰ï¼Œè€ŒæŸæ ‘çš„é¡¶ç«¯åˆ™æ°å¥½æ‹¦è…°ç©¿è¿‡é‚£æ—‹è½¬æ¨ªé£žçš„æ˜Ÿäº‘ã€‚\r\n</div>', 11, 1501150215, 1501150215, 0),
(5, 'ä¸ç›¸ç§°çš„å©šå§»', 5241625, 'http://v7.yunruikj.com/test/mall/static/file/2017/0728/597aa535dff1b.jpeg', 'å©šå§»', '<span style=\"color:#191919;font-family:\" font-size:16px;background-color:#ffffff;\"=\"\">è¯¥ç”»æç»˜äº†ä¸€é’æ˜¥å°‘å¥³ä¸Žä¸€è€è€…ç»“åˆçš„çˆ±æƒ…æ‚²å‰§ã€‚è€è€…è¢«ç”»å®¶æç»˜å¾—è‹è€æ†”æ‚´ï¼Œè€Œå°‘å¥³åˆ™é¢è‰²çº¢æ¶¦ï¼Œå……æ»¡é’æ˜¥æ´»åŠ›ã€‚ç”»å®¶ä»¥åŒæƒ…å°‘å¥³çš„ç¬”è°ƒï¼Œéž­æŒžäº†ä¸åˆç†çš„ç¤¾ä¼šçŽ°å®žã€‚</span>', 2, 1501209909, 1501209909, 0),
(2, ' sdgs水电费', 20000000, 'http://v7.yunruikj.com/test/mall/static/file/2017/0728/597a93a91fcfe.jpeg', '', '<span style=\"color:#191919;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">æˆåŠŸåœ°å¡‘é€ äº†èµ„æœ¬ä¸»ä¹‰ä¸Šå‡æ—¶æœŸä¸€ä½åŸŽå¸‚æœ‰äº§é˜¶çº§çš„å¦‡å¥³å½¢è±¡ã€‚ç”»ä¸­äººç‰©åå§¿ä¼˜é›…ï¼Œç¬‘å®¹å¾®å¦™ï¼ŒèƒŒæ™¯å±±æ°´å¹½æ·±èŒ«èŒ«ï¼Œæ·‹æ¼“å°½è‡´åœ°å‘æŒ¥äº†ç”»å®¶é‚£å¥‡ç‰¹çš„çƒŸé›¾çŠ¶â€œæ— ç•Œæ¸å˜ç€è‰²æ³•â€èˆ¬çš„ç¬”æ³•ã€‚ç”»å®¶åŠ›å›¾ä½¿äººç‰©çš„ä¸°å¯Œå†…å¿ƒæ„Ÿæƒ…å’Œç¾Žä¸½çš„å¤–å½¢è¾¾åˆ°å·§å¦™çš„ç»“åˆï¼Œå¯¹äºŽäººåƒé¢å®¹ä¸­çœ¼è§’å”‡è¾¹ç­‰è¡¨éœ²æ„Ÿæƒ…çš„å…³é”®éƒ¨ä½ï¼Œä¹Ÿç‰¹åˆ«ç€é‡æŽŒæ¡ç²¾ç¡®ä¸Žå«è“„çš„è¾©è¯å…³ç³»ï¼Œè¾¾åˆ°ç¥žéŸµä¹‹å¢ƒï¼Œä»Žè€Œä½¿è’™å¨œä¸½èŽŽçš„å¾®ç¬‘å…·æœ‰ä¸€ç§ç¥žç§˜èŽ«æµ‹çš„åƒå¤å¥‡éŸµï¼Œé‚£å¦‚æ¢¦ä¼¼çš„å¦©åªšå¾®ç¬‘ï¼Œè¢«ä¸å°‘ç¾Žæœ¯å²å®¶ç§°ä¸ºâ€œç¥žç§˜çš„å¾®ç¬‘â€ã€‚</span>', 2, 1501205417, 1501205417, 0),
(3, 'è¾¾ç»´ç‰¹â€”â€”æ‹¿ç ´ä»‘ç©¿è¶Šé˜¿å°”å‘æ–¯å±±', 120000000, 'http://v7.yunruikj.com/test/mall/static/file/2017/0728/597a9521454a9.jpeg', 'ew v', '<span style=\"color:#191919;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">æ­¤å¹…ä½œå“æ˜¯è¾¾ç»´ç‰¹ç¬¬ä¸€æ¬¡åˆ»ç”»çŽ°ä¸–çš„è‹±é›„ï¼Œæ­¤å‰ï¼Œä½œè€…åªå¡‘é€ å’Œæ­Œé¢‚å¤ä»£å’Œå·²æ•…çš„è‹±é›„ï¼Œç”±æ­¤å¯ä»¥çœ‹å‡ºä»–å¯¹æ‹¿ç ´ä»‘çš„å´‡æ‹œä¹‹æƒ…ã€‚æœ¬ç”»çš„å¦™å¤„åœ¨äºŽï¼Œè¿œæ™¯çš„ç®€çº¦å’Œè¿‘æ™¯çš„ç»†è…»ï¼Œè‰²å½©çš„å†·æš–å¯¹æ¯”æžä¸ºå¼ºçƒˆï¼Œäººç‰©å’Œæˆ˜é©¬çš„ç»†èŠ‚åˆ»ç”»éžå¸¸åˆ°ä½ã€‚å¯¹äºŽè¿™ä¸ªç†æƒ³åŒ–çš„å½¢è±¡ï¼Œæ‹¿ç ´ä»‘æœ¬äººä¹Ÿååˆ†æ»¡æ„ã€‚</span>', 2, 1501205793, 1501205793, 5),
(4, 'æ¡Œçƒ', 1561613, 'http://v7.yunruikj.com/test/mall/static/file/2017/0728/597a976d16916.jpeg', 'ss', '<span style=\"color:#191919;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">åœ¨è¿™å¹…ç”»ä¸­ï¼Œå¸ƒç“¦ä¼Šä»¥æžç†Ÿç»ƒçš„ç¬”æ³•ä¸Žè‰²å½©ï¼Œæç»˜äº†å¸‚æ°‘é˜¶å±‚çš„ç”Ÿæ´»ä¸Žé£Žè²Œã€‚åœ¨ä¸€ä¸ªæ¡Œçƒä¿±ä¹éƒ¨é‡Œï¼Œæ•°åäººé›†ä¸­åœ¨ä¸€èµ·ï¼Œæ‰“çƒï¼ŒèŠå¤©ï¼ŒçŽ©è€ã€‚å…¶åœºæ™¯è¢«ç”»å®¶å¤„ç†å¾—äº•äº•æœ‰æ¡ï¼Œäººç‰©åˆ»ç”»ä½“çŽ°å‡ºæ–°å¤å…¸ä¸»ä¹‰ç”»é£Žçš„å®Œæ•´ç»†è‡´ã€‚è‰²å½©ä¸¥è°¨ï¼Œç´ æä¸€ä¸ä¸è‹Ÿï¼Œæˆä¸ºä¸€å¹…å¤å…¸é£Žå‘³æžæµ“çš„é£Žä¿—ç”»ã€‚</span>', 2, 1501206381, 1501206381, 6),
(6, 'å¤§å®«å¥³', 123123123, 'http://v7.yunruikj.com/test/mall/static/file/2017/0728/597ab0f95bec8.jpeg', 'å¤§å®«å¥³', '<span style=\"color:#191919;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">è¿™å¹…ç”»åœ¨å·´é»Žå±•å‡ºæ—¶ï¼Œæ›¾å¼•èµ·äº†æžå¤§çš„äº‰è®®å’ŒæŠ¨å‡»ã€‚è¯„è®ºå®¶å¾·Â·å‡¯æ‹‰ç‰¹é‡Œè¯´å¾—è¾ƒä¸ºå°–é”ï¼Œä»–æ›¾å¯¹å®‰æ ¼å°”çš„å­¦ç”Ÿè¯´ï¼šâ€œä»–çš„è¿™ä½å®«å¥³çš„èƒŒéƒ¨è‡³å°‘å¤šäº†ä¸‰èŠ‚è„Šæ¤Žéª¨ã€‚â€ç„¶è€Œå®‰æ ¼å°”çš„å­¦ç”Ÿé˜¿èŽ«é‡ŒÂ·æœç“¦å°”åˆ™è¾©è§£è¯´ï¼šâ€œå‡¯æ‹‰ç‰¹é‡Œå¯èƒ½æ˜¯å¯¹çš„ï¼Œå¯æ˜¯è¿™åˆæ€Žä¹ˆæ ·å‘¢ï¼Ÿä¹Ÿè®¸æ­£å› ä¸ºè¿™æ®µç§€é•¿çš„è…°éƒ¨æ‰ä½¿å¥¹å¦‚æ­¤æŸ”å’Œï¼Œèƒ½ä¸€ä¸‹å­æ…‘æœä½è§‚ä¼—ã€‚å‡å¦‚å¥¹çš„èº«ä½“æ¯”ä¾‹ç»å¯¹åœ°å‡†ç¡®ï¼Œé‚£å°±å¾ˆå¯èƒ½ä¸è¿™æ ·è¯±äººäº†ï¼â€</span>', 2, 1501212921, 1501212921, 0),
(7, 'é˜¿æ–¯åŠ å¤§å·', 123112, 'http://v7.yunruikj.com/test/mall/static/file/2017/0728/597ae39e1bd8d.jpg', 'æ°´ç”µè´¹', 'æ°´ç”µè´¹', 1, 1501225886, 1501225886, 0),
(9, '阿斯加大号', 123112, 'http://v7.yunruikj.com/test/mall/static/file/2017/0728/597ae3de751ff.jpg', '水电费', '水电费', 1, 1501225950, 1501225950, 0),
(10, 'é˜¿æ–¯åŠ å¤§å·ä¸œé£Žé£Žåº¦', 123112, 'http://v7.yunruikj.com/test/mall/static/file/2017/0728/597ae431495c0.jpg', 'æ°´ç”µè´¹', 'hellobike', 1, 1501226033, 1501226033, 6),
(11, 'é˜¿æ–¯åŠ å¤§å·ä¸œé£Žé£Žåº¦111', 123112, 'http://v7.yunruikj.com/test/mall/static/file/2017/0728/597ae44f947d5.jpg', 'æ°´ç”µè´¹', 'æ°´ç”µè´¹', 1, 1501226063, 1501226063, 0),
(12, 'é˜¿æ–¯åŠ å¤§å·ä¸œé£Žé£Žåº¦111', 123112, 'http://v7.yunruikj.com/test/mall/static/file/2017/0728/597ae48904071.jpg', 'æ°´ç”µè´¹', 'æ°´ç”µè´¹å®¢æˆ·çœ‹æ¥¼ä¸Šçœ‹é£Žæ™¯äº†æ—¶ç©º', 1, 1501226120, 1501226120, 4);

-- --------------------------------------------------------

--
-- 表的结构 `mall_user`
--

CREATE TABLE `mall_user` (
  `id` int(11) NOT NULL COMMENT '主键id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `created_time` int(11) NOT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `mall_user`
--

INSERT INTO `mall_user` (`id`, `username`, `password`, `created_time`) VALUES
(1, 'root', '134194094dd3bca0ae96e54e7aa6b8bc', 1501136070),
(2, 'sad ', '3f4b8d1a463ddf5198cfca2c430c7b05', 1501137061),
(3, 'root', '134194094dd3bca0ae96e54e7aa6b8bc', 1501140520),
(4, 'root', '134194094dd3bca0ae96e54e7aa6b8bc', 1501140525),
(5, 'root', '134194094dd3bca0ae96e54e7aa6b8bc', 1501140580),
(6, 'root', '134194094dd3bca0ae96e54e7aa6b8bc', 1501140670),
(7, 'hello', '134194094dd3bca0ae96e54e7aa6b8bc', 1501140690),
(8, 'root', '134194094dd3bca0ae96e54e7aa6b8bc', 1501141141),
(9, 'root', '134194094dd3bca0ae96e54e7aa6b8bc', 1501141433),
(10, 'root', '134194094dd3bca0ae96e54e7aa6b8bc', 1501141521),
(11, 'gaofeng', '134194094dd3bca0ae96e54e7aa6b8bc', 1501142032);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mall_goods`
--
ALTER TABLE `mall_goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mall_user`
--
ALTER TABLE `mall_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `mall_goods`
--
ALTER TABLE `mall_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `mall_user`
--
ALTER TABLE `mall_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id', AUTO_INCREMENT=12;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
