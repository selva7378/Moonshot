import SwiftUI

/// Horizontal scroll view showing crew members on a mission.
///
/// Addresses **Moonshot Challenge 2**: Extracting horizontal crew list into a dedicated SwiftUI view.
struct MissionCrewView: View {
    struct CrewMember {
        let role: String
        let astronaut: Astronaut
    }

    let crew: [CrewMember]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink(value: crewMember.astronaut) {
                        CrewMemberCard(astronaut: crewMember.astronaut, role: crewMember.role)
                    }
                }
            }
        }
    }
}
