package com.tju.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.tju.entity.Post;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface PostMapper extends BaseMapper<Post> {
}
