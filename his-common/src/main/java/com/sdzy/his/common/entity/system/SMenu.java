package com.sdzy.his.common.entity.system;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * <p>
 * 菜单表
 * </p>
 *
 * @author mq
 * @since 2020-12-07
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SMenu implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 菜单名称
     */
    private String name;

    /**
     * 父菜单id
     */
    private Long parentId;

    /**
     * 父菜单id列表
     */
    private String parentIdList;

    /**
     * url
     */
    private String url;

    /**
     * 排序
     */
    private Integer orderNo;

    /**
     * 类型
     */
    private String type;

    /**
     * 图标
     */
    private String icon;

    /**
     * 状态
     */
    private String state;

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
    /**
     * 子菜单集合
     */
    @TableField(exist = false)
    private List<SMenu> chirldMenuList;

}
