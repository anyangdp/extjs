<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/resources/css/ext-all.css">
	
	<script type="text/javascript" src ="js/bootstrap.js"></script>
	<script type="text/javascript" src ="js/ext-all.js"></script>
    <script type="text/javascript" src="js/ext-lang-zh_CN.js"></script>
	
	<script type="text/javascript">
	Ext.onReady(function(){
	    Ext.QuickTips.init();
	    
	    var btn = Ext.create("Ext.Button",{
	        xtype:'Button',
	        text:'button',
	        renderTo:"btn",
	        handler:function(){
	            var form = Ext.create('Ext.form.Panel',{
	                id:'paidan',
	                name:'paidan',
	                frame:true,
	                title:'�ɵ�����',
	                width:400,
	                bodyPadding:5,
	                fieldDefaults: {
                        labelAlign: 'left',
                        labelWidth: 90,
                        anchor: '100%',
                        msgTarget: 'under'
                        },
                    layout:'form',
                    items:[{
                        xtype:'container',
                        layout:'column',
                        items:[{
                            columnWidth:.6,
                            xtype:'textfield',
                            fieldLabel:'������',
                            name:'name'
                        },{
                          columnWidth:.4, 
                          xtype:'datefield',
                          fieldLabel:'��ʼ����',
                          format:'Y-m-d',
                          name:'date',
                        }]
                    },{
                         xtype:'textarea',
                         fieldLabel:'����',
                         name:'content',
                    }],
                    buttons:[{
                    text:"�ύ",handler:function(){	
                         Ext.Ajax.request( {  
                         url : '/ExtJs/MyController/test.do',  
                         method : 'post',  
                         form : 'form', // ָ����  
                         success : function(response, options) {  
                         alert(response.responseText);
                         if(response.responseText==111){
                         window.location.href = "/ExtJs/MyController/test2.do";
                         }
                         
                           },  
                   failure : function() {  
                   }  
    });  
                    }},{
                    text:"ȡ��",handler:function(){
                        win.close();
                    }
                    }],
                    buttonAlign:'center'
	            });  
	            var win = Ext.create("Ext.window.Window", {
                                title: "�༭",	   //����
                                draggable: false,
                                height: 600,						  //�߶�
                                width: 800,						   //���
                                layout: "fit",						//���ڲ�������
                                modal: true, //�Ƿ�ģ̬���ڣ�Ĭ��Ϊfalse
                                resizable: false,
                                items: [form]
                            });
               win.show();        
	        }
	    });
	});
	
	</script>
  </head>
  
  <body>
   <div id = "btn">
   </div>
  </body>
</html>
