select lh.tenloaihang as TenLoaiHang, 
       ncc.tencongty as TenCongTy, 
       ncc.diachi as DiaChi
from loaihang lh
join mathang mh on lh.maloaihang = mh.maloaihang
join nhacungcap ncc on ncc.macongty = mh.macongty
where lh.tenloaihang = 'furniture'