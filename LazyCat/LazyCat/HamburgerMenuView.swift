import SwiftUI
struct HamburgerMenuView: View {
    var body: some View {
        VStack(alignment: .center) {
            // USER
            HStack {
                Image("paw")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
            }
            .padding(.top, 40)
            HStack {
                Text("USER")
                    .foregroundColor(.black)
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.top, 10)
            Divider()
            // 닉네임 변경
            HStack {
                Text("닉네임 변경")
                    .foregroundColor(.black)
            }
            .padding(.top, 30)
            // 비밀번호 변경
            HStack {
                Text("비밀번호 변경")
                    .foregroundColor(.black)
            }
            .padding(.top, 30)
            // 로그아웃
            HStack {
                Text("로그아웃")
                    .foregroundColor(.black)
            }
            .padding(.top, 30)
            // 회원탈퇴
            HStack {
                Text("회원탈퇴")
                    .foregroundColor(.black)
            }
            .padding(.top, 30)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .center)
    }
}
#Preview {
    HamburgerMenuView()
}
