USE [master]
go
CREATE DATABASE [net]
go
USE [net]
GO
/****** Object:  Table [dbo].[MayCon]    Script Date: 5/6/2019 1:12:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MayCon](
	[MaMay] [nvarchar](50) NOT NULL,
	[TrangThaiMay] [nvarchar](50) NULL,
	[TenMay] [nvarchar](50) NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_MayCon] PRIMARY KEY CLUSTERED 
(
	[MaMay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongKe]    Script Date: 5/6/2019 1:12:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongKe](
	[MaThongKe] [int] IDENTITY(1,1) NOT NULL,
	[MaMay] [nvarchar](50) NULL,
	[ThoiGianBatDau] [smalldatetime] NULL,
	[ThoiGianKetThuc] [smalldatetime] NULL,
	[PhiDichVu] [int] NULL,
	[ThanhTien] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_ThongKe] PRIMARY KEY CLUSTERED 
(
	[MaThongKe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 5/6/2019 1:12:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_DangNhap] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'10', N'San sang', N'Máy 10', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'11', N'San sang', N'Máy 11', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'12', N'Dang su dung', N'Máy 12', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'13', N'Dang su dung', N'Máy 13', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'14', N'San sang', N'Máy 14', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'15', N'Dang su dung', N'Máy 15', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'16', N'San sang', N'Máy 16', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'17', N'Dang su dung', N'Máy 17', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'18', N'Dang su dung', N'Máy 18', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'19', N'Dang su dung', N'Máy 19', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'2', N'Dang su dung', N'Máy 2', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'20', N'Dang su dung', N'Máy 20', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'21', N'San sang', N'Máy 21', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'3', N'Dang su dung', N'Máy 3', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'4', N'San sang', N'Máy 4', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'5', N'San sang', N'Máy 5', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'6', N'San sang', N'Máy 6', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'7', N'Dang su dung', N'Máy 7', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'8', N'San sang', N'Máy 8', 5000)
INSERT [dbo].[MayCon] ([MaMay], [TrangThaiMay], [TenMay], [DonGia]) VALUES (N'9', N'Dang su dung', N'Máy 9', 5000)
SET IDENTITY_INSERT [dbo].[ThongKe] ON 

INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (22, N'10', CAST(N'2019-05-05 00:30:00' AS SmallDateTime), CAST(N'2011-11-20 01:02:00' AS SmallDateTime), 4000, 4037, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (23, N'13', CAST(N'2019-05-05 00:31:00' AS SmallDateTime), CAST(N'2011-11-20 01:02:00' AS SmallDateTime), 5000, 5045, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (24, N'19', CAST(N'2019-05-05 00:34:00' AS SmallDateTime), CAST(N'2011-11-20 01:02:00' AS SmallDateTime), 10000, 10020, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (25, N'21', CAST(N'2019-05-05 00:37:00' AS SmallDateTime), CAST(N'2011-11-20 01:02:00' AS SmallDateTime), 5000, 4993, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (29, N'13', CAST(N'2019-05-05 00:50:00' AS SmallDateTime), CAST(N'2019-05-05 00:50:00' AS SmallDateTime), 6000, 6023, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (30, N'14', CAST(N'2019-05-05 02:17:00' AS SmallDateTime), CAST(N'2019-05-05 15:16:00' AS SmallDateTime), 3000, 67931, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (31, N'19', CAST(N'2019-05-05 02:17:00' AS SmallDateTime), CAST(N'2019-05-05 04:04:00' AS SmallDateTime), 0, 8928, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (32, N'12', CAST(N'2019-05-05 02:17:00' AS SmallDateTime), CAST(N'2019-05-05 15:16:00' AS SmallDateTime), 6000, 70918, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (33, N'19', CAST(N'2019-05-05 02:20:00' AS SmallDateTime), CAST(N'2019-05-05 02:23:00' AS SmallDateTime), 0, 271, N'', 0)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (34, N'4', CAST(N'2019-05-05 02:20:00' AS SmallDateTime), CAST(N'2019-05-05 02:23:00' AS SmallDateTime), 0, 266, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (35, N'18', CAST(N'2019-05-05 03:51:00' AS SmallDateTime), NULL, 3000, 0, N'', 0)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (36, N'13', CAST(N'2019-05-05 15:16:00' AS SmallDateTime), CAST(N'2019-05-05 15:16:00' AS SmallDateTime), 0, 42, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (37, N'13', CAST(N'2019-05-05 15:17:00' AS SmallDateTime), CAST(N'2019-05-05 15:16:00' AS SmallDateTime), 0, -35, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (38, N'11', CAST(N'2019-05-05 15:17:00' AS SmallDateTime), CAST(N'2019-05-05 17:40:00' AS SmallDateTime), 0, 11961, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (39, N'12', CAST(N'2019-05-05 15:17:00' AS SmallDateTime), CAST(N'2019-05-05 17:46:00' AS SmallDateTime), 4000, 16487, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (40, N'3', CAST(N'2019-05-05 17:25:00' AS SmallDateTime), NULL, 0, 0, N'', 0)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (41, N'20', CAST(N'2019-05-05 17:25:00' AS SmallDateTime), CAST(N'2019-05-05 17:47:00' AS SmallDateTime), 0, 1863, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (42, N'7', CAST(N'2019-05-05 17:26:00' AS SmallDateTime), NULL, 0, 0, N'', 0)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (43, N'15', CAST(N'2019-05-05 17:26:00' AS SmallDateTime), CAST(N'2019-05-05 17:41:00' AS SmallDateTime), 0, 1280, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (44, N'14', CAST(N'2019-05-05 17:26:00' AS SmallDateTime), CAST(N'2019-05-05 17:47:00' AS SmallDateTime), 0, 1774, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (45, N'9', CAST(N'2019-05-05 17:26:00' AS SmallDateTime), NULL, 0, 0, N'', 0)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (46, N'17', CAST(N'2019-05-05 17:26:00' AS SmallDateTime), CAST(N'2019-05-05 17:44:00' AS SmallDateTime), 0, 1557, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (47, N'10', CAST(N'2019-05-05 17:33:00' AS SmallDateTime), CAST(N'2019-05-05 17:33:00' AS SmallDateTime), 2000, 2042, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (48, N'10', CAST(N'2019-05-05 17:35:00' AS SmallDateTime), CAST(N'2019-05-05 17:35:00' AS SmallDateTime), 3000, 3074, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (49, N'17', CAST(N'2019-05-05 17:47:00' AS SmallDateTime), CAST(N'2019-05-05 17:47:00' AS SmallDateTime), 3000, 3042, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (50, N'20', CAST(N'2019-05-05 17:48:00' AS SmallDateTime), CAST(N'2019-05-05 17:47:00' AS SmallDateTime), 7000, 6991, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (51, N'11', CAST(N'2019-05-05 17:48:00' AS SmallDateTime), CAST(N'2019-05-05 17:48:00' AS SmallDateTime), 3000, 3006, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (52, N'17', CAST(N'2019-05-05 17:48:00' AS SmallDateTime), CAST(N'2019-05-05 23:58:00' AS SmallDateTime), 0, 30853, N'', 1)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (53, N'15', CAST(N'2019-05-05 18:00:00' AS SmallDateTime), NULL, 0, 0, N'', 0)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (54, N'12', CAST(N'2019-05-05 18:01:00' AS SmallDateTime), NULL, 0, 0, N'', 0)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (55, N'13', CAST(N'2019-05-05 19:08:00' AS SmallDateTime), NULL, 0, 0, N'', 0)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (56, N'20', CAST(N'2019-05-05 23:58:00' AS SmallDateTime), NULL, 0, 0, N'', 0)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (57, N'17', CAST(N'2019-05-06 00:11:00' AS SmallDateTime), NULL, 6000, 0, N'', 0)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (58, N'2', CAST(N'2019-05-06 00:17:00' AS SmallDateTime), NULL, 0, 0, N'', 0)
INSERT [dbo].[ThongKe] ([MaThongKe], [MaMay], [ThoiGianBatDau], [ThoiGianKetThuc], [PhiDichVu], [ThanhTien], [GhiChu], [TrangThai]) VALUES (59, N'2', CAST(N'2019-05-06 00:21:00' AS SmallDateTime), NULL, 0, 0, N'', 0)
SET IDENTITY_INSERT [dbo].[ThongKe] OFF
ALTER TABLE [dbo].[ThongKe]  WITH CHECK ADD  CONSTRAINT [FK_ThongKe_MayCon1] FOREIGN KEY([MaMay])
REFERENCES [dbo].[MayCon] ([MaMay])
GO
ALTER TABLE [dbo].[ThongKe] CHECK CONSTRAINT [FK_ThongKe_MayCon1]
GO
/****** Object:  StoredProcedure [dbo].[USP_getThongKeTheoMay]    Script Date: 5/6/2019 1:12:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_getThongKeTheoMay]
	@maMay nvarchar(100),
    @tuNgay datetime,
    @denNgay datetime
AS
Begin
	select MaThongKe as [Mã thống kê] , N'Máy '+MaMay as [Tên máy] , ThoiGianBatDau as [Thời gian bắt đầu], ThoiGianKetThuc as [Thời gian kết thúc], PhiDichVu as [Phí dịch vụ], ThanhTien as [Tổng tiền], GhiChu as [Ghi chú], TrangThai as [Đã thanh toán]  from ThongKe where TrangThai = 1 and mamay= @maMay and ThoiGianKetThuc >= @tuNgay and ThoiGianKetThuc <=@denNgay
end
GO
/****** Object:  StoredProcedure [dbo].[USP_getThongKeTheoNgay]    Script Date: 5/6/2019 1:12:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_getThongKeTheoNgay] 
    @tuNgay datetime,
    @denNgay datetime  
AS
Begin
	select MaThongKe as [Mã thống kê] , N'Máy '+MaMay as [Tên máy] , ThoiGianBatDau as [Thời gian bắt đầu], ThoiGianKetThuc as [Thời gian kết thúc], PhiDichVu as [Phí dịch vụ], ThanhTien as [Tổng tiền], GhiChu as [Ghi chú], TrangThai as [Đã thanh toán]  from ThongKe where TrangThai = 1 and ThoiGianKetThuc >= @tuNgay and ThoiGianKetThuc <= @denNgay
end
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertThongKe]    Script Date: 5/6/2019 1:12:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_InsertThongKe]
	@maMay nvarchar(100)
as
begin
	insert into ThongKe values (2,getdate(),null,0,0,'',0)
end
GO
/****** Object:  StoredProcedure [dbo].[USP_setDangSuDungByMaMay]    Script Date: 5/6/2019 1:12:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_setDangSuDungByMaMay] 
	@maMay nvarchar(100)
as
begin
	update MayCon set TrangThaiMay = N'Dang su dung' where MaMay = @maMay
end
GO
/****** Object:  StoredProcedure [dbo].[USP_updateThongKe_ChuyenMay]    Script Date: 5/6/2019 1:12:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_updateThongKe_ChuyenMay]
	@phiDichVu int,
	@ghiChu nvarchar(100),
	@maThongKe nvarchar(100),
	@maMay nvarchar(100)
as
begin
	update ThongKe set PhiDichVu=@phiDichVu , GhiChu = @ghiChu, MaMay = @maMay where MaThongKe = @maThongKe
end
GO
/****** Object:  StoredProcedure [dbo].[USP_updateThongKe_KhongChuyenMay]    Script Date: 5/6/2019 1:12:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_updateThongKe_KhongChuyenMay]
	@phiDichVu int,
	@ghiChu nvarchar(100),
	@maThongKe nvarchar(100)
as
begin
	update ThongKe set PhiDichVu=@phiDichVu , GhiChu = @ghiChu where MaThongKe = @maThongKe
end
GO
USE [master]
GO
ALTER DATABASE [net] SET  READ_WRITE 
GO
