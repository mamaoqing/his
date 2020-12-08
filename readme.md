[系统操作](#11)<br>
* [登录111](#12)
* [退出](#13)
<h2 id="11">系统操作</h2>
<h3 id="12">用户登录</h3>
<table>
    <tr>
        <td style="width: 10px">请求连接</td>
        <td>192.168.0.107:7001/web/system/login</td>
    </tr>
    <tr>
            <td style="width: 10px">请求方式</td>
            <td>POST</td>
        </tr>
       
</table>
<table>
    <tr>
        <td>参数</td>
        <td>类型</td>
        <td>是否必填</td>
    </tr>
    <tr>
        <td>userName</td>
        <td>String</td>
        <td>true</td>
    </tr>
    <tr>
        <td>password</td>
        <td>String</td>
        <td>true</td>
    </tr>
</table>
返回示例：
<table>
    <tr>
        <td>code</td>
        <td>状态码，200表示成功，其他失败</td>
    </tr>
    <tr>
            <td>message</td>
            <td>错误信息</td>
        </tr>
        <tr>
                <td>data</td>
                <td>登录反馈，用户登录的token。</td>
            </tr>
</table>
<h3 id="13">用户退出</h3>
<table>
    <tr>
        <td style="width: 10px">请求连接</td>
        <td>192.168.0.107:7001/web/system/logout</td>
    </tr>
    <tr>
            <td style="width: 10px">请求方式</td>
            <td>GET</td>
        </tr>
       
</table>
<table>
    <tr>
        <td>参数</td>
        <td>类型</td>
        <td>是否必填</td>
    </tr>
    <tr>
        <td>Authentication-Token(该参数需要放在header中)</td>
        <td>String</td>
        <td>true</td>
    </tr>
</table>
返回示例：
<table>
    <tr>
        <td>code</td>
        <td>状态码，200表示成功，其他失败</td>
    </tr>
    <tr>
            <td>message</td>
            <td>错误信息</td>
        </tr>
        <tr>
                <td>data</td>
                <td>具体数据，成功退出无信息</td>
            </tr>
</table>

