import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                // HStack - 水平布局
                VStack(alignment: .leading, spacing: 10) {
                    Text("HStack - 水平排列")
                        .font(.headline)

                    HStack {
                        Text("A")
                            .padding()
                            .background(Color.red.opacity(0.3))
                        Text("B")
                            .padding()
                            .background(Color.green.opacity(0.3))
                        Text("C")
                            .padding()
                            .background(Color.blue.opacity(0.3))
                    }
                }

                Divider()

                // VStack - 垂直布局
                VStack(alignment: .leading, spacing: 10) {
                    Text("VStack - 垂直排列")
                        .font(.headline)

                    VStack {
                        Text("顶部")
                            .padding()
                            .background(Color.red.opacity(0.3))
                        Text("中间")
                            .padding()
                            .background(Color.green.opacity(0.3))
                        Text("底部")
                            .padding()
                            .background(Color.blue.opacity(0.3))
                    }
                }

                Divider()

                // ZStack - 重叠布局
                VStack(alignment: .leading, spacing: 10) {
                    Text("ZStack - 重叠排列")
                        .font(.headline)

                    ZStack {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 80, height: 80)
                        Circle()
                            .fill(Color.green)
                            .frame(width: 60, height: 60)
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 40, height: 40)
                    }
                }

                Divider()

                // 嵌套布局
                VStack(alignment: .leading, spacing: 10) {
                    Text("嵌套布局")
                        .font(.headline)

                    HStack(spacing: 20) {
                        VStack {
                            Text("列1-1")
                            Text("列1-2")
                            Text("列1-3")
                        }
                        .padding()
                        .background(Color.orange.opacity(0.3))

                        VStack {
                            Text("列2-1")
                            Text("列2-2")
                            Text("列2-3")
                        }
                        .padding()
                        .background(Color.purple.opacity(0.3))
                    }
                }

                Divider()

                // Spacer - 空白填充
                VStack(alignment: .leading, spacing: 10) {
                    Text("Spacer - 空白填充")
                        .font(.headline)

                    HStack {
                        Text("左")
                            .padding()
                            .background(Color.red.opacity(0.3))
                        Spacer()
                        Text("右")
                            .padding()
                            .background(Color.blue.opacity(0.3))
                    }
                }

                Divider()

                // 对齐方式
                VStack(alignment: .leading, spacing: 10) {
                    Text("对齐方式")
                        .font(.headline)

                    HStack(alignment: .top, spacing: 10) {
                        VStack(alignment: .leading) {
                            Text("左对齐")
                            Text("第二行")
                            Text("第三行")
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))

                        VStack(alignment: .center) {
                            Text("居中")
                            Text("第二行")
                            Text("第三行")
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))

                        VStack(alignment: .trailing) {
                            Text("右对齐")
                            Text("第二行")
                            Text("第三行")
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                    }
                }
            }
            .padding(30)
        }
    }
}
