

import 'package:flutter/material.dart';

/// 自定义组件继承 StatefulWidget 还是 StatelessWidget
///   由组件的性质决定
///   如果 组件 只是纯展示 , 没有交互操作 , 那么继承 StatelessWidget
///   如果 组件 需要根据交互内容 , 动态修改内容 , 那么继承 StatefulWidget
///   StatelessWidget 和 StatefulWidget 都需要导入如下包
///   import 'package:flutter/material.dart';
class StudentStatelessWidget extends StatelessWidget{

  /// 组件属性必须使用 final 修饰
  ///   所有的 Widget 组件都是不可变的
  final String name;
  final int? age;

  /// Dart 构造函数中 , {} 内的是可选参数 , 可选参数必须在参数的最后
  ///   这里注意 , 可选参数如果定义为非空类型 , 那么必须有一个默认值
  ///   可选参数如果定义为可空类型 , 可以不用进行初始化
  const StudentStatelessWidget({this.name = "Tom", this.age});

  @override
  Widget build(BuildContext context) {
    return Text("$name : $age");
  }
}