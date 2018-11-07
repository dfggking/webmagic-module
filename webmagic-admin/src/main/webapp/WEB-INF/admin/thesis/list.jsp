<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ include file="../common/header.jsp" %>
</head>
<body>
  <div class="x-nav">
    <span class="layui-breadcrumb">
      <a href="">首页</a>
      <a href="">论文著作</a>
      <a><cite>论文列表</cite></a>
    </span>
    <a class="layui-btn layui-btn-small" style="line-height: 1.6em; margin-top: 3px; float: right"
       href="javascript:location.replace(location.href);" title="刷新">
      <i class="layui-icon layui-icon-refresh" style="line-height: 38px"></i>
    </a>
  </div>
  <div class="x-body">
    <div class="layui-row">
      <form class="layui-form layui-col-md12 x-so">
        <input type="text" name="username" placeholder="请输入论文名称" autocomplete="off" class="layui-input">
        <button class="layui-btn" lay-submit="" lay-filter="sreach">
          <i class="layui-icon">&#xe615;</i>
        </button>
      </form>
    </div>
    <xblock>
    <button class="layui-btn" onclick="x_admin_show('添加用户','./admin-add.html')">
      <i class="layui-icon"></i>添加
    </button>
    <span class="x-right" style="line-height: 40px">共有数据：88 条</span> </xblock>
    <table class="layui-table">
      <thead>
        <tr>
          <th>
            <div class="layui-unselect header layui-form-checkbox" lay-skin="primary">
              <i class="layui-icon">&#xe605;</i>
            </div>
          </th>
          <th style="max-width: 300px;">论文名称</th>
          <th style="min-width: 60px;">作者</th>
          <th style="min-width: 40px;">源码</th>
          <th style="min-width: 40px;">PDF</th>
          <th style="min-width: 40px;">附件</th>
          <th style="min-width: 50px;">是否展示</th>
          <th style="min-width: 70px;">创建时间</th>
          <th>操作</th>
      </thead>
      <tbody>
        <tr>
          <td>
            <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'>
              <i class="layui-icon">&#xe605;</i>
            </div>
          </td>
          <td>大数据环境下的网络安全领域文献研究进展分析 </td>
          <td>冯仑</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td class="td-status"><span class="layui-btn layui-btn-normal layui-btn-mini">展示</span></td>
          <td>2017-01-01 11:11:42</td>
          <td class="td-manage">
            </a> <a title="编辑" onclick="x_admin_show('编辑','admin-edit.html')" href="javascript:"> <i class="layui-icon">&#xe642;</i>
            </a> <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:"> <i class="layui-icon">&#xe640;</i>
            </a>
          </td>
        </tr>
        <tr>
          <td>
            <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'>
              <i class="layui-icon">&#xe605;</i>
            </div>
          </td>
          <td>Windows下基于SpamAssassin的垃圾邮件过滤系统的研究与实现 优先出版 </td>
          <td>张园园</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td class="td-status"><span class="layui-btn layui-btn-normal layui-btn-mini">展示</span></td>
          <td>2018-02-03 11:11:42</td>
          <td class="td-manage">
            </a> <a title="编辑" onclick="x_admin_show('编辑','admin-edit.html')" href="javascript:"> <i class="layui-icon">&#xe642;</i>
          </a> <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:"> <i class="layui-icon">&#xe640;</i>
          </a>
          </td>
        </tr>
        <tr>
          <td>
            <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'>
              <i class="layui-icon">&#xe605;</i>
            </div>
          </td>
          <td>S.-Y. Zhao, G.-D. Zhang, M.-W. Li, W.-J. Li. Proximal SCOPE for Distributed Sparse Learning. In: Proceedings of the Annual Conference on Neural Information Processing Systems (NIPS), 2018. </td>
          <td>海棠</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td class="td-status"><span class="layui-btn layui-btn-normal layui-btn-mini">展示</span></td>
          <td>2018-11-01 11:11:42</td>
          <td class="td-manage">
            </a> <a title="编辑" onclick="x_admin_show('编辑','admin-edit.html')" href="javascript:"> <i class="layui-icon">&#xe642;</i>
          </a> <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:"> <i class="layui-icon">&#xe640;</i>
          </a>
          </td>
        </tr>
        <tr>
          <td>
            <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'>
              <i class="layui-icon">&#xe605;</i>
            </div>
          </td>
          <td>Y. Yang, Y.-F. Wu, D.-C. Zhan, Z.-B. Liu, Y. Jiang. Complex Object Classification: A Multi-Modal Multi-Instance Multi-Label Deep Network with Optimal Transport. In: Proceedings of the Annual Conference on ACM SIGKDD (KDD'18), London, UK, 2018.  </td>
          <td>罗伊</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td class="td-status"><span class="layui-btn layui-btn-normal layui-btn-mini">展示</span></td>
          <td>2018-11-01 11:11:42</td>
          <td class="td-manage">
            </a> <a title="编辑" onclick="x_admin_show('编辑','admin-edit.html')" href="javascript:"> <i class="layui-icon">&#xe642;</i>
          </a> <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:"> <i class="layui-icon">&#xe640;</i>
          </a>
          </td>
        </tr>
        <tr>
          <td>
            <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'>
              <i class="layui-icon">&#xe605;</i>
            </div>
          </td>
          <td>H.-J. Ye, D.-C. Zhan, Y. Jiang, Z.-H. Zhou. Rectify Heterogeneous Model with Semantic Mapping. In: Proceedings of the 35th International Conference on Machine Learning (ICML'18), Stockholm, Sweden, 2018. </td>
          <td>Kiven</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td class="td-status"><span class="layui-btn layui-btn-normal layui-btn-mini">展示</span></td>
          <td>2018-11-01 11:11:42</td>
          <td class="td-manage">
            </a> <a title="编辑" onclick="x_admin_show('编辑','admin-edit.html')" href="javascript:"> <i class="layui-icon">&#xe642;</i>
          </a> <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:"> <i class="layui-icon">&#xe640;</i>
          </a>
          </td>
        </tr>
      </tbody>
    </table>
    <div class="page">
      <div>
        <a class="prev" href="">&lt;&lt;</a> <a class="num" href="">1</a> <span class="current">2</span> <a class="num" href="">3</a> <a class="num"
          href="">489</a> <a class="next" href="">&gt;&gt;</a>
      </div>
    </div>

  </div>
  <script>
      layui.use('laydate', function() {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
          elem : '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem : '#end' //指定元素
        });
      });

      /*用户-停用*/
      function member_stop(obj, id) {
        layer.confirm('确认要停用吗？', function(index) {

          if ($(obj).attr('title') == '启用') {

            //发异步把用户状态进行更改
            $(obj).attr('title', '停用');
            $(obj).find('i').html('&#xe62f;');

            $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
            layer.msg('已停用!', {
              icon : 5,
              time : 1000
            });

          } else {
            $(obj).attr('title', '启用');
            $(obj).find('i').html('&#xe601;');

            $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
            layer.msg('已启用!', {
              icon : 5,
              time : 1000
            });
          }

        });
      }

      /*用户-删除*/
      function member_del(obj, id) {
        layer.confirm('确认要删除吗？', function(index) {
          //发异步删除数据
          $(obj).parents("tr").remove();
          layer.msg('已删除!', {
            icon : 1,
            time : 1000
          });
        });
      }

      function delAll(argument) {

        var data = tableCheck.getData();

        layer.confirm('确认要删除吗？' + data, function(index) {
          //捉到所有被选中的，发异步进行删除
          layer.msg('删除成功', {
            icon : 1
          });
          $(".layui-form-checked").not('.header').parents('tr').remove();
        });
      }
    </script>
</body>

</html>