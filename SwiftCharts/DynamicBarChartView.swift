import SwiftUI
import Charts

struct DynamicBarChartView: View {
    @State private var salesData: [(month: String, sales: Double)] = [
        ("Jan", 212),
        ("Feb", 345),
        ("Mar", 344),
        ("Apr", 389),
        ("May", 515),
        ("Jun", 423)
    ]
    
    var body: some View {
        VStack {
            Chart {
                ForEach(salesData, id: \.month) {
                    data in
                    BarMark(x: .value("Month", data.month), y: .value("Month", data.sales))
                        .foregroundStyle(.red)
                }
            }
            .frame(height: 350)
            .padding()
            
            Button("Randomize Data") {
                salesData = salesData.map {
                    ($0.month, Double.random(in: 200...1000))
                }
            }
        }
    }
}

#Preview {
    DynamicBarChartView()
}
