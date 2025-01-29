import SwiftUI

struct MainView: View {
    @State private var selectedTab: TabIcon = .home
    @State var showTab: Bool = true

    var body: some View {
        ZStack(alignment: .bottom){
            // Display content based on the selected tab
           
            TabContentView(selectedTab: $selectedTab, showTab: $showTab)
            if showTab{
                // Custom Tab Bar
                CustamTabView(selectedTab: $selectedTab)
                    .transition(.offset(y: 300))
            }
            
            
        }
    }
}

struct TabContentView: View {
    @Binding var selectedTab: TabIcon
    @Binding var showTab: Bool

    var body: some View {
        Group {
            switch selectedTab {
            case .home:
                HomeView(showTab: $showTab)
            case .favorite:
                FavoriteView()
            case .notification:
                NotificationView()
            case .profile:
                ProfileView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground))
    }
}


struct CustamTabView: View {
    @Binding var selectedTab: TabIcon
    @Namespace private var animationNamespace
    var body: some View {
        HStack {
            ForEach(tabItems) { item in
                Spacer()
                Image(systemName: item.iconName)
                    .font(.title2)
                    .symbolVariant(selectedTab == item.tab ? .fill : .none)
                    .contentTransition(.symbolEffect)
                    .foregroundStyle(selectedTab == item.tab ? Color.primary : .gray)
                    .onTapGesture {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                            selectedTab = item.tab
                        }
                    }
                    .background {
                        if selectedTab == item.tab {
                            Circle()
                                .frame(width: 70, height: 70)
                                .foregroundStyle(Color(.systemGray4))
                                .matchedGeometryEffect(id: "circle", in: animationNamespace)
                        }
                    }
                Spacer()
            }
        }
        .frame(height: 90)
        .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 25))
        .padding(.horizontal, 10)
    }
}

// Views for Each Tab
struct HomeView: View {
    @Binding var showTab: Bool
    var body: some View {
        ScrollView{
            LazyVGrid(columns: Array(repeating: GridItem(), count: 2), content: {
                ForEach(0..<15){_ in
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.gray.tertiary)
                        .frame(height: 200)
                }
            })
        }
        .safeAreaPadding(.horizontal, 10).scrollIndicators(.hidden)
        .onScrollGeometryChange(for: CGFloat.self) { geometry in
            geometry.contentOffset.y
        } action: { oldValue, newValue in
            if newValue > oldValue{
                withAnimation {
                    showTab = false
                }
            }else{
                withAnimation {
                    showTab = true
                }
            }
        }

    }
}

struct FavoriteView: View {
    var body: some View {
        VStack {
            Text("Your Favorite Items")
                .font(.title)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.yellow)
    }
}

struct NotificationView: View {
    var body: some View {
        VStack {
            Text("Notifications Center")
                .font(.title)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.green)
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Your Profile")
                .font(.title)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.purple)
    }
}

// TabIcon Enum
enum TabIcon: String {
    case home
    case favorite
    case notification
    case profile
}

// TabBar Model
struct TabBar: Identifiable {
    let id: UUID = UUID()
    let iconName: String
    let tab: TabIcon
}

let tabItems: [TabBar] = [
    .init(iconName: "house", tab: .home),
    .init(iconName: "heart", tab: .favorite),
    .init(iconName: "bell", tab: .notification),
    .init(iconName: "person", tab: .profile)
]

#Preview {
    MainView()
}


