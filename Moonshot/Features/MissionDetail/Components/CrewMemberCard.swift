import SwiftUI

/// Capsule card displaying an astronaut's photo, name, and mission role.
struct CrewMemberCard: View {
    let astronaut: Astronaut
    let role: String

    var body: some View {
        HStack {
            Image(astronaut.id)
                .resizable()
                .frame(width: 104, height: 72)
                .clipShape(.capsule)
                .overlay(
                    Capsule()
                        .strokeBorder(.white, lineWidth: 1)
                )

            VStack(alignment: .leading, spacing: 4) {
                Text(astronaut.name)
                    .foregroundStyle(.white)
                    .font(.headline)

                Text(role)
                    .foregroundStyle(.white.opacity(0.5))
            }
        }
        .padding(.horizontal)
    }
}
