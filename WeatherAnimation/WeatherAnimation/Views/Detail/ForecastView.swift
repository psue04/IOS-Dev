import SwiftUI

struct ForecastView: View {
    var bottomSheetTranslationProrated: CGFloat = 1
    @State private var selection = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                //MARK: Segmented Control
                SegmentedControl(selection: $selection)
            }
        }
        .backgroundBlur(radius: 25, opaque: true)
        .background(Color.bottomSheetBackground)
            .clipShape(RoundedRectangle(cornerRadius: 44))
            .innerShadow(shape: RoundedRectangle(cornerRadius: 44), color: Color.bottomSheetBorderMiddle, lineWidth: 1, offsetX: 0, offsetY: 1, blur: 0, blendMode: .overlay, opacity: 1 - bottomSheetTranslationProrated)
            .overlay {
            //MARK: Bottom Sheet Inner Shadow (Border)
                RoundedRectangle(cornerRadius: 44)
                    .stroke(Color.bottomSheetBorderMiddle, lineWidth: 1)
                    .blendMode(.overlay)
                    .offset(y: 1)
                    .mask {
                        RoundedRectangle(cornerRadius: 44)
                    }
                }
            .overlay {
                //MARK: Bottom Sheet Seperator
                Divider()
                    .background(Color.bottomSheetBorderTop)
                    .frame(maxHeight: .infinity, alignment: .top)
                    .clipShape(RoundedRectangle(cornerRadius: 44))
            }
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.black.opacity(0.3))
                    .frame(width: 48, height: 5)
                    .frame(height: 20)
                    .frame(maxHeight: .infinity, alignment: .top)
            }
        }
                


struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView()
            .preferredColorScheme(.dark)
    }
}
}
