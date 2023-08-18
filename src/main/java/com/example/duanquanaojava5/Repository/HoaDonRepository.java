package com.example.duanquanaojava5.Repository;

import com.example.duanquanaojava5.Model.GioHang;
import com.example.duanquanaojava5.Model.HoaDon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HoaDonRepository extends JpaRepository<HoaDon,Integer> {
    List<HoaDon> findByKhachHangMaKhachHang(Integer maKhachHang);
}
