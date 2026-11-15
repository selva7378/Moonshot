import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")

    // Challenge 3: State to toggle between Grid and List view
    @AppStorage("showingGrid") private var showingGrid = true

    var body: some View {
        NavigationStack {
            Group {
                if showingGrid {
                    MissionGridView(missions: missions, astronauts: astronauts)
                } else {
                    MissionListView(missions: missions, astronauts: astronauts)
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
        }
    }
}

#Preview {
    ContentView()
}
