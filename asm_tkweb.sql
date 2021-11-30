-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 30, 2021 lúc 05:18 PM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `asm_tkweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `id_blog` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `name`, `image`, `content`, `status`, `id_blog`, `created_at`, `updated_at`) VALUES
(1, 'Cách đặt cầu thang trong nhà mang đến tài lộc và may mắn', '1638242625-blog.jpg', '1. Cầu thang trong nhà nên đặt ở đâu?\r\nBước đầu tiên khi thiết kế sơ đồ mặt bằng nhà, các Kiến trúc sư sẽ xác định vị trí đặt cầu thang. Đó là một bước quan trọng nhằm thiết lập sơ đồ công năng một cách mạnh lạc.\r\n“Cầu thang trong nhà” nên đặt ở đâu, vị trí nào để mang lại tài lộc và may mắn? điều này tùy thuộc vào quan điểm của mỗi người trong nội dung mà chúng tôi sắp trình bày dưới đây. Tuy nhiên, dù quan niệm nào chăng nữa, thì cầu thang có thể là một yếu tố sáng tạo và khác biệt trong ngôi nhà của bạn.\r\n2. Cách bố trí cầu thang truyền thống\r\nCầu thang được đặt ngay bên trong cửa trước của tiền sảnh. Vị trí này có những lợi ích của nó, bởi tiền sảnh thường đóng vai trò là khu vực trung tâm, từ đó mở rộng và kết nối với các không gian khác trong nhà.\r\nTuy nhiên, cách bố trí truyền thống này có thể chật chội nếu không có đủ diện tích từ cửa trước đến bậc đầu tiên của cầu thang.\r\nCầu thang phải tương xứng với kích thước của ngôi nhà, các chuyên gia khuyên rằng nên có ít nhất từ 1m đến 1,8m khoảng cách từ lối vào phía trước đến chân cầu thang. Chiều rộng thang từ 90 -1m2 với nhà phố, biệt thự, và 1m5 đối với dinh thự.\r\nBất kể kích thước hay hình dạng của nó như thế nào, cầu thang là một yếu tố sáng tạo, là điểm nhấn của căn nhà.\r\nVị trí đặt cầu thang cũng là yếu tố quan trọng mà bất cứ ai khi làm nhà cũng đều phải tham khảo. Đặt cầu thang đúng hướng, theo phong thủy Phương Đông, sẽ mang lại nhiều may mắn và tài lộc cho chủ nhà.', 1, 1, '2021-11-29 20:23:45', '2021-11-29 20:23:45'),
(2, '25+ mẫu phòng khách đẹp truyền cảm hứng', '1638242750-blog.jpg', 'Diện tích phòng khách bao nhiêu m2 thì đẹp?\r\nPhòng khách thường chiếm khoảng 15% diện tích trong một ngôi nhà nhỏ, nhưng chỉ chiếm 8% diện tích trong một ngôi nhà lớn.\r\nDù sơ đồ bố trí phòng khách có thể khác nhau, nhưng diện tích tiêu chuẩn vẫn có những điểm chung. Đối với phòng khách nhà nhỏ, diện tích sẽ từ 12-15m2. Diện tích từ 20-30m2 cho phòng khách trung bình. Và 30-40m2 đối với phòng khách lớn (biệt thự).\r\nNếu bạn đang tìm kiếm ý tưởng cho phòng khách, thì những mẫu phòng khách đẹp dưới đây sẽ thực sự truyền cảm hứng cho bạn.\r\nCách thiết kế và bố trí\r\nMột phòng khách đẹp hoàn hảo là khi được thiết kế bố trí nội thất phù hợp với nhu cầu và lối sống, đồng thời thúc đẩy sự tương tác giữa các thành viên trong gia đình.\r\n\r\nCó thể phòng khách nhà bạn không hợp “gu” với người khác, nhưng hơn ai hết, bạn mới là người sử dụng và hiểu hết nhu cầu, thói quen sinh hoạt của gia đình mình. Đó là chưa kể đến những yếu tố như phong thủy, hướng nhà, màu sắc, nhà có người già, trẻ nhỏ v.v…những yếu tố ảnh hưởng đến việc bố trí phòng khách cũng như các không gian khác.\r\nSơ đồ phòng khách\r\nTuy nhiên, cũng có một số gợi ý hay cho sơ đồ bố trí một phòng khách đẹp. Trong đó sẽ có một số ý tưởng về cách bố trí sofa, bàn trà hay tủ kệ TV, v.v…\r\n\r\nĐối với phòng khách kiểu cổ điển, mẹo đơn giản để có một phòng khách đẹp là bạn hãy xác định tâm điểm của căn phòng, từ đó sắp xếp bàn, ghế armchair, sofa xung quanh tâm điểm đó. Tâm điểm phòng khách có thể là lò sưởi, là vách tường TV, là bộ sofa hay chiếc bàn trà có thiết kế nổi bật.\r\nChọn đồ nội thất\r\nPhòng khách là không gian sinh hoạt và giao tiếp thường xuyên do đó đồ nội thất có thể sẽ là khía cạnh quan trọng và được đầu tư nhiều nhất khi thiết kế nội thất. Và tất nhiên nó cũng chiếm một khoảng tiền kha khá.\r\n\r\nNếu phòng khách của bạn lớn thì thật may mắn, bởi khả năng sáng tạo và ý tưởng là vô hạn. Ngược lại, nếu phòng khách nhỏ thì lúc này bạn phải cân nhắc tới việc bố trí làm sao để tối ưu hóa diện tích và công năng sử dụng hơn là chi phí.', 1, 1, '2021-11-29 20:25:50', '2021-11-29 20:25:50'),
(3, 'Gợi ý cách thiết kế nội thất căn hộ chung cư đẹp ấn tượng', '1638242809-blog.jpg', '8 cách để nội thất căn hộ trở nên ấn tượng hơn\r\nKhi bạn tìm kiếm ý tưởng thiết kế nội thất căn hộ chung cư, những yếu tố mà chúng tôi gợi ý sau đây chắc chắn sẽ là niềm cảm hứng để bạn có thể biến không gian nội thất nhà mình thành một môi trường sống thú vị.\r\n1. Chọn màu sắc và hoa văn một cách cẩn thận\r\nĐể ngôi nhà trở nên thật ấn tượng, bạn cần tạo được sự gắn kết các chủ đề lại với nhau, như: màu sắc, hoa văn, kiểu dáng đồ đạc sao cho đồng bộ với nhau. Nhiều chi tiết nhỏ nhưng thống nhất, sẽ làm cho căn hộ của bạn trông thật sự kết nối.\r\n2. Biến không gian nhỏ trở nên rộng rãi hơn\r\nNếu bạn đang sống ở trong một căn hộ có diện tích nhỏ, thì mặt bàn bằng kính có thể làm cho không gian nhẹ nhàng hơn. Một bức tranh gương treo tường cũng tạo cảm giác phản chiếu không gian thêm rộng hơn so với diện tích thực tế của nó.\r\n3. Sử dụng đồ nội thất lưu trữ thông minh\r\nĐể căn hộ chung cư của bạn trở nên gọn gàng hơn, hãy sử dụng việc lưu trữ thông minh. Nếu có điều kiện, bạn hãy dùng những món đồ nội thất xếp gọn bằng việc sử dụng các phụ kiện, thiết bị tiện ích thông minh. Ngoài ra, những bức tường được thay thế bằng những vách ngăn đóng mở linh hoạt, sẽ giúp chuyển đổi chức năng và trạng thái của không gian nội thất một cách đầy bất ngờ.\r\n4. Chọn điểm nhấn cho căn phòng\r\nNội thất căn hộ của bạn sẽ nổi bật hơn nếu bạn tạo một điểm nhấn ở bất kỳ khu vực nào. Ví dụ như việc chọn một tấm thảm có nhiều màu sắc. Một giá sách với màu sơn và có thiết kế độc đáo. Hoặc có thể sơn một bức tường thật nổi bật. Điểm nhấn có tác dụng thu hút sự chú ý và làm cho không gian nội thất bớt đơn điệu và nhàm chán.\r\n5. Sử dụng gương\r\nGương là một trong những vật dụng được sử dụng khá nhiều trong nội thất căn hộ chung cư hiện nay. Bởi gương có khả năng phản chiếu ánh sáng, đồng thời mở ra một không gian ảo với diện tích tương tự.\r\nĐặc biệt, một chiếc gương toàn thân chính là một ý tưởng tuyệt vời để khiến cho trần nhà được cao hơn. Đồng thời cũng mang lại ánh sáng nhiều hơn.', 1, 1, '2021-11-29 20:26:49', '2021-11-29 20:26:49'),
(4, 'Bí mật phong cách nội thất Hy Lạp và những ý tưởng chưa được khai phá', '1638242874-blog.jpg', '1. Phong cách Hy Lạp là gì?\r\n“Phong cách Hy Lạp (cổ đại) là phong cách mang tính duy tâm thẩm mỹ cao nhưng bình dị và hoàn hảo của trí óc nghệ thuật.”\r\nNgười Hy Lạp cổ đại sử dụng tỷ lệ và sự cân bằng của các yếu tố toán học. Họ nắm vững việc thể hiện các đường nét của con người, xem cơ thể con người là nền tảng của mọi vẻ đẹp và sự cân đối”. Sự hoàn hảo này được thể hiện cả trong nghệ thuật, kiến trúc nội thất và điêu khắc.\r\nHy Lạp cổ đại đã ảnh hưởng đến nhiều xu hướng kiến trúc nội thất trên thế giới trong nhiều thế kỷ. Nhiều kiệt tác trên toàn thế giới được lấy cảm hứng từ kiến trúc ở Hy Lạp.\r\nTrên thực tế, phong cách Tân cổ điển rất thịnh hành hiện nay thực chất là sự hồi sinh các phong cách kiến trúc, nội thất của Hy Lạp cổ đại.\r\n2. Ý tưởng nội thất phong cách Hy Lạp\r\nKhi tìm hướng đi riêng cho một phong cách nội thất, chúng ta phải nghiên cứu nguồn gốc của nền văn hóa đó. Hôm nay chúng tôi sẽ giới thiệu đến các bạn một phong cách ít được biết đến – Nội thất phong cách Hy Lạp Địa Trung Hải.\r\n\r\nNếu bạn đã từng đặt chân đến Hy Lạp (hoặc mơ về nó), chúng ta sẽ có một vùng biển xanh ngắt và những ngọn đồi đẹp như tranh vẽ. Cùng với đó là rải rác những ngôi nhà màu trắng với cửa sổ nhỏ và mái nhà màu xanh lam. Những hòn đảo của Hy Lạp mang đến cảm giác như được hít thở không khí trong lành theo nhiều cách.\r\n3. Nghệ thuật Hy Lạp cổ đại\r\nBất kỳ nền văn hóa nào cũng gắn bó chặt chẽ với các giai đoạn phát triển của lịch sử. Phong cách Hy Lạp, đặc biệt là thời kỳ Cổ đại, đạt được sự giàu có và thịnh vượng về nghệ thuật, kiến trúc & nội thất, khiến hàng triệu người ngưỡng mộ.\r\n\r\n4. Hy Lạp Địa Trung Hải\r\nViệc đưa văn hóa Hy Lạp vào nội thất đã làm phong phú thêm các phong cách thiết kế. Phong cách Hy Lạp cùng với phong cách Phục hưng Ý, Tây Ban Nha đều được coi là Địa Trung Hải. Vì chúng có chung một số yếu tố lịch sử.\r\nCó thể chia ra thành 3 biến thể:', 1, 1, '2021-11-29 20:27:54', '2021-11-29 20:27:54'),
(5, 'Thiết kế cải tạo nhà ở và 14 sai lầm ai cũng từng gặp', '1638242928-blog.jpg', 'Những sai lầm thường gặp khi sửa chữa cải tạo nhà\r\nViệc sửa chữa cải tạo nhà chính là một cách tuyệt vời để căn nhà trở nên giá trị hơn. Thế nhưng bạn biết đấy, công việc này không phải lúc nào cũng thuận buồm xuôi gió. Chắc chắn sẽ có những trục trặc và một ít khó khăn.\r\nVậy nên, đừng bỏ qua những kiến thức và kinh nghiệm mà chúng tôi chia sẻ sau đây. Chúng sẽ rất hữu ích trong quá trình sửa chữa ngôi nhà của bạn đấy!\r\n1. Chọn nhà thầu theo cảm tính\r\nKhông bao giờ chọn những công ty hay dịch vụ sửa nhà nào theo ý thích của bạn mà không có bất kỳ một nghiên cứu nào. Thay vào đó, hãy nghiên cứu về họ hoặc các dịch vụ tân trang nhà cửa mà bạn muốn hợp tác. Đồng thời kiểm tra chúng trên các diễn đàn, mạng xã hội, xem review, đánh giá v.v…\r\n\r\nĐừng suy nghĩ sẽ lựa chọn những dịch vụ sửa nhà giá rẻ, cũng như khả năng “chèo kéo” của họ. Hãy xem xét rằng giá cả đi kèm với dịch vụ sau đó là gì. Và đảm bảo rằng bạn về nhà mới với tâm trạng vui vẻ nhất.\r\n2. Không đưa ra thời gian sửa chữa cụ thể\r\nTrong quá trình sửa chữa nhà, hãy chú ý đến thời gian và tiến độ giao, nhận nhà. Bằng cách đưa ra một lịch trình cụ thể với phía nhà thầu trước khi công việc sửa chữa được tiến hành.\r\n\r\nHãy chỉ ra mọi nhiệm vụ cần được thực hiện từ đầu đến cuối. Bao gồm phân chia công việc ai sẽ làm những công việc gì và ngân sách cho mỗi hạng mục là bao nhiêu. Đồng thời, bạn cũng cần xây dựng thêm thời gian cho sự chậm trễ. Bởi sẽ có yếu tố khách quan mà bạn không lường trước được trong quá trình thi công cải tạo nhà.\r\n3. Đo sai kích thước\r\nViệc đo đạc không chính xác có vẻ như chỉ là một sai lầm của một số người mới vào nghề. Thế nhưng sai lầm này lại thường xuyên xảy ra hơn là bạn nghĩ. Sai lầm này có thể gây tốn kém cũng như ảnh hưởng đến thời gian sửa chữa mà bạn đã đưa ra trước đó.\r\n4. Không có quỹ dự phòng phát sinh\r\nĐừng mắc sai lầm khi nghĩ rằng sẽ không có gì sai sót xảy ra trong quá trình sửa chữa cải tạo nhà. Bởi thực tế sẽ luôn có những trục trặc tiềm ẩn khiến cho chi phí ngoài dự kiến tăng lên.\r\n\r\nVì vậy hãy cố gắng chỉ định khoảng 20% ngân sách của bạn cho những trường hợp phát sinh. Nếu không, bạn có thể phải sống trong một căn phòng chưa hoàn chỉnh cho đến khi kiếm đủ tiền để hoàn thành dự án.', 1, 1, '2021-11-29 20:28:48', '2021-11-29 20:28:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sofa', 1, '2021-11-27 21:10:05', '2021-11-27 21:10:05'),
(2, 'Bàn ăn', 1, '2021-11-27 21:55:32', '2021-11-27 22:32:13'),
(3, 'Ghế ăn', 1, '2021-11-27 21:56:02', '2021-11-27 21:56:02'),
(4, 'Bàn nước', 1, '2021-11-27 21:56:22', '2021-11-27 21:56:22'),
(5, 'Bàn làm việc', 1, '2021-11-27 21:56:48', '2021-11-27 21:56:48'),
(6, 'Giường ngủ', 1, '2021-11-27 21:57:01', '2021-11-27 21:57:01'),
(7, 'Bàn ngoài trời', 1, '2021-11-27 21:57:26', '2021-11-27 21:57:26'),
(8, 'Ghế ngoài trời', 1, '2021-11-27 21:57:36', '2021-11-27 21:57:36'),
(9, 'Đèn trang trí', 1, '2021-11-27 21:57:45', '2021-11-27 21:57:45'),
(10, 'Tranh', 1, '2021-11-27 21:58:13', '2021-11-27 21:58:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categoryblog`
--

CREATE TABLE `categoryblog` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categoryblog`
--

INSERT INTO `categoryblog` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kiến thức nội thất', 1, '2021-11-28 07:24:13', '2021-11-28 09:16:01'),
(3, 'Phong thuỷ', 1, '2021-11-28 07:27:35', '2021-11-28 07:27:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_30_031437_create_table_blog', 2),
(6, '2021_11_30_033121_create_table_order', 3),
(7, '2021_11_30_033243_create_table_order_detail', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL,
  `idOrder` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `idOrder`, `id_product`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, 1500000, '2021-11-30 09:53:54', '2021-11-30 09:53:54'),
(2, 2, 3, 1, 1500000, '2021-11-30 04:38:56', '2021-11-30 04:38:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'pham xuan duc', 'admin1349@gmail.com', '0332220298', '117, nguyen thi kieu', 'giao nhanh ho em', 2, '2021-11-30 04:26:52', '2021-11-30 04:27:49'),
(2, 'xuan pham', 'xuan@gmail.com', '1998', '117, nguyen thi kieu', '', 2, '2021-11-30 04:25:29', '2021-11-30 04:25:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$0Uw5SObYaoH2E7ledtNOWOZplHWnOhLt3p6hlXkxujMLt4rnzdoNq', '2021-11-29 13:12:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `id_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `content`, `price`, `quantity`, `status`, `id_cate`, `created_at`, `updated_at`) VALUES
(1, 'Bàn làm việc Osaka', '1638033943-product.jpg', 'Đối với hầu hết các công ty, phòng làm việc thường bao gồm rất nhiều đồ đạc và trang thiết bị. Trong đó, đồ vật quan trọng nhất có thể nói là chiếc bàn làm việc văn phòng. Tùy theo môi trường làm việc, chúng ta có thể sắp xếp đồ đạc, nội thất trong phòng khác nhau, nhưng đây là vật dụng không thể thiếu trong mọi không gian.\r\nBàn làm việc văn phòng có thể thay đổi về kiểu dáng, màu sắc tùy thuộc vào không gian chung hay sở thích của người sử dụng. Nhưng dù thế nào thì những chiếc bàn làm việc văn phòng cũng vẫn phải đáp ứng nhu cầu tối thiểu là để làm việc của người sử dụng.\r\nVới nhiều kiểu dáng, màu sắc khác nhau, sản phẩm bàn làm việc văn phòng Hòa Phát đáp ứng mọi nhu cầu đa dạng của khách hàng. Bàn làm việc văn phòng gồm nhều dòng sản phẩm khác nhau như bàn ghi chì, bàn vàng xanh, bàn New Trend, bàn Royal, bàn chân sắt, bàn sơn PU, verneer… Kiểu dáng đa dạng như hình tròn, hình chữ nhật, hình oval, bàn lượn hình chữ L…', 1200.00, 10, 1, 5, '2021-11-28 01:25:43', '2021-11-29 20:11:05'),
(2, 'Bàn ngoài trời Fermob Bistro – Storm Grey', '1638055821-product.jpg', 'Bàn ghế ngoài trời được hiểu rất đơn giản, cũng giống với cái tên của nó, những ngôi nhà có khu vườn rộng và thoáng mát hoặc những ngôi biệt thự lớn thường được thiết kế đi kèm với những không gian xanh và tươi mát.Để giúp gia chủ có thể ngồi nhìn ngăm và thưởng thức những ly trà trong khu vườn nhà mình một cách hoàn hảo và phù hợp thì những bộ bàn ghế sân vườn được cho ra đời, với nhiều công dụng và mẫu mã khác nhau đem lại không gian như chủ nhà mong muốn để mang lại cảm giác thoải mái cho người sử dụng.', 2500.00, 10, 1, 7, '2021-11-28 07:30:21', '2021-11-28 07:30:21'),
(3, 'Bàn ngoài trời Fermob Bistro – Honey', '1638055959-product.jpg', 'Bàn ghế ngoài trời được hiểu rất đơn giản, cũng giống với cái tên của nó, những ngôi nhà có khu vườn rộng và thoáng mát hoặc những ngôi biệt thự lớn thường được thiết kế đi kèm với những không gian xanh và tươi mát.Để giúp gia chủ có thể ngồi nhìn ngăm và thưởng thức những ly trà trong khu vườn nhà mình một cách hoàn hảo và phù hợp thì những bộ bàn ghế sân vườn được cho ra đời, với nhiều công dụng và mẫu mã khác nhau đem lại không gian như chủ nhà mong muốn để mang lại cảm giác thoải mái cho người sử dụng.', 2300.00, 10, 1, 7, '2021-11-28 07:32:39', '2021-11-28 07:32:39'),
(4, 'Bàn ngoài trời Fermob Florea – Plum', '1638057963-product.webp', 'Bàn ghế ngoài trời được hiểu rất đơn giản, cũng giống với cái tên của nó, những ngôi nhà có khu vườn rộng và thoáng mát hoặc những ngôi biệt thự lớn thường được thiết kế đi kèm với những không gian xanh và tươi mát.Để giúp gia chủ có thể ngồi nhìn ngăm và thưởng thức những ly trà trong khu vườn nhà mình một cách hoàn hảo và phù hợp thì những bộ bàn ghế sân vườn được cho ra đời, với nhiều công dụng và mẫu mã khác nhau đem lại không gian như chủ nhà mong muốn để mang lại cảm giác thoải mái cho người sử dụng.', 1500.00, 10, 1, 7, '2021-11-28 08:06:03', '2021-11-28 08:06:03'),
(5, 'Bộ 2 tranh xương rồng WD0481', '1638058355-product.webp', 'Cuốc sống muôn màu muôn vẻ, thiên nhiên đa dạng được bàn tay tài hoa của những người họa sĩ mang vào từng bức tranh. Trước đây chúng ta quá quen thuộc với những dòng tranh sơn mài, tranh thêu, tranh thêu chữ thập… được làm thủ công với giá thành không hề thấp. Thì ngày nay cùng với nhu cầu tranh treo tường có xu hướng phát triển mạnh những dòng tranh in ra đời.\r\nKhác với tranh vẽ bằng tay, tranh in sử dụng công nghệ in với máy móc hiện đại để tạo ra những bức tranh theo mẫu. Nó trở thành một loại tranh dùng để trang trí được lòng khách hàng vì chi phí thấp hơn nhiều, độ bóng sáng cao đồng thời không kém phần đẹp mắt.\r\n1. Giới thiệu về tranh treo tường\r\nThị trường tranh treo tường những năm gần đây vô cùng sôi động, đa dạng các thể loại tranh và nguồn gốc. Cùng với việc nhà nước bắt đầu thực hiện nền kinh tế mở rất nhiều sản phẩm của các đất nước khác đã đi vào thị trường Việt Nam. Tranh Việt Nam cùng từ đó mà bắt kịp được nhiều xu hướng tranh cùng công nghệ sản xuất tranh của các nước bạn. dòng tranh treo tường in là một trong những sản phẩm được sinh ra từ đó.\r\nĐặc điểm nổi bật của dòng tranh treo tường in này là chi phí thấp, chất lượng tranh cực bền, hình ảnh chân thực, sắc nét, màu sắc tự nhiên, sống động. Ngoài ra, tranh loại này rất đa dạng về phong cách, mẫu mã và không hề mang màu sắc cá nhân trong sản phẩm.\r\nSản phẩm tranh treo tường in là những sản phẩm được tạo ra từ công nghệ in tiên tiến nhất cùng mực in chuyên dụng và được lựa chọn tỷ mẫn từ khâu chọn mẫu đầu tiên qua tay những nhà thiết kế đồ họa mỹ thuật tài giỏi. Xét về mặt thẫm mỹ, nó là những bức tranh vô cùng hoàn hảo đến từng chi tiết. Xét về công nghệ, nó là một sản phẩm đi đầu trong việc áp dụng khoa học kỹ thuật vào nghệ thuật. Vậy nên đây được xem là những tác phẩm trang tường đáng để mọi người quan tâm.', 800.00, 10, 1, 10, '2021-11-28 08:12:35', '2021-11-28 08:12:35'),
(6, 'Khung hình trang trí Lady', '1638058412-product.jpg', 'Cuốc sống muôn màu muôn vẻ, thiên nhiên đa dạng được bàn tay tài hoa của những người họa sĩ mang vào từng bức tranh. Trước đây chúng ta quá quen thuộc với những dòng tranh sơn mài, tranh thêu, tranh thêu chữ thập… được làm thủ công với giá thành không hề thấp. Thì ngày nay cùng với nhu cầu tranh treo tường có xu hướng phát triển mạnh những dòng tranh in ra đời.\r\nKhác với tranh vẽ bằng tay, tranh in sử dụng công nghệ in với máy móc hiện đại để tạo ra những bức tranh theo mẫu. Nó trở thành một loại tranh dùng để trang trí được lòng khách hàng vì chi phí thấp hơn nhiều, độ bóng sáng cao đồng thời không kém phần đẹp mắt.\r\n1. Giới thiệu về tranh treo tường\r\nThị trường tranh treo tường những năm gần đây vô cùng sôi động, đa dạng các thể loại tranh và nguồn gốc. Cùng với việc nhà nước bắt đầu thực hiện nền kinh tế mở rất nhiều sản phẩm của các đất nước khác đã đi vào thị trường Việt Nam. Tranh Việt Nam cùng từ đó mà bắt kịp được nhiều xu hướng tranh cùng công nghệ sản xuất tranh của các nước bạn. dòng tranh treo tường in là một trong những sản phẩm được sinh ra từ đó.\r\nĐặc điểm nổi bật của dòng tranh treo tường in này là chi phí thấp, chất lượng tranh cực bền, hình ảnh chân thực, sắc nét, màu sắc tự nhiên, sống động. Ngoài ra, tranh loại này rất đa dạng về phong cách, mẫu mã và không hề mang màu sắc cá nhân trong sản phẩm.\r\nSản phẩm tranh treo tường in là những sản phẩm được tạo ra từ công nghệ in tiên tiến nhất cùng mực in chuyên dụng và được lựa chọn tỷ mẫn từ khâu chọn mẫu đầu tiên qua tay những nhà thiết kế đồ họa mỹ thuật tài giỏi. Xét về mặt thẫm mỹ, nó là những bức tranh vô cùng hoàn hảo đến từng chi tiết. Xét về công nghệ, nó là một sản phẩm đi đầu trong việc áp dụng khoa học kỹ thuật vào nghệ thuật. Vậy nên đây được xem là những tác phẩm trang tường đáng để mọi người quan tâm.', 700.00, 10, 1, 10, '2021-11-28 08:13:32', '2021-11-28 08:13:32'),
(7, 'Khung tranh Family Rules', '1638058506-product.jpg', 'Cuốc sống muôn màu muôn vẻ, thiên nhiên đa dạng được bàn tay tài hoa của những người họa sĩ mang vào từng bức tranh. Trước đây chúng ta quá quen thuộc với những dòng tranh sơn mài, tranh thêu, tranh thêu chữ thập… được làm thủ công với giá thành không hề thấp. Thì ngày nay cùng với nhu cầu tranh treo tường có xu hướng phát triển mạnh những dòng tranh in ra đời.\r\nKhác với tranh vẽ bằng tay, tranh in sử dụng công nghệ in với máy móc hiện đại để tạo ra những bức tranh theo mẫu. Nó trở thành một loại tranh dùng để trang trí được lòng khách hàng vì chi phí thấp hơn nhiều, độ bóng sáng cao đồng thời không kém phần đẹp mắt.\r\n1. Giới thiệu về tranh treo tường\r\nThị trường tranh treo tường những năm gần đây vô cùng sôi động, đa dạng các thể loại tranh và nguồn gốc. Cùng với việc nhà nước bắt đầu thực hiện nền kinh tế mở rất nhiều sản phẩm của các đất nước khác đã đi vào thị trường Việt Nam. Tranh Việt Nam cùng từ đó mà bắt kịp được nhiều xu hướng tranh cùng công nghệ sản xuất tranh của các nước bạn. dòng tranh treo tường in là một trong những sản phẩm được sinh ra từ đó.\r\nĐặc điểm nổi bật của dòng tranh treo tường in này là chi phí thấp, chất lượng tranh cực bền, hình ảnh chân thực, sắc nét, màu sắc tự nhiên, sống động. Ngoài ra, tranh loại này rất đa dạng về phong cách, mẫu mã và không hề mang màu sắc cá nhân trong sản phẩm.\r\nSản phẩm tranh treo tường in là những sản phẩm được tạo ra từ công nghệ in tiên tiến nhất cùng mực in chuyên dụng và được lựa chọn tỷ mẫn từ khâu chọn mẫu đầu tiên qua tay những nhà thiết kế đồ họa mỹ thuật tài giỏi. Xét về mặt thẫm mỹ, nó là những bức tranh vô cùng hoàn hảo đến từng chi tiết. Xét về công nghệ, nó là một sản phẩm đi đầu trong việc áp dụng khoa học kỹ thuật vào nghệ thuật. Vậy nên đây được xem là những tác phẩm trang tường đáng để mọi người quan tâm.', 750.00, 10, 1, 10, '2021-11-28 08:15:06', '2021-11-28 08:15:06'),
(8, 'Khung tranh trang trí 201790IL', '1638058595-product.webp', 'Cuốc sống muôn màu muôn vẻ, thiên nhiên đa dạng được bàn tay tài hoa của những người họa sĩ mang vào từng bức tranh. Trước đây chúng ta quá quen thuộc với những dòng tranh sơn mài, tranh thêu, tranh thêu chữ thập… được làm thủ công với giá thành không hề thấp. Thì ngày nay cùng với nhu cầu tranh treo tường có xu hướng phát triển mạnh những dòng tranh in ra đời.\r\nKhác với tranh vẽ bằng tay, tranh in sử dụng công nghệ in với máy móc hiện đại để tạo ra những bức tranh theo mẫu. Nó trở thành một loại tranh dùng để trang trí được lòng khách hàng vì chi phí thấp hơn nhiều, độ bóng sáng cao đồng thời không kém phần đẹp mắt.\r\n1. Giới thiệu về tranh treo tường\r\nThị trường tranh treo tường những năm gần đây vô cùng sôi động, đa dạng các thể loại tranh và nguồn gốc. Cùng với việc nhà nước bắt đầu thực hiện nền kinh tế mở rất nhiều sản phẩm của các đất nước khác đã đi vào thị trường Việt Nam. Tranh Việt Nam cùng từ đó mà bắt kịp được nhiều xu hướng tranh cùng công nghệ sản xuất tranh của các nước bạn. dòng tranh treo tường in là một trong những sản phẩm được sinh ra từ đó.\r\nĐặc điểm nổi bật của dòng tranh treo tường in này là chi phí thấp, chất lượng tranh cực bền, hình ảnh chân thực, sắc nét, màu sắc tự nhiên, sống động. Ngoài ra, tranh loại này rất đa dạng về phong cách, mẫu mã và không hề mang màu sắc cá nhân trong sản phẩm.\r\nSản phẩm tranh treo tường in là những sản phẩm được tạo ra từ công nghệ in tiên tiến nhất cùng mực in chuyên dụng và được lựa chọn tỷ mẫn từ khâu chọn mẫu đầu tiên qua tay những nhà thiết kế đồ họa mỹ thuật tài giỏi. Xét về mặt thẫm mỹ, nó là những bức tranh vô cùng hoàn hảo đến từng chi tiết. Xét về công nghệ, nó là một sản phẩm đi đầu trong việc áp dụng khoa học kỹ thuật vào nghệ thuật. Vậy nên đây được xem là những tác phẩm trang tường đáng để mọi người quan tâm.', 650.00, 10, 1, 10, '2021-11-28 08:16:35', '2021-11-28 08:16:35'),
(9, 'Tranh Bridge', '1638058775-product.webp', 'Cuốc sống muôn màu muôn vẻ, thiên nhiên đa dạng được bàn tay tài hoa của những người họa sĩ mang vào từng bức tranh. Trước đây chúng ta quá quen thuộc với những dòng tranh sơn mài, tranh thêu, tranh thêu chữ thập… được làm thủ công với giá thành không hề thấp. Thì ngày nay cùng với nhu cầu tranh treo tường có xu hướng phát triển mạnh những dòng tranh in ra đời.\r\nKhác với tranh vẽ bằng tay, tranh in sử dụng công nghệ in với máy móc hiện đại để tạo ra những bức tranh theo mẫu. Nó trở thành một loại tranh dùng để trang trí được lòng khách hàng vì chi phí thấp hơn nhiều, độ bóng sáng cao đồng thời không kém phần đẹp mắt.\r\n1. Giới thiệu về tranh treo tường\r\nThị trường tranh treo tường những năm gần đây vô cùng sôi động, đa dạng các thể loại tranh và nguồn gốc. Cùng với việc nhà nước bắt đầu thực hiện nền kinh tế mở rất nhiều sản phẩm của các đất nước khác đã đi vào thị trường Việt Nam. Tranh Việt Nam cùng từ đó mà bắt kịp được nhiều xu hướng tranh cùng công nghệ sản xuất tranh của các nước bạn. dòng tranh treo tường in là một trong những sản phẩm được sinh ra từ đó.\r\nĐặc điểm nổi bật của dòng tranh treo tường in này là chi phí thấp, chất lượng tranh cực bền, hình ảnh chân thực, sắc nét, màu sắc tự nhiên, sống động. Ngoài ra, tranh loại này rất đa dạng về phong cách, mẫu mã và không hề mang màu sắc cá nhân trong sản phẩm.\r\nSản phẩm tranh treo tường in là những sản phẩm được tạo ra từ công nghệ in tiên tiến nhất cùng mực in chuyên dụng và được lựa chọn tỷ mẫn từ khâu chọn mẫu đầu tiên qua tay những nhà thiết kế đồ họa mỹ thuật tài giỏi. Xét về mặt thẫm mỹ, nó là những bức tranh vô cùng hoàn hảo đến từng chi tiết. Xét về công nghệ, nó là một sản phẩm đi đầu trong việc áp dụng khoa học kỹ thuật vào nghệ thuật. Vậy nên đây được xem là những tác phẩm trang tường đáng để mọi người quan tâm.', 650.00, 10, 1, 10, '2021-11-28 08:19:35', '2021-11-28 08:19:35'),
(10, 'Bàn nước Elegance màu đen', '1638058975-product.webp', 'Bàn uống nước\r\nBàn trà uống nước là một cái tên khá thông dụng. Chúng còn được gọi với một số tên gọi khác như: Bàn trà, bàn sofa, bàn tiếp khách, … Tuy chúng được gọi với rất nhiều tên gọi khác nhau. Nhưng chúng đều có chung một mục đích sử dụng đó là dùng để làm phương tiện tiếp khách.\r\nNhằm thực hiện vai trò của mình, bàn uống nước được kê trong hai không gian chính. Đó là bàn uống nước gia đình hay còn được gọi là bàn uống nước phòng khách. Và một tiểu loại khác đó là bàn uống nước văn phòng.\r\nVới những mục đích khác nhau và không gian kê khác nhau. Bàn uống nước sẽ được thiết kế với rất nhiều cấu hình khác biệt. Nhằm phát huy hết khả năng và vai trò của mình trong không gian cần sử dụng.\r\nMẫu bàn uống nước được thiết kế theo phong cách hiện đại. Được ưu ái kê trong không gian phòng khách hiện đại. Có thể được tạo hình đơn giản với các khung hình cơ bản trong toán học như: hình tròn, hình vuông, hình ovan, …Cho đến các sản phẩm bàn với khung hình trái tim, lăng trụ, các mặt cạnh đều. Hay hệ thống sản phẩm bàn uống nước với khung chữ nhật hoặc vuông.\r\nĐối với các sản phẩm bàn trà kiểu dáng hiện đại này. Dù được thiết kế đơn giản hay thông minh thì hệ thống kích thước cũng vô cùng đa dạng. Ngoài các sản phẩm bàn uống nước bằng gỗ thông thường; thì một số sản phẩm bàn trà đá hay kính cũng là những tiểu loại phù hợp với không gian phòng khách này.\r\nThiết kế theo phong cách cổ điển và bán cổ điển \r\nMẫu bàn uống nước được thiết kế theo phong cách bán cổ điển hay cổ điển thông thường chúng được làm từ hai chất liệu chính. Đó là bàn uống nước gỗ tự nhiên và bàn uống nước kính. Bởi chúng mang dáng vẻ của một chút cổ điển, nhưng lại có một chút tính chất hiện đại. Tuy nhiên, điểm chốt yếu của bàn uống nước nhằm phù hợp với hai phong cách này thì ngoài kiểu dáng; màu sắc cũng là một yếu tố chủ đạo.\r\n Màu sắc mang phong thái cổ điển xen hiện đại thường được tái hiện ở những gam trầm như nâu, nâu bò, xanh navy, đỏ rượu vang, …cho đến xanh rừng già hay xanh rêu, xám, cho đến các gam màu trung tính. Đặc biệt là những gam màu phối.', 750.00, 10, 1, 4, '2021-11-28 08:22:55', '2021-11-28 08:22:55'),
(11, 'Bàn nước Miami N202023', '1638059025-product.webp', 'Bàn uống nước\r\nBàn trà uống nước là một cái tên khá thông dụng. Chúng còn được gọi với một số tên gọi khác như: Bàn trà, bàn sofa, bàn tiếp khách, … Tuy chúng được gọi với rất nhiều tên gọi khác nhau. Nhưng chúng đều có chung một mục đích sử dụng đó là dùng để làm phương tiện tiếp khách.\r\nNhằm thực hiện vai trò của mình, bàn uống nước được kê trong hai không gian chính. Đó là bàn uống nước gia đình hay còn được gọi là bàn uống nước phòng khách. Và một tiểu loại khác đó là bàn uống nước văn phòng.\r\nVới những mục đích khác nhau và không gian kê khác nhau. Bàn uống nước sẽ được thiết kế với rất nhiều cấu hình khác biệt. Nhằm phát huy hết khả năng và vai trò của mình trong không gian cần sử dụng.\r\nMẫu bàn uống nước được thiết kế theo phong cách hiện đại. Được ưu ái kê trong không gian phòng khách hiện đại. Có thể được tạo hình đơn giản với các khung hình cơ bản trong toán học như: hình tròn, hình vuông, hình ovan, …Cho đến các sản phẩm bàn với khung hình trái tim, lăng trụ, các mặt cạnh đều. Hay hệ thống sản phẩm bàn uống nước với khung chữ nhật hoặc vuông.\r\nĐối với các sản phẩm bàn trà kiểu dáng hiện đại này. Dù được thiết kế đơn giản hay thông minh thì hệ thống kích thước cũng vô cùng đa dạng. Ngoài các sản phẩm bàn uống nước bằng gỗ thông thường; thì một số sản phẩm bàn trà đá hay kính cũng là những tiểu loại phù hợp với không gian phòng khách này.\r\nThiết kế theo phong cách cổ điển và bán cổ điển \r\nMẫu bàn uống nước được thiết kế theo phong cách bán cổ điển hay cổ điển thông thường chúng được làm từ hai chất liệu chính. Đó là bàn uống nước gỗ tự nhiên và bàn uống nước kính. Bởi chúng mang dáng vẻ của một chút cổ điển, nhưng lại có một chút tính chất hiện đại. Tuy nhiên, điểm chốt yếu của bàn uống nước nhằm phù hợp với hai phong cách này thì ngoài kiểu dáng; màu sắc cũng là một yếu tố chủ đạo.\r\n Màu sắc mang phong thái cổ điển xen hiện đại thường được tái hiện ở những gam trầm như nâu, nâu bò, xanh navy, đỏ rượu vang, …cho đến xanh rừng già hay xanh rêu, xám, cho đến các gam màu trung tính. Đặc biệt là những gam màu phối.', 850.00, 10, 1, 4, '2021-11-28 08:23:45', '2021-11-28 08:23:45'),
(12, 'Bàn nước Pop', '1638059089-product.jpg', 'Bàn uống nước\r\nBàn trà uống nước là một cái tên khá thông dụng. Chúng còn được gọi với một số tên gọi khác như: Bàn trà, bàn sofa, bàn tiếp khách, … Tuy chúng được gọi với rất nhiều tên gọi khác nhau. Nhưng chúng đều có chung một mục đích sử dụng đó là dùng để làm phương tiện tiếp khách.\r\nNhằm thực hiện vai trò của mình, bàn uống nước được kê trong hai không gian chính. Đó là bàn uống nước gia đình hay còn được gọi là bàn uống nước phòng khách. Và một tiểu loại khác đó là bàn uống nước văn phòng.\r\nVới những mục đích khác nhau và không gian kê khác nhau. Bàn uống nước sẽ được thiết kế với rất nhiều cấu hình khác biệt. Nhằm phát huy hết khả năng và vai trò của mình trong không gian cần sử dụng.\r\nMẫu bàn uống nước được thiết kế theo phong cách hiện đại. Được ưu ái kê trong không gian phòng khách hiện đại. Có thể được tạo hình đơn giản với các khung hình cơ bản trong toán học như: hình tròn, hình vuông, hình ovan, …Cho đến các sản phẩm bàn với khung hình trái tim, lăng trụ, các mặt cạnh đều. Hay hệ thống sản phẩm bàn uống nước với khung chữ nhật hoặc vuông.\r\nĐối với các sản phẩm bàn trà kiểu dáng hiện đại này. Dù được thiết kế đơn giản hay thông minh thì hệ thống kích thước cũng vô cùng đa dạng. Ngoài các sản phẩm bàn uống nước bằng gỗ thông thường; thì một số sản phẩm bàn trà đá hay kính cũng là những tiểu loại phù hợp với không gian phòng khách này.\r\nThiết kế theo phong cách cổ điển và bán cổ điển \r\nMẫu bàn uống nước được thiết kế theo phong cách bán cổ điển hay cổ điển thông thường chúng được làm từ hai chất liệu chính. Đó là bàn uống nước gỗ tự nhiên và bàn uống nước kính. Bởi chúng mang dáng vẻ của một chút cổ điển, nhưng lại có một chút tính chất hiện đại. Tuy nhiên, điểm chốt yếu của bàn uống nước nhằm phù hợp với hai phong cách này thì ngoài kiểu dáng; màu sắc cũng là một yếu tố chủ đạo.\r\n Màu sắc mang phong thái cổ điển xen hiện đại thường được tái hiện ở những gam trầm như nâu, nâu bò, xanh navy, đỏ rượu vang, …cho đến xanh rừng già hay xanh rêu, xám, cho đến các gam màu trung tính. Đặc biệt là những gam màu phối.', 550.00, 10, 1, 4, '2021-11-28 08:24:49', '2021-11-28 08:24:49'),
(13, 'Bàn nước Chamcha mặt kính', '1638059155-product.webp', 'Bàn uống nước\r\nBàn trà uống nước là một cái tên khá thông dụng. Chúng còn được gọi với một số tên gọi khác như: Bàn trà, bàn sofa, bàn tiếp khách, … Tuy chúng được gọi với rất nhiều tên gọi khác nhau. Nhưng chúng đều có chung một mục đích sử dụng đó là dùng để làm phương tiện tiếp khách.\r\nNhằm thực hiện vai trò của mình, bàn uống nước được kê trong hai không gian chính. Đó là bàn uống nước gia đình hay còn được gọi là bàn uống nước phòng khách. Và một tiểu loại khác đó là bàn uống nước văn phòng.\r\nVới những mục đích khác nhau và không gian kê khác nhau. Bàn uống nước sẽ được thiết kế với rất nhiều cấu hình khác biệt. Nhằm phát huy hết khả năng và vai trò của mình trong không gian cần sử dụng.\r\nMẫu bàn uống nước được thiết kế theo phong cách hiện đại. Được ưu ái kê trong không gian phòng khách hiện đại. Có thể được tạo hình đơn giản với các khung hình cơ bản trong toán học như: hình tròn, hình vuông, hình ovan, …Cho đến các sản phẩm bàn với khung hình trái tim, lăng trụ, các mặt cạnh đều. Hay hệ thống sản phẩm bàn uống nước với khung chữ nhật hoặc vuông.\r\nĐối với các sản phẩm bàn trà kiểu dáng hiện đại này. Dù được thiết kế đơn giản hay thông minh thì hệ thống kích thước cũng vô cùng đa dạng. Ngoài các sản phẩm bàn uống nước bằng gỗ thông thường; thì một số sản phẩm bàn trà đá hay kính cũng là những tiểu loại phù hợp với không gian phòng khách này.\r\nThiết kế theo phong cách cổ điển và bán cổ điển \r\nMẫu bàn uống nước được thiết kế theo phong cách bán cổ điển hay cổ điển thông thường chúng được làm từ hai chất liệu chính. Đó là bàn uống nước gỗ tự nhiên và bàn uống nước kính. Bởi chúng mang dáng vẻ của một chút cổ điển, nhưng lại có một chút tính chất hiện đại. Tuy nhiên, điểm chốt yếu của bàn uống nước nhằm phù hợp với hai phong cách này thì ngoài kiểu dáng; màu sắc cũng là một yếu tố chủ đạo.\r\n Màu sắc mang phong thái cổ điển xen hiện đại thường được tái hiện ở những gam trầm như nâu, nâu bò, xanh navy, đỏ rượu vang, …cho đến xanh rừng già hay xanh rêu, xám, cho đến các gam màu trung tính. Đặc biệt là những gam màu phối.', 650.00, 10, 1, 4, '2021-11-28 08:25:55', '2021-11-28 08:25:55'),
(14, 'Bàn nước Osaka', '1638059228-product.jpg', 'Bàn uống nước\r\nBàn trà uống nước là một cái tên khá thông dụng. Chúng còn được gọi với một số tên gọi khác như: Bàn trà, bàn sofa, bàn tiếp khách, … Tuy chúng được gọi với rất nhiều tên gọi khác nhau. Nhưng chúng đều có chung một mục đích sử dụng đó là dùng để làm phương tiện tiếp khách.\r\nNhằm thực hiện vai trò của mình, bàn uống nước được kê trong hai không gian chính. Đó là bàn uống nước gia đình hay còn được gọi là bàn uống nước phòng khách. Và một tiểu loại khác đó là bàn uống nước văn phòng.\r\nVới những mục đích khác nhau và không gian kê khác nhau. Bàn uống nước sẽ được thiết kế với rất nhiều cấu hình khác biệt. Nhằm phát huy hết khả năng và vai trò của mình trong không gian cần sử dụng.\r\nMẫu bàn uống nước được thiết kế theo phong cách hiện đại. Được ưu ái kê trong không gian phòng khách hiện đại. Có thể được tạo hình đơn giản với các khung hình cơ bản trong toán học như: hình tròn, hình vuông, hình ovan, …Cho đến các sản phẩm bàn với khung hình trái tim, lăng trụ, các mặt cạnh đều. Hay hệ thống sản phẩm bàn uống nước với khung chữ nhật hoặc vuông.\r\nĐối với các sản phẩm bàn trà kiểu dáng hiện đại này. Dù được thiết kế đơn giản hay thông minh thì hệ thống kích thước cũng vô cùng đa dạng. Ngoài các sản phẩm bàn uống nước bằng gỗ thông thường; thì một số sản phẩm bàn trà đá hay kính cũng là những tiểu loại phù hợp với không gian phòng khách này.\r\nThiết kế theo phong cách cổ điển và bán cổ điển \r\nMẫu bàn uống nước được thiết kế theo phong cách bán cổ điển hay cổ điển thông thường chúng được làm từ hai chất liệu chính. Đó là bàn uống nước gỗ tự nhiên và bàn uống nước kính. Bởi chúng mang dáng vẻ của một chút cổ điển, nhưng lại có một chút tính chất hiện đại. Tuy nhiên, điểm chốt yếu của bàn uống nước nhằm phù hợp với hai phong cách này thì ngoài kiểu dáng; màu sắc cũng là một yếu tố chủ đạo.\r\n Màu sắc mang phong thái cổ điển xen hiện đại thường được tái hiện ở những gam trầm như nâu, nâu bò, xanh navy, đỏ rượu vang, …cho đến xanh rừng già hay xanh rêu, xám, cho đến các gam màu trung tính. Đặc biệt là những gam màu phối.', 450.00, 10, 1, 4, '2021-11-28 08:27:08', '2021-11-28 08:27:08'),
(15, 'Bàn nước Opal giả đá oval', '1638059277-product.webp', 'Bàn uống nước\r\nBàn trà uống nước là một cái tên khá thông dụng. Chúng còn được gọi với một số tên gọi khác như: Bàn trà, bàn sofa, bàn tiếp khách, … Tuy chúng được gọi với rất nhiều tên gọi khác nhau. Nhưng chúng đều có chung một mục đích sử dụng đó là dùng để làm phương tiện tiếp khách.\r\nNhằm thực hiện vai trò của mình, bàn uống nước được kê trong hai không gian chính. Đó là bàn uống nước gia đình hay còn được gọi là bàn uống nước phòng khách. Và một tiểu loại khác đó là bàn uống nước văn phòng.\r\nVới những mục đích khác nhau và không gian kê khác nhau. Bàn uống nước sẽ được thiết kế với rất nhiều cấu hình khác biệt. Nhằm phát huy hết khả năng và vai trò của mình trong không gian cần sử dụng.\r\nMẫu bàn uống nước được thiết kế theo phong cách hiện đại. Được ưu ái kê trong không gian phòng khách hiện đại. Có thể được tạo hình đơn giản với các khung hình cơ bản trong toán học như: hình tròn, hình vuông, hình ovan, …Cho đến các sản phẩm bàn với khung hình trái tim, lăng trụ, các mặt cạnh đều. Hay hệ thống sản phẩm bàn uống nước với khung chữ nhật hoặc vuông.\r\nĐối với các sản phẩm bàn trà kiểu dáng hiện đại này. Dù được thiết kế đơn giản hay thông minh thì hệ thống kích thước cũng vô cùng đa dạng. Ngoài các sản phẩm bàn uống nước bằng gỗ thông thường; thì một số sản phẩm bàn trà đá hay kính cũng là những tiểu loại phù hợp với không gian phòng khách này.\r\nThiết kế theo phong cách cổ điển và bán cổ điển \r\nMẫu bàn uống nước được thiết kế theo phong cách bán cổ điển hay cổ điển thông thường chúng được làm từ hai chất liệu chính. Đó là bàn uống nước gỗ tự nhiên và bàn uống nước kính. Bởi chúng mang dáng vẻ của một chút cổ điển, nhưng lại có một chút tính chất hiện đại. Tuy nhiên, điểm chốt yếu của bàn uống nước nhằm phù hợp với hai phong cách này thì ngoài kiểu dáng; màu sắc cũng là một yếu tố chủ đạo.\r\n Màu sắc mang phong thái cổ điển xen hiện đại thường được tái hiện ở những gam trầm như nâu, nâu bò, xanh navy, đỏ rượu vang, …cho đến xanh rừng già hay xanh rêu, xám, cho đến các gam màu trung tính. Đặc biệt là những gam màu phối.', 1200.00, 10, 1, 4, '2021-11-28 08:27:57', '2021-11-28 08:27:57'),
(16, 'Đèn bàn Arlington', '1638059477-product.jpg', 'Theo thời gian đèn chiếu sáng càng ngày càng được cải tiến thêm nhiều về mẫu mã. Chúng không chỉ dừng lại ở khả năng chiếu sáng. Mà đèn trang trí còn tạo điểm nhấn ấn tượng cho không gian. Hiện nay trên thị trường có vô số loại đèn trang trí khác nhau. Mỗi loại đèn đều có những đặc điểm riêng phù hợp với nhu cầu của từng gia đình. Các loại đèn trang trí trên thị trường có rất nhiều loại. Trong bài viết này sẽ giúp bạn hiểu về từng loại để có thể lựa chọn sản phẩm phù hợp cho ngôi nhà của mình.Đèn chùm cổ điển: \r\nĐây là loại đèn có thiết kế sang trọng, xa hoa nhất. Những đường nét hoa văn tỉ mỉ, các chi tiết được chạm khắc tinh tế. Những ngôi nhà theo lối kiến trúc cổ điển chắc chắn sẽ không bỏ qua các sản phẩm này. Đèn chùm hiện đại\r\nNgoài những ngôi nhà theo lối kiến trúc cổ điển thì kiến trúc hiện đại cũng rất thịnh hành. Bởi vậy, kiểu dáng của đèn chùm cũng được cải tiến một cách đột phá. \r\nChúng vẫn giữ lại nét sang trọng và xa hoa nhưng sẽ không còn hoa văn hay chi tiết cầu kỳ. Thay vào đó thiết kế sáng tạo không giới hạn. Chúng được lấy cảm hứng từ những thứ rất gần gũi với chúng ta. Vì thế kh sử dụng đèn chùm hiện đại sẽ thấy thật sang trọng nhưng cũng rất gần gũi.', 1250.00, 10, 1, 9, '2021-11-28 08:31:17', '2021-11-28 08:31:17'),
(17, 'Đèn bàn Olympia Equestrian Nickel', '1638059619-product.jpg', 'Theo thời gian đèn chiếu sáng càng ngày càng được cải tiến thêm nhiều về mẫu mã. Chúng không chỉ dừng lại ở khả năng chiếu sáng. Mà đèn trang trí còn tạo điểm nhấn ấn tượng cho không gian. Hiện nay trên thị trường có vô số loại đèn trang trí khác nhau. Mỗi loại đèn đều có những đặc điểm riêng phù hợp với nhu cầu của từng gia đình. Các loại đèn trang trí trên thị trường có rất nhiều loại. Trong bài viết này sẽ giúp bạn hiểu về từng loại để có thể lựa chọn sản phẩm phù hợp cho ngôi nhà của mình.Đèn chùm cổ điển: \r\nĐây là loại đèn có thiết kế sang trọng, xa hoa nhất. Những đường nét hoa văn tỉ mỉ, các chi tiết được chạm khắc tinh tế. Những ngôi nhà theo lối kiến trúc cổ điển chắc chắn sẽ không bỏ qua các sản phẩm này. Đèn chùm hiện đại\r\nNgoài những ngôi nhà theo lối kiến trúc cổ điển thì kiến trúc hiện đại cũng rất thịnh hành. Bởi vậy, kiểu dáng của đèn chùm cũng được cải tiến một cách đột phá. \r\nChúng vẫn giữ lại nét sang trọng và xa hoa nhưng sẽ không còn hoa văn hay chi tiết cầu kỳ. Thay vào đó thiết kế sáng tạo không giới hạn. Chúng được lấy cảm hứng từ những thứ rất gần gũi với chúng ta. Vì thế kh sử dụng đèn chùm hiện đại sẽ thấy thật sang trọng nhưng cũng rất gần gũi.', 345.00, 10, 1, 9, '2021-11-28 08:33:39', '2021-11-28 08:33:39'),
(18, 'Đèn bàn Savona', '1638059660-product.jpg', 'Theo thời gian đèn chiếu sáng càng ngày càng được cải tiến thêm nhiều về mẫu mã. Chúng không chỉ dừng lại ở khả năng chiếu sáng. Mà đèn trang trí còn tạo điểm nhấn ấn tượng cho không gian. Hiện nay trên thị trường có vô số loại đèn trang trí khác nhau. Mỗi loại đèn đều có những đặc điểm riêng phù hợp với nhu cầu của từng gia đình. Các loại đèn trang trí trên thị trường có rất nhiều loại. Trong bài viết này sẽ giúp bạn hiểu về từng loại để có thể lựa chọn sản phẩm phù hợp cho ngôi nhà của mình.Đèn chùm cổ điển: \r\nĐây là loại đèn có thiết kế sang trọng, xa hoa nhất. Những đường nét hoa văn tỉ mỉ, các chi tiết được chạm khắc tinh tế. Những ngôi nhà theo lối kiến trúc cổ điển chắc chắn sẽ không bỏ qua các sản phẩm này. Đèn chùm hiện đại\r\nNgoài những ngôi nhà theo lối kiến trúc cổ điển thì kiến trúc hiện đại cũng rất thịnh hành. Bởi vậy, kiểu dáng của đèn chùm cũng được cải tiến một cách đột phá. \r\nChúng vẫn giữ lại nét sang trọng và xa hoa nhưng sẽ không còn hoa văn hay chi tiết cầu kỳ. Thay vào đó thiết kế sáng tạo không giới hạn. Chúng được lấy cảm hứng từ những thứ rất gần gũi với chúng ta. Vì thế kh sử dụng đèn chùm hiện đại sẽ thấy thật sang trọng nhưng cũng rất gần gũi.', 4500.00, 10, 1, 9, '2021-11-28 08:34:20', '2021-11-28 08:34:20'),
(19, 'Chân đèn bàn Liana', '1638059709-product.jpg', 'Theo thời gian đèn chiếu sáng càng ngày càng được cải tiến thêm nhiều về mẫu mã. Chúng không chỉ dừng lại ở khả năng chiếu sáng. Mà đèn trang trí còn tạo điểm nhấn ấn tượng cho không gian. Hiện nay trên thị trường có vô số loại đèn trang trí khác nhau. Mỗi loại đèn đều có những đặc điểm riêng phù hợp với nhu cầu của từng gia đình. Các loại đèn trang trí trên thị trường có rất nhiều loại. Trong bài viết này sẽ giúp bạn hiểu về từng loại để có thể lựa chọn sản phẩm phù hợp cho ngôi nhà của mình.Đèn chùm cổ điển: \r\nĐây là loại đèn có thiết kế sang trọng, xa hoa nhất. Những đường nét hoa văn tỉ mỉ, các chi tiết được chạm khắc tinh tế. Những ngôi nhà theo lối kiến trúc cổ điển chắc chắn sẽ không bỏ qua các sản phẩm này. Đèn chùm hiện đại\r\nNgoài những ngôi nhà theo lối kiến trúc cổ điển thì kiến trúc hiện đại cũng rất thịnh hành. Bởi vậy, kiểu dáng của đèn chùm cũng được cải tiến một cách đột phá. \r\nChúng vẫn giữ lại nét sang trọng và xa hoa nhưng sẽ không còn hoa văn hay chi tiết cầu kỳ. Thay vào đó thiết kế sáng tạo không giới hạn. Chúng được lấy cảm hứng từ những thứ rất gần gũi với chúng ta. Vì thế kh sử dụng đèn chùm hiện đại sẽ thấy thật sang trọng nhưng cũng rất gần gũi.', 1450.00, 10, 1, 9, '2021-11-28 08:35:09', '2021-11-28 08:35:09'),
(20, 'Đèn bàn Aliza', '1638059762-product.jpg', 'Theo thời gian đèn chiếu sáng càng ngày càng được cải tiến thêm nhiều về mẫu mã. Chúng không chỉ dừng lại ở khả năng chiếu sáng. Mà đèn trang trí còn tạo điểm nhấn ấn tượng cho không gian. Hiện nay trên thị trường có vô số loại đèn trang trí khác nhau. Mỗi loại đèn đều có những đặc điểm riêng phù hợp với nhu cầu của từng gia đình. Các loại đèn trang trí trên thị trường có rất nhiều loại. Trong bài viết này sẽ giúp bạn hiểu về từng loại để có thể lựa chọn sản phẩm phù hợp cho ngôi nhà của mình.Đèn chùm cổ điển: \r\nĐây là loại đèn có thiết kế sang trọng, xa hoa nhất. Những đường nét hoa văn tỉ mỉ, các chi tiết được chạm khắc tinh tế. Những ngôi nhà theo lối kiến trúc cổ điển chắc chắn sẽ không bỏ qua các sản phẩm này. Đèn chùm hiện đại\r\nNgoài những ngôi nhà theo lối kiến trúc cổ điển thì kiến trúc hiện đại cũng rất thịnh hành. Bởi vậy, kiểu dáng của đèn chùm cũng được cải tiến một cách đột phá. \r\nChúng vẫn giữ lại nét sang trọng và xa hoa nhưng sẽ không còn hoa văn hay chi tiết cầu kỳ. Thay vào đó thiết kế sáng tạo không giới hạn. Chúng được lấy cảm hứng từ những thứ rất gần gũi với chúng ta. Vì thế kh sử dụng đèn chùm hiện đại sẽ thấy thật sang trọng nhưng cũng rất gần gũi.', 6540.00, 10, 1, 9, '2021-11-28 08:36:02', '2021-11-28 08:36:02'),
(21, 'Đèn bàn Aria Marb Nickel', '1638059903-product.jpg', 'Theo thời gian đèn chiếu sáng càng ngày càng được cải tiến thêm nhiều về mẫu mã. Chúng không chỉ dừng lại ở khả năng chiếu sáng. Mà đèn trang trí còn tạo điểm nhấn ấn tượng cho không gian. Hiện nay trên thị trường có vô số loại đèn trang trí khác nhau. Mỗi loại đèn đều có những đặc điểm riêng phù hợp với nhu cầu của từng gia đình. Các loại đèn trang trí trên thị trường có rất nhiều loại. Trong bài viết này sẽ giúp bạn hiểu về từng loại để có thể lựa chọn sản phẩm phù hợp cho ngôi nhà của mình.Đèn chùm cổ điển: \r\nĐây là loại đèn có thiết kế sang trọng, xa hoa nhất. Những đường nét hoa văn tỉ mỉ, các chi tiết được chạm khắc tinh tế. Những ngôi nhà theo lối kiến trúc cổ điển chắc chắn sẽ không bỏ qua các sản phẩm này. Đèn chùm hiện đại\r\nNgoài những ngôi nhà theo lối kiến trúc cổ điển thì kiến trúc hiện đại cũng rất thịnh hành. Bởi vậy, kiểu dáng của đèn chùm cũng được cải tiến một cách đột phá. \r\nChúng vẫn giữ lại nét sang trọng và xa hoa nhưng sẽ không còn hoa văn hay chi tiết cầu kỳ. Thay vào đó thiết kế sáng tạo không giới hạn. Chúng được lấy cảm hứng từ những thứ rất gần gũi với chúng ta. Vì thế kh sử dụng đèn chùm hiện đại sẽ thấy thật sang trọng nhưng cũng rất gần gũi.', 1459.00, 10, 1, 9, '2021-11-28 08:38:23', '2021-11-28 08:38:23'),
(22, 'Đèn bàn Champ', '1638059972-product.jpg', 'Theo thời gian đèn chiếu sáng càng ngày càng được cải tiến thêm nhiều về mẫu mã. Chúng không chỉ dừng lại ở khả năng chiếu sáng. Mà đèn trang trí còn tạo điểm nhấn ấn tượng cho không gian. Hiện nay trên thị trường có vô số loại đèn trang trí khác nhau. Mỗi loại đèn đều có những đặc điểm riêng phù hợp với nhu cầu của từng gia đình. Các loại đèn trang trí trên thị trường có rất nhiều loại. Trong bài viết này sẽ giúp bạn hiểu về từng loại để có thể lựa chọn sản phẩm phù hợp cho ngôi nhà của mình.Đèn chùm cổ điển: \r\nĐây là loại đèn có thiết kế sang trọng, xa hoa nhất. Những đường nét hoa văn tỉ mỉ, các chi tiết được chạm khắc tinh tế. Những ngôi nhà theo lối kiến trúc cổ điển chắc chắn sẽ không bỏ qua các sản phẩm này. Đèn chùm hiện đại\r\nNgoài những ngôi nhà theo lối kiến trúc cổ điển thì kiến trúc hiện đại cũng rất thịnh hành. Bởi vậy, kiểu dáng của đèn chùm cũng được cải tiến một cách đột phá. \r\nChúng vẫn giữ lại nét sang trọng và xa hoa nhưng sẽ không còn hoa văn hay chi tiết cầu kỳ. Thay vào đó thiết kế sáng tạo không giới hạn. Chúng được lấy cảm hứng từ những thứ rất gần gũi với chúng ta. Vì thế kh sử dụng đèn chùm hiện đại sẽ thấy thật sang trọng nhưng cũng rất gần gũi.', 430.00, 10, 1, 9, '2021-11-28 08:39:32', '2021-11-28 08:39:32'),
(23, 'Sofa 3 chỗ Elegance màu tự nhiên, da xanh', '1638060092-product.webp', 'Sofa đang là loại ghế đa dụng nhất hiện nay, có rất nhiều loại sofa khác nhau từ sofa góc, sofa giường, sofa vang, sofa cho phòng khách, sofa cho phòng ngủ, sofa giường,… mỗi loại sofa đều có ứng dụng riêng của nó.Nếu phân theo kiểu dáng, chức năng sử dụng, sofa có các loại sau:\r\n- Sofa góc\r\nLà loại ghế được làm từ chất liệu da (chất liệu da này có thể là thật hoặc giả). Sản phẩm có thiết kế góc chữ L vừa hiện đại vừa sang trọng. Đây có thể coi là 1 trong những mẫu ghế sofa được ưa chuộng nhất và cũng bán chạy nhất trong vài năm trở lại đây.\r\nSofa góc có những đặc điểm đặc trưng là: kiểu dáng hiện đại, đẹp mắt, được làm từ chất liệu bền và dễ lau chùi, vệ sinh khi cần thiết. Vẻ đẹp mới lạ cùng sự tiện nghi, sang trọng mà dòng sản phẩm này mang lại trong không gian khiến bất cứ căn phòng nào cũng trở nên ấn tượng, cá tính.\r\n- Sofa giường\r\nĐúng như tên gọi, sofa giường vừa có thể dùng để ngồi tiếp khách, làm việc hoặc giường nằm êm ái thay thế cho các loại giường. Sản phẩm này được đánh giá là thuận tiện hơn tất cả các loại sofa khác vì có thể được dùng với nhiều chức năng khác nhau, vừa có thể dùng để nằm, ngồi hay đặt đồ vật đều rất tiện ích.\r\nSofa giường có dặc điểm là: có kiểu dáng hiện đại, mới lạ, thuận tiện trong sử dụng, lại có giá cả phải chăng nên hiện rất được ưa chuộng.', 1200.00, 10, 1, 1, '2021-11-28 08:41:32', '2021-11-28 08:41:32'),
(24, 'preview next Sofa 3 chỗ Elegance màu tự nhiên, vải xanh', '1638060154-product.webp', 'Sofa đang là loại ghế đa dụng nhất hiện nay, có rất nhiều loại sofa khác nhau từ sofa góc, sofa giường, sofa vang, sofa cho phòng khách, sofa cho phòng ngủ, sofa giường,… mỗi loại sofa đều có ứng dụng riêng của nó.Nếu phân theo kiểu dáng, chức năng sử dụng, sofa có các loại sau:\r\n- Sofa góc\r\nLà loại ghế được làm từ chất liệu da (chất liệu da này có thể là thật hoặc giả). Sản phẩm có thiết kế góc chữ L vừa hiện đại vừa sang trọng. Đây có thể coi là 1 trong những mẫu ghế sofa được ưa chuộng nhất và cũng bán chạy nhất trong vài năm trở lại đây.\r\nSofa góc có những đặc điểm đặc trưng là: kiểu dáng hiện đại, đẹp mắt, được làm từ chất liệu bền và dễ lau chùi, vệ sinh khi cần thiết. Vẻ đẹp mới lạ cùng sự tiện nghi, sang trọng mà dòng sản phẩm này mang lại trong không gian khiến bất cứ căn phòng nào cũng trở nên ấn tượng, cá tính.\r\n- Sofa giường\r\nĐúng như tên gọi, sofa giường vừa có thể dùng để ngồi tiếp khách, làm việc hoặc giường nằm êm ái thay thế cho các loại giường. Sản phẩm này được đánh giá là thuận tiện hơn tất cả các loại sofa khác vì có thể được dùng với nhiều chức năng khác nhau, vừa có thể dùng để nằm, ngồi hay đặt đồ vật đều rất tiện ích.\r\nSofa giường có dặc điểm là: có kiểu dáng hiện đại, mới lạ, thuận tiện trong sử dụng, lại có giá cả phải chăng nên hiện rất được ưa chuộng.', 13400.00, 10, 1, 1, '2021-11-28 08:42:34', '2021-11-28 08:42:34'),
(25, 'Sofa 3 chỗ Elegance màu đen, da Brown R5', '1638060195-product.webp', 'Sofa đang là loại ghế đa dụng nhất hiện nay, có rất nhiều loại sofa khác nhau từ sofa góc, sofa giường, sofa vang, sofa cho phòng khách, sofa cho phòng ngủ, sofa giường,… mỗi loại sofa đều có ứng dụng riêng của nó.Nếu phân theo kiểu dáng, chức năng sử dụng, sofa có các loại sau:\r\n- Sofa góc\r\nLà loại ghế được làm từ chất liệu da (chất liệu da này có thể là thật hoặc giả). Sản phẩm có thiết kế góc chữ L vừa hiện đại vừa sang trọng. Đây có thể coi là 1 trong những mẫu ghế sofa được ưa chuộng nhất và cũng bán chạy nhất trong vài năm trở lại đây.\r\nSofa góc có những đặc điểm đặc trưng là: kiểu dáng hiện đại, đẹp mắt, được làm từ chất liệu bền và dễ lau chùi, vệ sinh khi cần thiết. Vẻ đẹp mới lạ cùng sự tiện nghi, sang trọng mà dòng sản phẩm này mang lại trong không gian khiến bất cứ căn phòng nào cũng trở nên ấn tượng, cá tính.\r\n- Sofa giường\r\nĐúng như tên gọi, sofa giường vừa có thể dùng để ngồi tiếp khách, làm việc hoặc giường nằm êm ái thay thế cho các loại giường. Sản phẩm này được đánh giá là thuận tiện hơn tất cả các loại sofa khác vì có thể được dùng với nhiều chức năng khác nhau, vừa có thể dùng để nằm, ngồi hay đặt đồ vật đều rất tiện ích.\r\nSofa giường có dặc điểm là: có kiểu dáng hiện đại, mới lạ, thuận tiện trong sử dụng, lại có giá cả phải chăng nên hiện rất được ưa chuộng.', 1243.00, 10, 1, 1, '2021-11-28 08:43:15', '2021-11-28 08:43:15'),
(26, 'SOFA PENNY 3 CHO – vải xanh A2', '1638060241-product.jpg', 'Sofa đang là loại ghế đa dụng nhất hiện nay, có rất nhiều loại sofa khác nhau từ sofa góc, sofa giường, sofa vang, sofa cho phòng khách, sofa cho phòng ngủ, sofa giường,… mỗi loại sofa đều có ứng dụng riêng của nó.Nếu phân theo kiểu dáng, chức năng sử dụng, sofa có các loại sau:\r\n- Sofa góc\r\nLà loại ghế được làm từ chất liệu da (chất liệu da này có thể là thật hoặc giả). Sản phẩm có thiết kế góc chữ L vừa hiện đại vừa sang trọng. Đây có thể coi là 1 trong những mẫu ghế sofa được ưa chuộng nhất và cũng bán chạy nhất trong vài năm trở lại đây.\r\nSofa góc có những đặc điểm đặc trưng là: kiểu dáng hiện đại, đẹp mắt, được làm từ chất liệu bền và dễ lau chùi, vệ sinh khi cần thiết. Vẻ đẹp mới lạ cùng sự tiện nghi, sang trọng mà dòng sản phẩm này mang lại trong không gian khiến bất cứ căn phòng nào cũng trở nên ấn tượng, cá tính.\r\n- Sofa giường\r\nĐúng như tên gọi, sofa giường vừa có thể dùng để ngồi tiếp khách, làm việc hoặc giường nằm êm ái thay thế cho các loại giường. Sản phẩm này được đánh giá là thuận tiện hơn tất cả các loại sofa khác vì có thể được dùng với nhiều chức năng khác nhau, vừa có thể dùng để nằm, ngồi hay đặt đồ vật đều rất tiện ích.\r\nSofa giường có dặc điểm là: có kiểu dáng hiện đại, mới lạ, thuận tiện trong sử dụng, lại có giá cả phải chăng nên hiện rất được ưa chuộng.', 1300.00, 10, 1, 1, '2021-11-28 08:44:01', '2021-11-28 08:44:01'),
(27, 'Sofa 3 chỗ PENNY – vải màu tím', '1638060280-product.jpg', 'Sofa đang là loại ghế đa dụng nhất hiện nay, có rất nhiều loại sofa khác nhau từ sofa góc, sofa giường, sofa vang, sofa cho phòng khách, sofa cho phòng ngủ, sofa giường,… mỗi loại sofa đều có ứng dụng riêng của nó.Nếu phân theo kiểu dáng, chức năng sử dụng, sofa có các loại sau:\r\n- Sofa góc\r\nLà loại ghế được làm từ chất liệu da (chất liệu da này có thể là thật hoặc giả). Sản phẩm có thiết kế góc chữ L vừa hiện đại vừa sang trọng. Đây có thể coi là 1 trong những mẫu ghế sofa được ưa chuộng nhất và cũng bán chạy nhất trong vài năm trở lại đây.\r\nSofa góc có những đặc điểm đặc trưng là: kiểu dáng hiện đại, đẹp mắt, được làm từ chất liệu bền và dễ lau chùi, vệ sinh khi cần thiết. Vẻ đẹp mới lạ cùng sự tiện nghi, sang trọng mà dòng sản phẩm này mang lại trong không gian khiến bất cứ căn phòng nào cũng trở nên ấn tượng, cá tính.\r\n- Sofa giường\r\nĐúng như tên gọi, sofa giường vừa có thể dùng để ngồi tiếp khách, làm việc hoặc giường nằm êm ái thay thế cho các loại giường. Sản phẩm này được đánh giá là thuận tiện hơn tất cả các loại sofa khác vì có thể được dùng với nhiều chức năng khác nhau, vừa có thể dùng để nằm, ngồi hay đặt đồ vật đều rất tiện ích.\r\nSofa giường có dặc điểm là: có kiểu dáng hiện đại, mới lạ, thuận tiện trong sử dụng, lại có giá cả phải chăng nên hiện rất được ưa chuộng.', 1450.00, 10, 1, 1, '2021-11-28 08:44:40', '2021-11-28 08:44:40'),
(28, 'Bàn ăn 1m8 Elegance màu tự nhiên', '1638060388-product.webp', 'Bàn ăn mặt đá không phải tự nhiên mà dòng sản phẩm này lại được yêu thích đến thế. Loại bàn ăn này có màu sắc đẹp nhiều họa tiết đường vân, bóng và đa dạng các mẫu mã nên không gian của bạn trở nên sang trọng, vô cùng đẳng cấp, khẳng định phong cách của chủ nhân. Có độ bền cao; chắc chắn, cứng nên chịu được lực lớn. hội tụ những ưu điểm này đã thu hút rất nhiều sự quan tâm của khách hàng, chủ đầu tư. Bàn ăn mặt đá với nhiều kiểu dáng mẫu mã khác nhau:\r\nGạt bỏ sự nhàm chán của phòng ăn bằng một bộ bàn ăn được thiết kế tinh tế. Những mẫu bàn ăn mặt gỗ có nhiều kiểu dáng đẹp mắt để bạn lựa chọn. Chắc chắn, chất lượng và sử thoải mái của những bộ bàn ăn mặt gỗ này sẽ chinh phục bạn. Bộ bàn ăn bằng gỗ đã ghi điểm với người tiêu dùng bởi độ bền và tuổi thọ vượt trội. Chọn lọc từ các loại gỗ cao cấp như: gỗ sồi, gỗ óc chó, gỗ xoan đào…. có độ bền và khả năng chống cong vênh, sâu mọt đem đến một bộ sản phẩm chất lượng cho người tiêu dùng, bạn có thể yên tâm khi ngồi ăn uống với các thành viên trong gia đình. Các mẫu bàn ăn bằng gỗ được phủ một lớp sơn bóng chuyên dụng, không bám bụi và hạn chế chống thấm nước, dễ dàng lau chùi khi bẩn. Nhu cầu mua sắm bàn ăn bằng gỗ ngày càng tăng cao, các nhà sản xuất đã liên tục cập nhật và cho ra mắt nhiều kiểu dáng, mẫu mã, phong cách khác nhau.Bàn ăn mặt kính là dòng sản phẩm bàn phòng ăn được thiết kế bởi nội thất Cát Tường. Với thiết kế đơn giản nhưng vẫn giữ được nét hiện đại tạo nên một không gian ấm cúng.\r\nMặt bàn được làm chủ yếu từ kính cao cấp có khả năng chịu lực cao. Khung bàn được làm bằng gỗ hoặc sắt sơn ly tĩnh điện chống gỉ chắc chắn. bàn ăn mặt kính vô cùng linh hoạt, đặc tính cho phép bạn kết hợp loại bàn ăn này với bất kỳ phong cách kiến trúc nào của phòng bếp nhà bạn, từ cổ điển, tối giản đến hiện đại hay bất kỳ phong cách nào. Bề mặt kính cho phép ánh sáng phản chiếu vào phòng và làm cho chúng nhẹ nhàng hơn, sáng sủa hơn.', 1350.00, 10, 1, 2, '2021-11-28 08:46:28', '2021-11-28 08:46:28'),
(29, 'Bàn ăn 1m6 Elegance màu đen', '1638060466-product.webp', 'Bàn ăn mặt đá không phải tự nhiên mà dòng sản phẩm này lại được yêu thích đến thế. Loại bàn ăn này có màu sắc đẹp nhiều họa tiết đường vân, bóng và đa dạng các mẫu mã nên không gian của bạn trở nên sang trọng, vô cùng đẳng cấp, khẳng định phong cách của chủ nhân. Có độ bền cao; chắc chắn, cứng nên chịu được lực lớn. hội tụ những ưu điểm này đã thu hút rất nhiều sự quan tâm của khách hàng, chủ đầu tư. Bàn ăn mặt đá với nhiều kiểu dáng mẫu mã khác nhau:\r\nGạt bỏ sự nhàm chán của phòng ăn bằng một bộ bàn ăn được thiết kế tinh tế. Những mẫu bàn ăn mặt gỗ có nhiều kiểu dáng đẹp mắt để bạn lựa chọn. Chắc chắn, chất lượng và sử thoải mái của những bộ bàn ăn mặt gỗ này sẽ chinh phục bạn. Bộ bàn ăn bằng gỗ đã ghi điểm với người tiêu dùng bởi độ bền và tuổi thọ vượt trội. Chọn lọc từ các loại gỗ cao cấp như: gỗ sồi, gỗ óc chó, gỗ xoan đào…. có độ bền và khả năng chống cong vênh, sâu mọt đem đến một bộ sản phẩm chất lượng cho người tiêu dùng, bạn có thể yên tâm khi ngồi ăn uống với các thành viên trong gia đình. Các mẫu bàn ăn bằng gỗ được phủ một lớp sơn bóng chuyên dụng, không bám bụi và hạn chế chống thấm nước, dễ dàng lau chùi khi bẩn. Nhu cầu mua sắm bàn ăn bằng gỗ ngày càng tăng cao, các nhà sản xuất đã liên tục cập nhật và cho ra mắt nhiều kiểu dáng, mẫu mã, phong cách khác nhau.Bàn ăn mặt kính là dòng sản phẩm bàn phòng ăn được thiết kế bởi nội thất Cát Tường. Với thiết kế đơn giản nhưng vẫn giữ được nét hiện đại tạo nên một không gian ấm cúng.\r\nMặt bàn được làm chủ yếu từ kính cao cấp có khả năng chịu lực cao. Khung bàn được làm bằng gỗ hoặc sắt sơn ly tĩnh điện chống gỉ chắc chắn. bàn ăn mặt kính vô cùng linh hoạt, đặc tính cho phép bạn kết hợp loại bàn ăn này với bất kỳ phong cách kiến trúc nào của phòng bếp nhà bạn, từ cổ điển, tối giản đến hiện đại hay bất kỳ phong cách nào. Bề mặt kính cho phép ánh sáng phản chiếu vào phòng và làm cho chúng nhẹ nhàng hơn, sáng sủa hơn.', 1250.00, 10, 1, 2, '2021-11-28 08:47:46', '2021-11-28 08:47:46'),
(30, 'Bàn ăn Jazz 1m6', '1638060537-product.webp', 'Bàn ăn mặt đá không phải tự nhiên mà dòng sản phẩm này lại được yêu thích đến thế. Loại bàn ăn này có màu sắc đẹp nhiều họa tiết đường vân, bóng và đa dạng các mẫu mã nên không gian của bạn trở nên sang trọng, vô cùng đẳng cấp, khẳng định phong cách của chủ nhân. Có độ bền cao; chắc chắn, cứng nên chịu được lực lớn. hội tụ những ưu điểm này đã thu hút rất nhiều sự quan tâm của khách hàng, chủ đầu tư. Bàn ăn mặt đá với nhiều kiểu dáng mẫu mã khác nhau:\r\n\r\nGạt bỏ sự nhàm chán của phòng ăn bằng một bộ bàn ăn được thiết kế tinh tế. Những mẫu bàn ăn mặt gỗ có nhiều kiểu dáng đẹp mắt để bạn lựa chọn. Chắc chắn, chất lượng và sử thoải mái của những bộ bàn ăn mặt gỗ này sẽ chinh phục bạn. Bộ bàn ăn bằng gỗ đã ghi điểm với người tiêu dùng bởi độ bền và tuổi thọ vượt trội. Chọn lọc từ các loại gỗ cao cấp như: gỗ sồi, gỗ óc chó, gỗ xoan đào…. có độ bền và khả năng chống cong vênh, sâu mọt đem đến một bộ sản phẩm chất lượng cho người tiêu dùng, bạn có thể yên tâm khi ngồi ăn uống với các thành viên trong gia đình. Các mẫu bàn ăn bằng gỗ được phủ một lớp sơn bóng chuyên dụng, không bám bụi và hạn chế chống thấm nước, dễ dàng lau chùi khi bẩn. Nhu cầu mua sắm bàn ăn bằng gỗ ngày càng tăng cao, các nhà sản xuất đã liên tục cập nhật và cho ra mắt nhiều kiểu dáng, mẫu mã, phong cách khác nhau.Bàn ăn mặt kính là dòng sản phẩm bàn phòng ăn được thiết kế bởi nội thất Cát Tường. Với thiết kế đơn giản nhưng vẫn giữ được nét hiện đại tạo nên một không gian ấm cúng.\r\n\r\nMặt bàn được làm chủ yếu từ kính cao cấp có khả năng chịu lực cao. Khung bàn được làm bằng gỗ hoặc sắt sơn ly tĩnh điện chống gỉ chắc chắn. bàn ăn mặt kính vô cùng linh hoạt, đặc tính cho phép bạn kết hợp loại bàn ăn này với bất kỳ phong cách kiến trúc nào của phòng bếp nhà bạn, từ cổ điển, tối giản đến hiện đại hay bất kỳ phong cách nào. Bề mặt kính cho phép ánh sáng phản chiếu vào phòng và làm cho chúng nhẹ nhàng hơn, sáng sủa hơn.', 1450.00, 10, 1, 2, '2021-11-28 08:48:57', '2021-11-28 08:48:57');
INSERT INTO `product` (`id`, `name`, `image`, `content`, `price`, `quantity`, `status`, `id_cate`, `created_at`, `updated_at`) VALUES
(31, 'Bàn ăn 8 chỗ Porto M2', '1638060582-product.webp', 'Bàn ăn mặt đá không phải tự nhiên mà dòng sản phẩm này lại được yêu thích đến thế. Loại bàn ăn này có màu sắc đẹp nhiều họa tiết đường vân, bóng và đa dạng các mẫu mã nên không gian của bạn trở nên sang trọng, vô cùng đẳng cấp, khẳng định phong cách của chủ nhân. Có độ bền cao; chắc chắn, cứng nên chịu được lực lớn. hội tụ những ưu điểm này đã thu hút rất nhiều sự quan tâm của khách hàng, chủ đầu tư. Bàn ăn mặt đá với nhiều kiểu dáng mẫu mã khác nhau:\r\n\r\nGạt bỏ sự nhàm chán của phòng ăn bằng một bộ bàn ăn được thiết kế tinh tế. Những mẫu bàn ăn mặt gỗ có nhiều kiểu dáng đẹp mắt để bạn lựa chọn. Chắc chắn, chất lượng và sử thoải mái của những bộ bàn ăn mặt gỗ này sẽ chinh phục bạn. Bộ bàn ăn bằng gỗ đã ghi điểm với người tiêu dùng bởi độ bền và tuổi thọ vượt trội. Chọn lọc từ các loại gỗ cao cấp như: gỗ sồi, gỗ óc chó, gỗ xoan đào…. có độ bền và khả năng chống cong vênh, sâu mọt đem đến một bộ sản phẩm chất lượng cho người tiêu dùng, bạn có thể yên tâm khi ngồi ăn uống với các thành viên trong gia đình. Các mẫu bàn ăn bằng gỗ được phủ một lớp sơn bóng chuyên dụng, không bám bụi và hạn chế chống thấm nước, dễ dàng lau chùi khi bẩn. Nhu cầu mua sắm bàn ăn bằng gỗ ngày càng tăng cao, các nhà sản xuất đã liên tục cập nhật và cho ra mắt nhiều kiểu dáng, mẫu mã, phong cách khác nhau.Bàn ăn mặt kính là dòng sản phẩm bàn phòng ăn được thiết kế bởi nội thất Cát Tường. Với thiết kế đơn giản nhưng vẫn giữ được nét hiện đại tạo nên một không gian ấm cúng.\r\n\r\nMặt bàn được làm chủ yếu từ kính cao cấp có khả năng chịu lực cao. Khung bàn được làm bằng gỗ hoặc sắt sơn ly tĩnh điện chống gỉ chắc chắn. bàn ăn mặt kính vô cùng linh hoạt, đặc tính cho phép bạn kết hợp loại bàn ăn này với bất kỳ phong cách kiến trúc nào của phòng bếp nhà bạn, từ cổ điển, tối giản đến hiện đại hay bất kỳ phong cách nào. Bề mặt kính cho phép ánh sáng phản chiếu vào phòng và làm cho chúng nhẹ nhàng hơn, sáng sủa hơn.', 14500.00, 10, 1, 2, '2021-11-28 08:49:42', '2021-11-28 08:49:42'),
(32, 'Bàn ăn mở rộng HC', '1638060626-product.webp', 'Bàn ăn mặt đá không phải tự nhiên mà dòng sản phẩm này lại được yêu thích đến thế. Loại bàn ăn này có màu sắc đẹp nhiều họa tiết đường vân, bóng và đa dạng các mẫu mã nên không gian của bạn trở nên sang trọng, vô cùng đẳng cấp, khẳng định phong cách của chủ nhân. Có độ bền cao; chắc chắn, cứng nên chịu được lực lớn. hội tụ những ưu điểm này đã thu hút rất nhiều sự quan tâm của khách hàng, chủ đầu tư. Bàn ăn mặt đá với nhiều kiểu dáng mẫu mã khác nhau:\r\n\r\nGạt bỏ sự nhàm chán của phòng ăn bằng một bộ bàn ăn được thiết kế tinh tế. Những mẫu bàn ăn mặt gỗ có nhiều kiểu dáng đẹp mắt để bạn lựa chọn. Chắc chắn, chất lượng và sử thoải mái của những bộ bàn ăn mặt gỗ này sẽ chinh phục bạn. Bộ bàn ăn bằng gỗ đã ghi điểm với người tiêu dùng bởi độ bền và tuổi thọ vượt trội. Chọn lọc từ các loại gỗ cao cấp như: gỗ sồi, gỗ óc chó, gỗ xoan đào…. có độ bền và khả năng chống cong vênh, sâu mọt đem đến một bộ sản phẩm chất lượng cho người tiêu dùng, bạn có thể yên tâm khi ngồi ăn uống với các thành viên trong gia đình. Các mẫu bàn ăn bằng gỗ được phủ một lớp sơn bóng chuyên dụng, không bám bụi và hạn chế chống thấm nước, dễ dàng lau chùi khi bẩn. Nhu cầu mua sắm bàn ăn bằng gỗ ngày càng tăng cao, các nhà sản xuất đã liên tục cập nhật và cho ra mắt nhiều kiểu dáng, mẫu mã, phong cách khác nhau.Bàn ăn mặt kính là dòng sản phẩm bàn phòng ăn được thiết kế bởi nội thất Cát Tường. Với thiết kế đơn giản nhưng vẫn giữ được nét hiện đại tạo nên một không gian ấm cúng.\r\n\r\nMặt bàn được làm chủ yếu từ kính cao cấp có khả năng chịu lực cao. Khung bàn được làm bằng gỗ hoặc sắt sơn ly tĩnh điện chống gỉ chắc chắn. bàn ăn mặt kính vô cùng linh hoạt, đặc tính cho phép bạn kết hợp loại bàn ăn này với bất kỳ phong cách kiến trúc nào của phòng bếp nhà bạn, từ cổ điển, tối giản đến hiện đại hay bất kỳ phong cách nào. Bề mặt kính cho phép ánh sáng phản chiếu vào phòng và làm cho chúng nhẹ nhàng hơn, sáng sủa hơn.', 1200.00, 10, 1, 2, '2021-11-28 08:50:26', '2021-11-28 08:50:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'xuan', 'admin@gmail.com', NULL, '$2y$10$Az5CqGa10E26QioP8e3vTuKc3NZRBWhstv4MeG2KMcS244HbvWwaO', NULL, '2021-11-29 11:50:14', '2021-11-30 05:25:42');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_blog` (`id_blog`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categoryblog`
--
ALTER TABLE `categoryblog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idOrder` (`idOrder`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name_unique` (`name`),
  ADD KEY `product_id_cate_foreign` (`id_cate`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `categoryblog`
--
ALTER TABLE `categoryblog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`id_blog`) REFERENCES `categoryblog` (`id`);

--
-- Các ràng buộc cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`idOrder`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_id_cate_foreign` FOREIGN KEY (`id_cate`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
