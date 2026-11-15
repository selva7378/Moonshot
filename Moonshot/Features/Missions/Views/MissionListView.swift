import SwiftUI

/// List view displaying Apollo missions in a vertical list.
struct MissionListView: View {
    let missions: [Mission]
    let astronauts: [String: Astronaut]

    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
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
