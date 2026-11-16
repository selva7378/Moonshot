import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")

    // State to toggle between Grid and List view
    @AppStorage("showingGrid") private var showingGrid = true

    var body: some View {
        NavigationStack {
            Group {
                if showingGrid {
                    MissionGridView(missions: missions)
                } else {
                    MissionListView(missions: missions)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button {
                    showingGrid.toggle()
                } label: {
                    Image(systemName: showingGrid ? "list.bullet" : "square.grid.2x2")
                        .foregroundStyle(.white)
                }
                .accessibilityLabel(showingGrid ? "Switch to list view" : "Switch to grid view")
            }
            .navigationDestination(for: Mission.self) { mission in
                MissionView(mission: mission, astronauts: astronauts)
            }
            .navigationDestination(for: Astronaut.self) { astronaut in
                AstronautView(astronaut: astronaut)
            }
        }
    }
}

#Preview {
    ContentView()
}
