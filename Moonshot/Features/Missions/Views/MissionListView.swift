import SwiftUI

/// List view displaying Apollo missions in a vertical list.
struct MissionListView: View {
    let missions: [Mission]

    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink(value: mission) {
                    MissionListRow(mission: mission)
                }
                .listRowBackground(Color.darkBackground)
                .listRowSeparatorTint(.lightBackground)
            }
        }
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")

    return NavigationStack {
        MissionListView(missions: missions)
            .preferredColorScheme(.dark)
    }
}
