import SwiftUI

/// Reusable divider component matching the Moonshot theme.
///
/// Addresses **Moonshot Challenge 2**: Extracting repeated view code into a reusable component.
struct CustomDivider: View {
    var height: CGFloat = 2
    var color: Color = .lightBackground
    var verticalPadding: CGFloat = 16

    var body: some View {
        Rectangle()
            .frame(height: height)
            .foregroundStyle(color)
            .padding(.vertical, verticalPadding)
    }
}

#Preview {
    CustomDivider()
        .preferredColorScheme(.dark)
}
