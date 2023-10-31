# redis 笔记
@EnableCaching  写在redisconfig上

在PmsBrandServiceImpl类中使用相关注解来实现缓存功能

可以发现我们获取品牌详情的方法中使用了@Cacheable注解，在修改和删除品牌的方法上使用了@CacheEvict注解；

```` java
/**
 * @auther macrozheng
 * @description PmsBrandService实现类
 * @date 2019/4/19
 * @github https://github.com/macrozheng
 */
@Service
public class PmsBrandServiceImpl implements PmsBrandService {
    @Autowired
    private PmsBrandMapper brandMapper;

    @CacheEvict(value = RedisConfig.REDIS_KEY_DATABASE, key = "'pms:brand:'+#id")
    @Override
    public int update(Long id, PmsBrand brand) {
        brand.setId(id);
        return brandMapper.updateByPrimaryKeySelective(brand);
    }

    @CacheEvict(value = RedisConfig.REDIS_KEY_DATABASE, key = "'pms:brand:'+#id")
    @Override
    public int delete(Long id) {
        return brandMapper.deleteByPrimaryKey(id);
    }

    @Cacheable(value = RedisConfig.REDIS_KEY_DATABASE, key = "'pms:brand:'+#id", unless = "#result==null")
    @Override
    public PmsBrand getItem(Long id) {
        return brandMapper.selectByPrimaryKey(id);
    }

}
````
@CacheEvict  用于更新删除方法 列如上面的update

@Cacheable  使用该注解的方法当缓存存在时，会从缓存中获取数据而不执行方法，当缓存不存在时，会执行方法并把返回结果存入缓存中。一般使用在查询方法上，可以设置如下属性：

unless：条件符合则不缓存；
#result==null 表示空则不存入缓存

springboot2.0 添加Lettuce连接池配置


# JWT
●  用户调用登录接口，登录成功后获取到JWT的token； 
●  之后用户每次调用接口都在http的header中添加一个叫Authorization的头，值为JWT的token； 
●  后台程序通过对Authorization头中信息的解码及数字签名校验来获取其中的用户信息，从而实现认证和授权。 