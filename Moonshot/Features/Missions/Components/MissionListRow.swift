import SwiftUI

/// Horizontal row item displaying a mission in a list.
struct MissionListRow: View {
    let mission: Mission

    var body: some View {
        HStack(spacing: 16) {
            Image(mission.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .padding(6)
                .background(.lightBackground)
                .clipShape(.rect(cornerRadius: 10))

            VStack(alignment: .leading, spacing: 4) {
                Text(mission.displayName)
                    .font(.headline)
                    .foregroundStyle(.white)

                Text(mission.formattedLaunchDate)
                    .font(.caption)
                    .foregroundStyle(.white.opacity(0.5))
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    MissionListRow(mission: Mission(
        id: 11,
        launchDate: nil,
        crew: [],
        description: "Apollo 11"
    ))
    .padding()
    .background(.darkBackground)
    .preferredColorScheme(.dark)
}
