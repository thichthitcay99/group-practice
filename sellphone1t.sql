USE [Sellphones]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[IDAccount] [int] NOT NULL,
	[Username] [nchar](20) NOT NULL,
	[Password] [nchar](20) NOT NULL,
	[Hoten] [nvarchar](100) NOT NULL,
	[Ngaysinh] [date] NOT NULL,
	[Email] [nchar](50) NOT NULL,
	[Phonenumber] [char](15) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Avatar] [nchar](50) NULL,
	[Type] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BaoHanh]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoHanh](
	[Mabaohanh] [int] NOT NULL,
	[MaSp] [int] NULL,
	[thoigianbaohanh] [nvarchar](50) NULL,
	[status] [int] NULL,
	[Ngayhetbaohanh] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mabaohanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Binhluan]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Binhluan](
	[MaBL] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[MaKH] [int] NULL,
	[Noidung] [nvarchar](500) NULL,
	[Ngaydang] [datetime] NOT NULL,
	[Hoten] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChitietDH]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietDH](
	[MaChitietDH] [int] NOT NULL,
	[MaDH] [int] NULL,
	[MaSP] [int] NULL,
	[Soluong] [int] NULL,
	[Thanhtien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChitietDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonhangKH]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonhangKH](
	[MaDH] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[Phivanchuyen] [float] NULL,
	[PhuongthucTT] [nvarchar](50) NOT NULL,
	[Ngaydatmua] [datetime] NOT NULL,
	[TongTien] [float] NULL,
	[Tinhtrangdonhang] [int] NULL,
	[ghichu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangSX]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSX](
	[MaHangSX] [int] NOT NULL,
	[Trusochinh] [nvarchar](50) NOT NULL,
	[Quocgia] [nvarchar](50) NULL,
	[tenhang] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hopdong]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hopdong](
	[IDHopdong] [int] NOT NULL,
	[IDSP] [int] NOT NULL,
	[IDNhacungcap] [int] NOT NULL,
	[Ngayky] [datetime] NULL,
	[soluong] [int] NULL,
	[tongtien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHopdong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khuyenmai]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khuyenmai](
	[MaKM] [int] NOT NULL,
	[Ngaybatdau] [datetime] NOT NULL,
	[Ngayketthuc] [datetime] NOT NULL,
	[noidung] [nvarchar](400) NULL,
	[ten] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [int] NOT NULL,
	[TenLoai] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nhacungcap]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nhacungcap](
	[IDNhacungcap] [int] NOT NULL,
	[TenNhaungcap] [nvarchar](100) NOT NULL,
	[phonenumber] [char](15) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNhacungcap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sanpham](
	[MaSP] [int] NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[LoaiSP] [int] NOT NULL,
	[HangSX] [int] NOT NULL,
	[Xuatxu] [nvarchar](50) NOT NULL,
	[Gia] [float] NOT NULL,
	[Mota] [nvarchar](100) NULL,
	[Anh] [char](50) NOT NULL,
	[Isnew] [int] NULL,
	[Ishot] [int] NULL,
	[SoLuong] [int] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SPkhuyenmai]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPkhuyenmai](
	[MaSPKM] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[Giamgia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSPKM] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thongsokythuat]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thongsokythuat](
	[MaSP] [int] NOT NULL,
	[Thuoctinh] [nvarchar](100) NOT NULL,
	[Giatri] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[Thuoctinh] ASC,
	[Giatri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (1000, N'KH0001              ', N'1                   ', N'Khach hang 1', CAST(N'1995-12-05' AS Date), N'khachhang1@gmail.com                              ', N'012345678      ', N'Ha Noi', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (1001, N'KH1001              ', N'1                   ', N'Khach hang 2', CAST(N'1998-04-06' AS Date), N'khachhang2@gmail.com                              ', N'012349876      ', N'Ha Noi', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (1002, N'KH1002              ', N'1                   ', N'Khach hang 3', CAST(N'1992-03-02' AS Date), N'khachhang3@gmail.com                              ', N'056497954      ', N'Ha Noi', N'default.avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (1003, N'KH1003              ', N'1                   ', N'Khach hang 4', CAST(N'1999-01-05' AS Date), N'khachhang4@gmail.com                              ', N'013689785      ', N'Ha Noi', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (1004, N'KH1004              ', N'1                   ', N'Khach hang 5', CAST(N'1999-12-02' AS Date), N'khachhang5@gmail.com                              ', N'064531587      ', N'Ha Noi', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (1005, N'KH1005              ', N'1                   ', N'Khach hang 6', CAST(N'2002-08-01' AS Date), N'khachhang6@gmail.com                              ', N'012349947      ', N'Ha Noi', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (1006, N'KH1006              ', N'1                   ', N'Khach hang 7', CAST(N'1999-03-25' AS Date), N'khachhang7@gmail.com                              ', N'065478996      ', N'Ha Noi', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (1007, N'KH1007              ', N'1                   ', N'Khach hang 8', CAST(N'1999-05-16' AS Date), N'khachhang8@gmail.com                              ', N'035649764      ', N'Ha Noi', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (1008, N'KH1008              ', N'1                   ', N'Khach hang 9', CAST(N'2000-11-23' AS Date), N'khachhang9@gmail.com                              ', N'032467895      ', N'Ha Noi', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (1009, N'KH1009              ', N'1                   ', N'Khach hang 10', CAST(N'1996-01-30' AS Date), N'khachhang10@gmail.com                             ', N'032465785      ', N'Ha Noi', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (1010, N'Kh1010              ', N'1                   ', N'Khach hang 11', CAST(N'1999-07-25' AS Date), N'khachhang11@gmail.com                             ', N'032645487      ', N'Ha Noi', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (2002, N'KH2002              ', N'1                   ', N'Trịnh Ngọc A', CAST(N'1999-05-20' AS Date), N'trinh@gmail.com                                   ', N'1234567891     ', N'Nam Định', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (2003, N'KH2003              ', N'1                   ', N'Trịnh Ngọc Cu', CAST(N'1999-05-20' AS Date), N'trinh@gmail.com                                   ', N'1234567891     ', N'Nam Định', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (2004, N'KH2004              ', N'1                   ', N'Trịnh Ngọc Cu', CAST(N'1999-05-20' AS Date), N'trinh@gmail.com                                   ', N'1234567891     ', N'Nam Định', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (2005, N'KH2005              ', N'1                   ', N'Trịnh Ngọc Cu', CAST(N'1999-05-20' AS Date), N'trinh@gmail.com                                   ', N'1234567891     ', N'Nam Định', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (2006, N'KH2006              ', N'1                   ', N'Trịnh Ngọc Cu', CAST(N'1999-05-20' AS Date), N'trinh@gmail.com                                   ', N'1234567891     ', N'Nam Định', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (2007, N'KH2007              ', N'1                   ', N'Trịnh Ngọc Cu', CAST(N'1999-05-20' AS Date), N'trinh@gmail.com                                   ', N'1234567891     ', N'Nam Định', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (2008, N'KH2008              ', N'1                   ', N'Trịnh Ngọc Cu', CAST(N'1999-05-20' AS Date), N'trinh@gmail.com                                   ', N'1234567891     ', N'Nam Định', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (2009, N'KH2009              ', N'1                   ', N'Trịnh Ngọc Cu', CAST(N'1999-05-20' AS Date), N'trinh@gmail.com                                   ', N'1234567891     ', N'Nam Định', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Hoten], [Ngaysinh], [Email], [Phonenumber], [Address], [Avatar], [Type]) VALUES (2010, N'KH2010              ', N'1                   ', N'Trịnh Ngọc Cu', CAST(N'1999-05-20' AS Date), N'trinh@gmail.com                                   ', N'1234567891     ', N'Nam Định', N'default-avatar.jpg                                ', N'customer                                          ')
INSERT [dbo].[Binhluan] ([MaBL], [MaSP], [MaKH], [Noidung], [Ngaydang], [Hoten], [Email]) VALUES (1000, 1000, NULL, N'a', CAST(N'2020-05-20 12:39:06.410' AS DateTime), N'a', N'a')
INSERT [dbo].[HangSX] ([MaHangSX], [Trusochinh], [Quocgia], [tenhang]) VALUES (1000, N'Samsung Town, Seoul, Hàn Quốc', N'Hàn Quốc', N'SamSung                                           ')
INSERT [dbo].[HangSX] ([MaHangSX], [Trusochinh], [Quocgia], [tenhang]) VALUES (2000, N'Espoo, Phần Lan', N'Cộng hòa Phần Lan', N'Nokia                                             ')
INSERT [dbo].[HangSX] ([MaHangSX], [Trusochinh], [Quocgia], [tenhang]) VALUES (3000, N'Bắc Kinh, Trung Quốc', N'Trung Quốc', N'Xiaomi                                            ')
INSERT [dbo].[HangSX] ([MaHangSX], [Trusochinh], [Quocgia], [tenhang]) VALUES (4000, N'Cupertino, Califorrnia, Hoa Kỳ', N'Hoa Kỳ', N'Apple                                             ')
INSERT [dbo].[HangSX] ([MaHangSX], [Trusochinh], [Quocgia], [tenhang]) VALUES (5000, N'Thâm Quyến, Trung Quốc', N'Trung Quốc', N'Huawei                                            ')
INSERT [dbo].[HangSX] ([MaHangSX], [Trusochinh], [Quocgia], [tenhang]) VALUES (6000, N'Vinhomes Riverside, Long Biên, Hà Nội, Việt Nam', N'Việt Nam', N'Vsmart                                            ')
INSERT [dbo].[HangSX] ([MaHangSX], [Trusochinh], [Quocgia], [tenhang]) VALUES (7000, N'Le Locle, Thuỵ Sĩ', N'Thuỵ Sĩ', N'Aukey                                             ')
INSERT [dbo].[HangSX] ([MaHangSX], [Trusochinh], [Quocgia], [tenhang]) VALUES (8000, N'St. Louis, Missouri, Hoa Kỳ', N'Hoa Kỳ', N'Energizer                                         ')
INSERT [dbo].[Khuyenmai] ([MaKM], [Ngaybatdau], [Ngayketthuc], [noidung], [ten]) VALUES (1234, CAST(N'2020-05-12 22:43:05.060' AS DateTime), CAST(N'2020-06-11 22:43:05.060' AS DateTime), N'Giảm 15% mọi điện thoại sam sung <3 ', N'Giảm giá khai trương')
INSERT [dbo].[Khuyenmai] ([MaKM], [Ngaybatdau], [Ngayketthuc], [noidung], [ten]) VALUES (1235, CAST(N'2020-05-12 22:45:04.960' AS DateTime), CAST(N'2020-06-06 22:45:04.960' AS DateTime), N'Giảm 20% mọi sản phẩm phụ kiện trong shop', N'Giảm giá phụ kiện')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (1111, N'Điện thoại di động')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (2222, N'Tai nghe')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (3333, N'Bao da ốp lưng')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (4444, N'Sạc pin dự phòng')
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (1000, N'Sam Sung Galaxy Note 10 plus (đen)', 1111, 1000, N'Hàn Quốc', 22000000, NULL, N'note_10_plus_den.png                              ', 1, 1, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (1001, N'Sam Sung Galaxy Note 10 (đen)', 1111, 1000, N'Hàn Quốc', 20000000, NULL, N'ss-note_10_den.png                                ', 0, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (1002, N'Sam Sung Galaxy S20 (trắng)', 1111, 1000, N'Hàn Quốc', 17900000, NULL, N'ss-s20-hong.png                                   ', 1, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (1003, N'Sam Sung Galaxy S20 plus (đen)', 1111, 1000, N'Hàn Quốc', 20200000, NULL, N'ss-s20-plus-den.png                               ', 0, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (1004, N'Sam Sung Galaxy S20 Ultra (đen)', 1111, 1000, N'Hàn Quốc', 25700000, NULL, N'ss-s20-ultra-den.png                              ', 0, 1, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (1005, N'Sam Sung Galaxy Zflip', 1111, 1000, N'Hàn Quốc', 36000000, NULL, N'z-flip.png                                        ', 0, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (1006, N'Tai Nghe Sam Sung AKG', 2222, 1000, N'Hàn Quốc', 500000, NULL, N'ss-Akg.png                                        ', 0, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (1007, N'Tai Nghe Sam Sung Ltfit', 2222, 1000, N'Hàn Quốc', 2100000, NULL, N'ss-Ltfit.png                                      ', 0, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (2000, N'Nokia 7.2 (xanh)', 1111, 2000, N'Trung Quốc', 4000000, NULL, N'nokia_7.2_xanh.png                                ', 0, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (2001, N'Nokia 3.2', 1111, 2000, N'Trung Quốc', 2800000, NULL, N'nokia-3.2-2g-16g.png                              ', 0, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (2002, N'Nokia 2.3 (xám)', 1111, 2000, N'Trung Quốc', 2190000, NULL, N'nokia_23_xam.png                                  ', 0, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (2003, N'Nokia 2720 flip', 1111, 2000, N'Trung Quốc', 1890000, NULL, N'nokia_2720-flip.png                               ', 0, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (3000, N'Xiaomi mi note10 pro (trắng)', 1111, 3000, N'Trung Quốc', 12600000, NULL, N'xiaomi-mi-note10-pro-trang.png                    ', 0, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (3001, N'Xiaomi mi note10 (trắng)', 1111, 3000, N'Trung Quốc', 10000000, NULL, N'xiaomi-mi-note-10-trang.png                       ', 0, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (3002, N'Xiaomi Redmi K30 Pro (xanh)', 1111, 3000, N'Trung Quốc', 9800000, NULL, N'xiaomi-k30-pro-xanh.png                           ', 0, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (3003, N'Xiaomi Redmi Note 8 (trắng)', 1111, 3000, N'Trung Quốc', 4000000, NULL, N'xiaomi-redmi-note-8-trang.png                     ', 0, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (4000, N'Iphone 11 Pro Max', 1111, 4000, N'Hoa Kỳ', 33800000, NULL, N'iphone-11-pro-max-space.png                       ', 1, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (4001, N'Iphone XR 64GB ', 1111, 4000, N'Hoa Kỳ', 15690000, NULL, N'iphone_xr_64gb.png                                ', 1, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (4002, N'Iphone 11', 1111, 4000, N'Hoa Kỳ', 20990000, NULL, N'iphone11-green.png                                ', 1, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (4003, N'Iphone XS Max', 1111, 4000, N'Hoa Kỳ', 22590000, NULL, N'iphone_xs_max_64gb.png                            ', 1, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (4004, N'Iphone 8 Plus', 1111, 4000, N'Hoa Kỳ', 13190000, NULL, N'iphone-8-plus.png                                 ', 1, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (4005, N'Iphone 7 Plus', 1111, 4000, N'Hoa Kỳ', 9290000, NULL, N'iphone-7-plus-red-back.png                        ', 1, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (4006, N'Ốp lưng ESR Yippee cho Iphone 11', 3333, 4000, N'Hoa Kỳ', 450000, NULL, N'op-lung-iphone-11-yippee-color-soft-case-.png     ', 1, 1, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (4007, N'Ốp lưng cho Iphone 11 Pro Max ', 3333, 4000, N'Hoa Kỳ', 250000, NULL, N'op-lung-iphone-11ProMax.png                       ', 1, 1, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (4008, N'Ốp lưng da cao cấp cho Iphone XS Max', 3333, 4000, N'Hoa Kỳ', 200000, NULL, N'op-lung-da-iphoneXSMax.png                        ', 1, 1, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (5000, N'Huawei Mate 30 Pro', 1111, 5000, N'Trung Quốc', 19990000, NULL, N'huawei-mate30-pro.png                             ', 1, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (5001, N'Huawei Nova 5T', 1111, 5000, N'Trung Quốc', 8990000, NULL, N'huawei-nova-5t.png                                ', 1, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (5002, N'Huawei Nova 7i', 1111, 5000, N'Trung Quốc', 6990000, NULL, N'huawei-nova-7i.png                                ', 1, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (5003, N'Huawei P30 Lite', 1111, 5000, N'Trung Quốc', 4490000, NULL, N'huawei-p30-lite.png                               ', 1, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (5004, N'Huawei P30 Pro', 1111, 5000, N'Trung Quốc', 19540000, NULL, N'huawei-P30-pro-skyblue.png                        ', 1, 0, 50)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [LoaiSP], [HangSX], [Xuatxu], [Gia], [Mota], [Anh], [Isnew], [Ishot], [SoLuong]) VALUES (5005, N'Huawei P40 Pro', 1111, 5000, N'Trung Quốc', 23990000, NULL, N'huawei-p40-pro-silver.png                         ', 1, 0, 50)
INSERT [dbo].[SPkhuyenmai] ([MaSPKM], [MaSP], [Giamgia]) VALUES (1234, 1000, 15)
INSERT [dbo].[SPkhuyenmai] ([MaSPKM], [MaSP], [Giamgia]) VALUES (1234, 1001, 15)
INSERT [dbo].[SPkhuyenmai] ([MaSPKM], [MaSP], [Giamgia]) VALUES (1234, 1002, 15)
INSERT [dbo].[SPkhuyenmai] ([MaSPKM], [MaSP], [Giamgia]) VALUES (1234, 1003, 15)
INSERT [dbo].[SPkhuyenmai] ([MaSPKM], [MaSP], [Giamgia]) VALUES (1234, 1004, 15)
INSERT [dbo].[SPkhuyenmai] ([MaSPKM], [MaSP], [Giamgia]) VALUES (1234, 1005, 15)
INSERT [dbo].[SPkhuyenmai] ([MaSPKM], [MaSP], [Giamgia]) VALUES (1235, 1006, 20)
INSERT [dbo].[SPkhuyenmai] ([MaSPKM], [MaSP], [Giamgia]) VALUES (1235, 1007, 20)
INSERT [dbo].[SPkhuyenmai] ([MaSPKM], [MaSP], [Giamgia]) VALUES (1235, 4006, 20)
INSERT [dbo].[SPkhuyenmai] ([MaSPKM], [MaSP], [Giamgia]) VALUES (1235, 4007, 20)
INSERT [dbo].[SPkhuyenmai] ([MaSPKM], [MaSP], [Giamgia]) VALUES (1235, 4008, 20)
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1000, N'Bộ nhớ đệm / Ram', N'12 GB')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1000, N'Bộ nhớ trong', N'256 GB')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1000, N'Cảm biến', N'Mở khóa bằng khuôn mặt, Mở khoá vân tay dưới màn hình')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1000, N'Chipset', N'Samsung Exynos 9825')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1000, N'Độ phân giải màn hình', N'3040 x 1440 pixels')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1000, N'Hệ điều hành', N'Android')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1000, N'Kích thước', N'77.2 mm x 162.3 mm x 7.9 mm')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1000, N'Kích thước màn hình', N'6.8 inches')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1000, N'Loại màn hình', N'Dynamic AMOLED QHD+ Infinity-O')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1000, N'Loại SIM', N'2 SIM (Nano-SIM)')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1000, N'Phiên bản hệ điều hành', N'Android 9.0 (Pie)')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1000, N'Pin', N'4300 mAh, Quick Charge 45W')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1000, N'Trọng lượng', N'196 g')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1001, N'Bộ nhớ đệm / Ram', N'12 GB')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1001, N'Bộ nhớ trong', N'256 GB')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1001, N'Cảm biến', N'Mở khóa bằng khuôn mặt, Mở khoá vân tay dưới màn hình')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1001, N'Chipset', N'Samsung Exynos 9825')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1001, N'Độ phân giải màn hình', N'1080 x 2280 pixels')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1001, N'Hệ điều hành', N'Android')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1001, N'Kích thước', N'71.8 mm x 151 mm x 7.9 mm')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1001, N'Kích thước màn hình', N'6.3 inches')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1001, N'Loại màn hình', N'Dynamic AMOLED QHD+ Infinity-O')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1001, N'Loại SIM', N'2 SIM (Nano-SIM)')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1001, N'Phiên bản hệ điều hành', N'Android 9.0 (Pie)')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1001, N'Pin', N'4300 mAh, Quick Charge 45W')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1001, N'Trọng lượng', N'183 g')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1002, N'Bộ nhớ đệm / Ram', N'12 GB')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1002, N'Bộ nhớ trong', N'256 GB')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1002, N'Chipset', N'Exynos 990 (7 nm+)')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1002, N'Độ phân giải màn hình', N'1080 x 2280 pixels')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1002, N'Hệ điều hành', N'Android')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1002, N'Kích thước', N'151.7 x 69.1 x 7.9 mm')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1002, N'Kích thước màn hình', N'6.2 inches')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1002, N'Loại màn hình', N'Dynamic AMOLED 2X, 120Hz(1080p), HDR, Gorilla Glass 6')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1002, N'Loại SIM', N'2 SIM (Nano-SIM)')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1002, N'Phiên bản hệ điều hành', N'Android 10.0; One UI 2')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1002, N'Pin', N'Li-Po 4000 mAh, Sạc nhanh 25W, Sạc không dây 15W')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1002, N'Trọng lượng', N'163 g')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1003, N'Bộ nhớ đệm / Ram', N'12 GB')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1003, N'Bộ nhớ trong', N'256 GB')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1003, N'Chipset', N'Exynos 990 (7 nm+)')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1003, N'Độ phân giải màn hình', N'1080 x 2280 pixels')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1003, N'Hệ điều hành', N'Android')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1003, N'Kích thước', N'151.7 x 69.1 x 7.9 mm')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1003, N'Kích thước màn hình', N'6.7 inches')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1003, N'Loại màn hình', N'Dynamic AMOLED 2X, 120Hz(1080p), HDR, Gorilla Glass 6')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1003, N'Loại SIM', N'2 SIM (Nano-SIM)')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1003, N'Phiên bản hệ điều hành', N'Android 10.0; One UI 2')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1003, N'Pin', N'Li-Po 4000 mAh, Sạc nhanh 25W, Sạc không dây 15W')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1003, N'Trọng lượng', N'186 g')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1004, N'Bộ nhớ đệm / Ram', N'12 GB')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1004, N'Bộ nhớ trong', N'256 GB')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1004, N'Chipset', N'Exynos 990 (7 nm+)')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1004, N'Độ phân giải màn hình', N'1080 x 2280 pixels')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1004, N'Hệ điều hành', N'Android')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1004, N'Kích thước', N'166.9 x 76 x 8.8 mm')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1004, N'Kích thước màn hình', N'6.9 inches')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1004, N'Loại màn hình', N'Dynamic AMOLED 2X, 120Hz(1080p), HDR, Gorilla Glass 6')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1004, N'Loại SIM', N'2 SIM (Nano-SIM)')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1004, N'Phiên bản hệ điều hành', N'Android 10.0; One UI 2')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1004, N'Pin', N'Li-Po 4000 mAh, Sạc nhanh 25W, Sạc không dây 15W')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1004, N'Trọng lượng', N'222 g')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1005, N'Bộ nhớ đệm / Ram', N'12 GB')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1005, N'Bộ nhớ trong', N'256 GB')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1005, N'Chipset', N'Qualcomm Snapdragon 855 Plus')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1005, N'Độ phân giải màn hình', N'1080 x 2280 pixels')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1005, N'Hệ điều hành', N'Android')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1005, N'Kích thước gấp lại', N'73,6 x 87,4 x 17,3mm (Bản lề) - 15,4mm')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1005, N'Kích thước màn hình', N'6.9 inches')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1005, N'Kích thước mở ra', N'73,6 x 167,3 x 7,2mm')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1005, N'Loại màn hình', N'Màn hình AMOLED động 6,7 FHD + (21,9: 9) (2636x1080) 425ppi')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1005, N'Loại SIM', N'Nano-SIM + eSIM')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1005, N'Phiên bản hệ điều hành', N'Android 10.0')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1005, N'Pin', N'3300mAh , 900 mAh')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1005, N'Trọng lượng', N'183 g')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1007, N'Chống nước', N'IPX3')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1007, N'Kích thước', N'2.5 x 1.3 x 1.1 cm')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1007, N'Pin', N'6 giờ sử dụng')
INSERT [dbo].[Thongsokythuat] ([MaSP], [Thuoctinh], [Giatri]) VALUES (1007, N'Trọng lượng', N'9.07 g')
ALTER TABLE [dbo].[BaoHanh]  WITH CHECK ADD FOREIGN KEY([MaSp])
REFERENCES [dbo].[ChitietDH] ([MaChitietDH])
GO
ALTER TABLE [dbo].[Binhluan]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[Account] ([IDAccount])
GO
ALTER TABLE [dbo].[Binhluan]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[Sanpham] ([MaSP])
GO
ALTER TABLE [dbo].[ChitietDH]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonhangKH] ([MaDH])
GO
ALTER TABLE [dbo].[ChitietDH]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[Sanpham] ([MaSP])
GO
ALTER TABLE [dbo].[DonhangKH]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[Account] ([IDAccount])
GO
ALTER TABLE [dbo].[Hopdong]  WITH CHECK ADD FOREIGN KEY([IDNhacungcap])
REFERENCES [dbo].[Nhacungcap] ([IDNhacungcap])
GO
ALTER TABLE [dbo].[Hopdong]  WITH CHECK ADD FOREIGN KEY([IDSP])
REFERENCES [dbo].[Sanpham] ([MaSP])
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD FOREIGN KEY([HangSX])
REFERENCES [dbo].[HangSX] ([MaHangSX])
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD FOREIGN KEY([LoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[SPkhuyenmai]  WITH CHECK ADD FOREIGN KEY([MaSPKM])
REFERENCES [dbo].[Khuyenmai] ([MaKM])
GO
ALTER TABLE [dbo].[SPkhuyenmai]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[Sanpham] ([MaSP])
GO
ALTER TABLE [dbo].[Thongsokythuat]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[Sanpham] ([MaSP])
GO
/****** Object:  StoredProcedure [dbo].[addproduct]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SET QUOTED_IDENTIFIER ON|OFF
--SET ANSI_NULLS ON|OFF
--GO

CREATE PROCEDURE [dbo].[addproduct]
	@MaSP INT,
	@TenSP NVARCHAR(50),
	@LoaiSP INT,
	@HangSX INT,
	@Xuatxu NVARCHAR(50),
	@Gia FLOAT,
	@Mota NVARCHAR(100),
	@Anh CHAR(50),
	@Isnew INT,
	@Ishot INT
	--@parameter_name AS scalar_data_type ( = default_value ), ...
-- WITH ENCRYPTION, RECOMPILE, EXECUTE AS CALLER|SELF|OWNER| 'user_name'
AS
	--	statements
	BEGIN
		INSERT dbo.Sanpham
		        ( MaSP ,
		          TenSP ,
		          LoaiSP ,
		          HangSX ,
		          Xuatxu ,
		          Gia ,
		          Mota ,
		          Anh ,
		          Isnew ,
		          Ishot
		        )
		VALUES  ( @MaSP , -- MaSP - int
		          @TenSP , -- TenSP - nvarchar(50)
		          @LoaiSP , -- LoaiSP - int
		          @HangSX , -- HangSX - int
		          @Xuatxu , -- Xuatxu - nvarchar(50)
		          @Gia , -- Gia - float
		          @Mota , -- Mota - nvarchar(100)
		          @Anh , -- Anh - char(50)
		          @Isnew , -- Isnew - int
		          @Ishot  -- Ishot - int
		        )
	END

GO
/****** Object:  StoredProcedure [dbo].[addthongsokythuat]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE PROCEDURE [dbo].[addthongsokythuat]
	@MaSP INT,
	@Thuoctinh NVARCHAR(100),
	@Giatri NVARCHAR(150)
		--@parameter_name AS scalar_data_type ( = default_value ), ...
	-- WITH ENCRYPTION, RECOMPILE, EXECUTE AS CALLER|SELF|OWNER| 'user_name'
	AS
		--	statements
		BEGIN
			INSERT dbo.Thongsokythuat
			        ( MaSP, Thuoctinh, Giatri )
			VALUES  ( @MaSP, -- MaSP - int
			          @Thuoctinh, -- Thuoctinh - nvarchar(100)
			          @Giatri  -- Giatri - nvarchar(150)
			          )
		END

GO
/****** Object:  StoredProcedure [dbo].[get_product_discount]    Script Date: 5/20/2020 8:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    CREATE PROC [dbo].[get_product_discount]
    AS
        BEGIN
            SELECT  * ,
                    ( a.Gia - ( a.Gia * a.Giamgia * 0.01 ) ) AS N'giá mới'
            FROM    ( SELECT    Sanpham.MaSP ,
                                TenSP ,
                                LoaiSP ,
								TenLoai,
                                HangSX ,
                                Anh ,
                                Isnew ,
                                Ishot ,
                                tenhang ,
                                Gia ,
                                Giamgia
                      FROM      dbo.Sanpham
                                LEFT JOIN dbo.SPkhuyenmai ON SPkhuyenmai.MaSP = Sanpham.MaSP
                                LEFT JOIN dbo.LoaiSP ON LoaiSP.MaLoai = Sanpham.LoaiSP
                                LEFT JOIN dbo.Khuyenmai ON Khuyenmai.MaKM = SPkhuyenmai.MaSPKM
								LEFT JOIN dbo.HangSX ON HangSX.MaHangSX = Sanpham.HangSX
                    ) a
        END

GO
