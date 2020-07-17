import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
//        color: Colors.pinkAccent,
        child: SizedBox(
          width: 300,
          child: new Column(
            children: <Widget>[
              Container(
                child: Image.network(
                  "http://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1595470956&t=24678ab8cb5885ebd1437ba2626903fe",
                  width: 60,
                  height: 60,
                  fit: BoxFit.fill,
                ),
                margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
              ),
              Container(
                child: Text(
                  "千仞为您服务",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w500),
                ),
                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
              ),
              Text(
                "CAIOT SINCERELY AT YOUR SERVICE",
                style: TextStyle(fontSize: 13, color: Color(0xff666666)),
              ),
              Container(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "请输入账号",
                      icon: Icon(
                        Icons.person,
                        color: Color(0xff0EAFF8),
                      ),
                      border: InputBorder.none,
                      fillColor: Colors.deepPurpleAccent,
                      hintStyle:
                          TextStyle(color: Color(0xff666666), fontSize: 15.0)),
                  controller: TextEditingController(),
                  style: TextStyle(color: Color(0xff333333), fontSize: 15.0),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  border: Border.all(color: Color(0xff0EAFF8), width: 0.5),
                ),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              ),
              Container(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "请输入密码",
                      icon: Icon(Icons.work, color: Color(0xff0EAFF8)),
                      border: InputBorder.none,
                      hintStyle:
                          TextStyle(color: Color(0xff666666), fontSize: 15.0)),
                  keyboardType: TextInputType.visiblePassword,
                  controller: TextEditingController(),
                  obscureText: true,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  border: Border.all(color: Color(0xff0EAFF8), width: 0.5),
                ),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              ),
              InkWell(
                onTap: () {
                  debugPrint("点击事件");
                  Navigator.pushReplacementNamed(context, "/home");
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "登录",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                    color: Color(0xff0EAFF8),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                ),
              ),
              Expanded(
                child: new Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    new Positioned(
                        //方法二
                        bottom: 30.0,
                        child: Text(
                          "copyright   2019深圳市中物互联技术发展有限公司",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff666666)),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
