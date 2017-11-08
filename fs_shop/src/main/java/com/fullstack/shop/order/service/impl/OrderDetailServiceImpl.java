package com.fullstack.shop.order.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.fullstack.common.exceptions.BusinessException;
import com.fullstack.common.service.impl.BaseServiceImpl;
import com.fullstack.shop.order.dao.OrderDetailDao;
import com.fullstack.shop.order.entity.OrderDetail;
import com.fullstack.shop.order.service.OrderDetailService;

/**
 * 
 * @author chay
 * @version 2017-04-17
 */
@Service
public class OrderDetailServiceImpl extends BaseServiceImpl<OrderDetailDao, OrderDetail> implements OrderDetailService<OrderDetail>{
	
	@Override
	public Page<OrderDetail> findPage(Page<OrderDetail> page, Wrapper<OrderDetail> wrapper) throws BusinessException {
		page = super.findPage(page, wrapper);
		
		return page;
	}

	@Override
	public boolean batchInsert(List<OrderDetail> listOrderDetail, int orderId) throws BusinessException {
		for(OrderDetail detail:listOrderDetail){
			detail.setOrderId(orderId);
			super.create(detail);
		}
		return true;
	}
	
}