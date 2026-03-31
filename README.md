# SwiftUI macOS 布局 Stack

## 简介

演示 SwiftUI 中三种布局容器 HStack、VStack、ZStack 的用法。

## 快速开始

```bash
cd swiftui-macos-layout-stack-demo
xcodegen generate
open SwiftUILayoutStackDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### HStack - 水平布局

```swift
HStack {
    Text("A")
    Text("B")
    Text("C")
}
```

子视图从左到右水平排列。

### VStack - 垂直布局

```swift
VStack {
    Text("顶部")
    Text("中间")
    Text("底部")
}
```

子视图从上到下垂直排列。

### ZStack - 重叠布局

```swift
ZStack {
    Circle()
        .fill(Color.red)
        .frame(width: 80, height: 80)
    Circle()
        .fill(Color.blue)
        .frame(width: 40, height: 40)
}
```

子视图按顺序重叠放置。

### spacing 参数

```swift
HStack(spacing: 20) {
    // 子视图间距为 20
}
```

### alignment 对齐

```swift
VStack(alignment: .leading) {
    // 子视图左对齐
}
```

可选值：`.leading`、`.center`、`.trailing`

### Spacer 空白填充

```swift
HStack {
    Text("左")
    Spacer()  // 占据所有空白空间
    Text("右")
}
```

Spacer 会自动扩展填满可用空间。

## 完整示例

```swift
struct ContentView: View {
    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .leading) {
                Text("标题")
                Text("内容")
            }

            Spacer()

            Text("右侧")
        }
        .padding()
    }
}
```

## 完整讲解（中文）

### Stack 的核心概念

SwiftUI 的布局系统基于三种 Stack：

| 类型 | 方向 | 用途 |
|------|------|------|
| HStack | 水平 | 横向排列 |
| VStack | 垂直 | 纵向排列 |
| ZStack | 重叠 | 层叠布局 |

### 嵌套使用

复杂的 UI 通常需要多层嵌套：

```swift
VStack {
    HStack {
        Text("左上")
        Spacer()
        Text("右上")
    }
    Spacer()
    Text("底部")
}
```

### alignment vs baseline

- `alignment` 控制子视图在交叉轴上的对齐方式
- HStack 的交叉轴是垂直方向
- VStack 的交叉轴是水平方向
