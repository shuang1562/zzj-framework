package cn.zzj.oauth2.model;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName(value = "zzj_user")
public class User {
    private Long id;
    private String name;
    private Integer age;
    private String email;
}
