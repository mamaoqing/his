package com.sdzy.his.common.entity.system;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 物业公司表
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SCompany implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 公司名称
     */
    private String name;

    /**
     * 简称
     */
    private String abbreviation;

    /**
     * 成立日期
     */
    private Date establishmentDate;

    /**
     * 省
     */
    private Long provinceId;

    /**
     * 市
     */
    private Long cityId;

    /**
     * 县区
     */
    private Long districtId;

    /**
     * 省
     */
    private String province;

    /**
     * 市
     */
    private String city;

    /**
     * 县区
     */
    private String district;

    /**
     * 公司地址
     */
    private String compAddr;

    /**
     * 注册地址
     */
    private String registeredAddr;

    /**
     * 注册资本
     */
    private String registeredCapital;

    /**
     * 统一社会信用代码
     */
    private String unifiedSocialCreditCode;

    /**
     * 纳税人识别号
     */
    private String taxpayerIdentificationNo;

    /**
     * 工商注册号
     */
    private String registeredNo;

    /**
     * 公司类型
     */
    private String compType;

    /**
     * 营业期限开始
     */
    private Date businessTermBegin;

    /**
     * 营业期限结束
     */
    private Date businessTermEnd;

    /**
     * 法人
     */
    private String legalPerson;

    /**
     * 状态
     */
    private String state;

    /**
     * 电话
     */
    private String tel;

    /**
     * 邮箱
     */
    private String eMail;

    /**
     * 备注
     */
    private String remark;

    @TableField(fill = FieldFill.INSERT)
    private Date createdAt;

    private Long createdBy;

    private String createdName;

    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date modifiedAt;

    private Long modifiedBy;

    private String modifiedName;

    @TableLogic
    private Integer isDelete;


}
