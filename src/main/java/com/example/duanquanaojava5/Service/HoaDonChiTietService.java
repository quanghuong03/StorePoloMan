package com.example.duanquanaojava5.Service;

import com.example.duanquanaojava5.Model.HoaDonChiTiet;

import java.util.List;

public interface HoaDonChiTietService {
    void save(HoaDonChiTiet hoaDonChiTiet);
    List<HoaDonChiTiet> findByHoaDon(Integer maHoaDon);
}
