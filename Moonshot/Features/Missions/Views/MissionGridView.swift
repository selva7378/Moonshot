import SwiftUI

/// Grid view displaying Apollo missions in an adaptive scrolling grid.
struct MissionGridView: View {
    let missions: [Mission]
    let astronauts: [String: Astronaut]

    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(mission: mission, astronauts: astronauts)
                    } label: {
                        MissionGridCell(mission: mission)
                    }
                }
            }
            .padding([.horizontal, .bottom])
        }
    }
}
