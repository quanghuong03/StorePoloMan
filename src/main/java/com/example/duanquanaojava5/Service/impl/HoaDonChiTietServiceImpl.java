package com.example.duanquanaojava5.Service.impl;

import com.example.duanquanaojava5.Model.HoaDonChiTiet;
import com.example.duanquanaojava5.Repository.HoaDonChiTietRepository;
import com.example.duanquanaojava5.Service.HoaDonChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HoaDonChiTietServiceImpl implements HoaDonChiTietService {
    @Autowired
    HoaDonChiTietRepository hoaDonChiTietRepository;

    @Override
    public void save(HoaDonChiTiet hoaDonChiTiet) {
        hoaDonChiTietRepository.save(hoaDonChiTiet);
    }

    @Override
    public List<HoaDonChiTiet> findByHoaDon(Integer maHoaDon) {
        return hoaDonChiTietRepository.findByHoaDonMaHoaDon(maHoaDon);
    }
}
