//
//  LayputButton.swift
//  LazyCat
//
//  Created by jinlee on 11/4/24.
//
import SwiftUI

struct LoginButton: View {
    @State private var isPressed: Bool = false // 버튼이 눌린 상태를 추적
    
    var body: some View {
        Button(action: {
        }) {
            Text("Login")
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(Color("dark"))
                .frame(width: 266, height: 49)
                .background(isPressed ? Color("babyPink") : Color("gray")  ) // 배경색 변경
                .cornerRadius(15) // 모서리 둥글게
        }
        .simultaneousGesture(
            DragGesture(minimumDistance: 0)
                .onChanged({ _ in self.isPressed = true }) // 눌렀을 때 상태 업데이트
                .onEnded({ _ in self.isPressed = false }) // 손을 뗐을 때 상태 복구
        )
        .buttonStyle(PlainButtonStyle()) // 기본 버튼 스타일 제거
        .animation(.easeInOut(duration: 0.2), value: isPressed) // 부드러운 애니메이션
    }
}

// MARK: - Preview
struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            LoginButton()
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}