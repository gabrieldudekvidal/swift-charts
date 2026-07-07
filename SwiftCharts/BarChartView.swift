import SwiftUI
import Charts

struct BarChartView: View {
    // Dictionary
    let salesData: [(month: String, sales: Double)] = [
        ("Jan", 212),
        ("Feb", 345),
        ("Mar", 344),
        ("Apr", 389),
        ("May", 515),
        ("Jun", 423)
    ]
    
    var body: some View {
        Chart {
            ForEach(salesData, id: \.month) {
                data in
                BarMark(x: .value("Month", data.month), y: .value("Month", data.sales))
                    .foregroundStyle(.green)
            }
        }
        .frame(height: 350)
        .padding()
    }
}

#Preview {
    BarChartView()
}
