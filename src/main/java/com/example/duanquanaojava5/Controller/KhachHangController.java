package com.example.duanquanaojava5.Controller;

import com.example.duanquanaojava5.Model.GioHang;
import com.example.duanquanaojava5.Model.GioHangChiTiet;
import com.example.duanquanaojava5.Model.HoaDon;
import com.example.duanquanaojava5.Model.KhachHang;
import com.example.duanquanaojava5.Service.HoaDonChiTietService;
import com.example.duanquanaojava5.Service.HoaDonService;
import com.example.duanquanaojava5.Service.KhachHangService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller 
public class KhachHangController {

    @Autowired
    HoaDonService hoaDonService;
    @Autowired
    HoaDonChiTietService hoaDonChiTietService;
    @Autowired
    KhachHangService khachHangService;


//    @GetMapping("/hoa-don")
//    public String hoaDon(Model model, HttpSession session, HttpServletRequest request) {
//        KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");
//        if (khachHang == null) {
//            session.setAttribute("redirectUrl", request.getRequestURI());
//            return "redirect:/login";
//        }
//        List<HoaDon> hoaDons = hoaDonService.findByKhachHang(khachHang.getMaKhachHang());
//        HoaDon hoaDon;
//        if (hoaDons.isEmpty()) {
//            hoaDon = new HoaDon();
//            hoaDon.setNgayTao(new java.sql.Date(new Date().getTime()));
//            hoaDon.setTrangThai(0);
//            hoaDon.setKhachHang(khachHang);
//            hoaDonService.save(hoaDon);
//        } else {
//            hoaDon = hoaDons.get(0);
//        }
//        model.addAttribute("hoaDon", hoaDons);
//        return "hoadonkhachhang";
//    }
}
