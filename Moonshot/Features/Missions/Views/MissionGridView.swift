import SwiftUI

/// Grid view displaying Apollo missions in an adaptive scrolling grid.
struct MissionGridView: View {
    let missions: [Mission]

    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    NavigationLink(value: mission) {
                        MissionGridCell(mission: mission)
                    }
                }
            }
            .padding([.horizontal, .bottom])
        }
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")

    return NavigationStack {
        MissionGridView(missions: missions)
            .preferredColorScheme(.dark)
    }
}
