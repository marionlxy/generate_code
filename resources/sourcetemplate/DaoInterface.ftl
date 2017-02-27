package ${basePackage}.${moduleName}.${daoPackage};

import java.util.Map;

import ${basePackage}.common.Pagination;
<#if module.persistance == 'mybatis'>
import java.util.List;
import org.apache.ibatis.annotations.Param;
</#if>

import ${basePackage}.${moduleName}.${entityPackage}.${entityCamelName};

/**
 * ${remark!}操作相关
 */
public interface ${entityCamelName}Mapper {
	
	
	
	/**
	 * 新增保存${remark!}
	 * @param info
	 */
	void save${entityCamelName}(${entityCamelName} ${entityName});
	
	/**
	 * 修改${remark!}
	 * @param info
	 */
	void update${entityCamelName}(${entityCamelName} ${entityName});

	/**
	 * 删除${remark!}
	 * @param info
	 */
	void delete${entityCamelName}(${entityCamelName} ${entityName});
	
	/**
	 * 根据编号查询${remark!}信息
	 * @param placeId
	 * @return
	 */
	${entityCamelName} findById(${primaryPropertyType} ${primaryProperty});
	


}
