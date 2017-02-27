package ${basePackage}.${moduleName}.${servicePackage}.${serviceImplPackage};

import java.util.Map;
<#if module.persistance=="mybatis">
import java.util.List;
</#if>

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import ${basePackage}.common.Pagination;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;

import ${basePackage}.${moduleName}.${entityPackage}.${entityCamelName};
import ${basePackage}.${moduleName}.${servicePackage}.${entityCamelName}Service;
import ${basePackage}.${moduleName}.${daoPackage}.${entityCamelName}Dao;

/**
 * ${remark!}操作相关
 */
@Service("${entityCamelName}Service")
public class ${entityCamelName}ServiceImpl implements ${entityCamelName}Service {

	Logger logger = LoggerFactory.getLogger(${entityCamelName}ServiceImpl.class);

	@Autowired
	private ${entityCamelName}Mapper ${entityName}Mapper;

	@Override
	public void save${entityCamelName}(${entityCamelName} ${entityName}) {
		${entityName}Mapper.save${entityCamelName}(${entityName});
	}

	@Override
	public void update${entityCamelName}(${entityCamelName} ${entityName}) {
		${entityName}Mapper.update${entityCamelName}(${entityName});
	}

	@Override
	public void remove${entityCamelName}(${entityCamelName} ${entityName}) {
		${entityName}Mapper.delete${entityCamelName}(${entityName});
	}

	@Override
	public ${entityCamelName} loadById(${primaryPropertyType} ${primaryProperty}) {
		return ${entityName}Mapper.findById(${primaryProperty});
	}



}
